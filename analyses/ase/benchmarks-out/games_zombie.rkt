(letrec ((any? (lambda (v) (letrec ((g7197 #t)) g7197)))
         (meta (lambda (v) (letrec ((g7198 v)) g7198)))
         (member
          (lambda (v lst)
            (letrec ((g7199
                      (letrec ((g7200
                                (letrec ((x-e7201 lst))
                                  (match
                                   x-e7201
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7202 (eq? v v1)))
                                       (if x-cnd7202 #t (member v vs)))))))))
                        g7200)))
              g7199)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7203 (lambda (v) (letrec ((g7204 v)) g7204)))) g7203)))
         (nonzero?
          (lambda (v)
            (letrec ((g7205 (letrec ((x7206 (= v 0))) (not x7206)))) g7205))))
  (letrec ((g7207
            (letrec ((g7208
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7209 '())
                                 (g7210
                                  (letrec ((real/c
                                            (lambda (g6904 g6905 g6906)
                                              (letrec ((g7211
                                                        (letrec ((x-cnd7212
                                                                  (real?
                                                                   g6906)))
                                                          (if x-cnd7212
                                                            g6906
                                                            (blame
                                                             g6904
                                                             'real?)))))
                                                g7211)))
                                           (boolean?/c
                                            (lambda (g6907 g6908 g6909)
                                              (letrec ((g7213
                                                        (letrec ((x-cnd7214
                                                                  (boolean?
                                                                   g6909)))
                                                          (if x-cnd7214
                                                            g6909
                                                            (blame
                                                             g6907
                                                             'boolean?)))))
                                                g7213)))
                                           (number?/c
                                            (lambda (g6910 g6911 g6912)
                                              (letrec ((g7215
                                                        (letrec ((x-cnd7216
                                                                  (number?
                                                                   g6912)))
                                                          (if x-cnd7216
                                                            g6912
                                                            (blame
                                                             g6910
                                                             'number?)))))
                                                g7215)))
                                           (any/c
                                            (lambda (g6913 g6914 g6915)
                                              (letrec ((g7217
                                                        (letrec ((x-cnd7218
                                                                  ((lambda (v)
                                                                     (letrec ((g7219
                                                                               #t))
                                                                       g7219))
                                                                   g6915)))
                                                          (if x-cnd7218
                                                            g6915
                                                            (blame
                                                             g6913
                                                             '(lambda (v)
                                                                #t))))))
                                                g7217)))
                                           (any?/c
                                            (lambda (g6916 g6917 g6918)
                                              (letrec ((g7220
                                                        (letrec ((x-cnd7221
                                                                  ((lambda (v)
                                                                     (letrec ((g7222
                                                                               #t))
                                                                       g7222))
                                                                   g6918)))
                                                          (if x-cnd7221
                                                            g6918
                                                            (blame
                                                             g6916
                                                             '(lambda (v)
                                                                #t))))))
                                                g7220)))
                                           (cons?/c
                                            (lambda (g6919 g6920 g6921)
                                              (letrec ((g7223
                                                        (letrec ((x-cnd7224
                                                                  (pair?
                                                                   g6921)))
                                                          (if x-cnd7224
                                                            g6921
                                                            (blame
                                                             g6919
                                                             'pair?)))))
                                                g7223)))
                                           (pair?/c
                                            (lambda (g6922 g6923 g6924)
                                              (letrec ((g7225
                                                        (letrec ((x-cnd7226
                                                                  (pair?
                                                                   g6924)))
                                                          (if x-cnd7226
                                                            g6924
                                                            (blame
                                                             g6922
                                                             'pair?)))))
                                                g7225)))
                                           (integer?/c
                                            (lambda (g6925 g6926 g6927)
                                              (letrec ((g7227
                                                        (letrec ((x-cnd7228
                                                                  (integer?
                                                                   g6927)))
                                                          (if x-cnd7228
                                                            g6927
                                                            (blame
                                                             g6925
                                                             'integer?)))))
                                                g7227)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7229
                                                        (lambda (k j v)
                                                          (letrec ((g7230
                                                                    (letrec ((x-cnd7231
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7231
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7230))))
                                                g7229)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7232
                                                        (lambda (k j v)
                                                          (letrec ((g7233
                                                                    (letrec ((x-cnd7234
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7234
                                                                        '()
                                                                        (letrec ((x7238
                                                                                  (letrec ((x7239
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7239)))
                                                                                 (x7235
                                                                                  (letrec ((x7237
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7236
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7237
                                                                                     k
                                                                                     j
                                                                                     x7236))))
                                                                          (cons
                                                                           x7238
                                                                           x7235))))))
                                                            g7233))))
                                                g7232)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7240 #t)) g7240)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7241
                                                        (letrec ((x7242
                                                                  (= v 0)))
                                                          (not x7242))))
                                                g7241)))
                                           (nonzero?/c
                                            (lambda (g6928 g6929 g6930)
                                              (letrec ((g7243
                                                        (letrec ((x-cnd7244
                                                                  ((lambda (v)
                                                                     (letrec ((g7245
                                                                               (letrec ((x7246
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7246))))
                                                                       g7245))
                                                                   g6930)))
                                                          (if x-cnd7244
                                                            g6930
                                                            (blame
                                                             g6928
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7243)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7247 v)) g7247)))
                                           (+
                                            ((lambda (j6933 k6934 f6935)
                                               (letrec ((g7249
                                                         (lambda (g6931 g6932)
                                                           (letrec ((g7250
                                                                     (letrec ((x7251
                                                                               (letrec ((x7253
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6931))
                                                                                        (x7252
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6932)))
                                                                                 (f6935
                                                                                  x7253
                                                                                  x7252))))
                                                                       (number?/c
                                                                        j6933
                                                                        k6934
                                                                        x7251))))
                                                             g7250))))
                                                 g7249))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7248 (orig-+ a b)))
                                                 g7248))))
                                           (-
                                            ((lambda (j6938 k6939 f6940)
                                               (letrec ((g7255
                                                         (lambda (g6936 g6937)
                                                           (letrec ((g7256
                                                                     (letrec ((x7257
                                                                               (letrec ((x7259
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6936))
                                                                                        (x7258
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6937)))
                                                                                 (f6940
                                                                                  x7259
                                                                                  x7258))))
                                                                       (number?/c
                                                                        j6938
                                                                        k6939
                                                                        x7257))))
                                                             g7256))))
                                                 g7255))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7254 (orig-- a b)))
                                                 g7254))))
                                           (*
                                            ((lambda (j6943 k6944 f6945)
                                               (letrec ((g7261
                                                         (lambda (g6941 g6942)
                                                           (letrec ((g7262
                                                                     (letrec ((x7263
                                                                               (letrec ((x7265
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6941))
                                                                                        (x7264
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6942)))
                                                                                 (f6945
                                                                                  x7265
                                                                                  x7264))))
                                                                       (number?/c
                                                                        j6943
                                                                        k6944
                                                                        x7263))))
                                                             g7262))))
                                                 g7261))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7260 (orig-* a b)))
                                                 g7260))))
                                           (/
                                            ((lambda (j6948 k6949 f6950)
                                               (letrec ((g7267
                                                         (lambda (g6946 g6947)
                                                           (letrec ((g7268
                                                                     (letrec ((x7269
                                                                               (letrec ((x7271
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6946))
                                                                                        (x7270
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6947)))
                                                                                 (f6950
                                                                                  x7271
                                                                                  x7270))))
                                                                       (number?/c
                                                                        j6948
                                                                        k6949
                                                                        x7269))))
                                                             g7268))))
                                                 g7267))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7266 (orig-/ a b)))
                                                 g7266))))
                                           (car
                                            ((lambda (j6952 k6953 f6954)
                                               (letrec ((g7273
                                                         (lambda (g6951)
                                                           (letrec ((g7274
                                                                     (letrec ((x7275
                                                                               (letrec ((x7276
                                                                                         (pair?/c
                                                                                          j6952
                                                                                          k6953
                                                                                          g6951)))
                                                                                 (f6954
                                                                                  x7276))))
                                                                       (any/c
                                                                        j6952
                                                                        k6953
                                                                        x7275))))
                                                             g7274))))
                                                 g7273))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7272 (orig-car p)))
                                                 g7272))))
                                           (cdr
                                            ((lambda (j6956 k6957 f6958)
                                               (letrec ((g7278
                                                         (lambda (g6955)
                                                           (letrec ((g7279
                                                                     (letrec ((x7280
                                                                               (letrec ((x7281
                                                                                         (pair?/c
                                                                                          j6956
                                                                                          k6957
                                                                                          g6955)))
                                                                                 (f6958
                                                                                  x7281))))
                                                                       (any/c
                                                                        j6956
                                                                        k6957
                                                                        x7280))))
                                                             g7279))))
                                                 g7278))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7277 (orig-cdr p)))
                                                 g7277))))
                                           (cons
                                            ((lambda (j6961 k6962 f6963)
                                               (letrec ((g7283
                                                         (lambda (g6959 g6960)
                                                           (letrec ((g7284
                                                                     (letrec ((x7285
                                                                               (letrec ((x7287
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6959))
                                                                                        (x7286
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6960)))
                                                                                 (f6963
                                                                                  x7287
                                                                                  x7286))))
                                                                       (pair?/c
                                                                        j6961
                                                                        k6962
                                                                        x7285))))
                                                             g7284))))
                                                 g7283))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7282 (cons a b)))
                                                 g7282))))
                                           (vector-ref
                                            ((lambda (j6965 k6966 f6967)
                                               (letrec ((g7289
                                                         (lambda (g6964)
                                                           (letrec ((g7290
                                                                     (letrec ((x7291
                                                                               (letrec ((x7292
                                                                                         (vector?/c
                                                                                          j6965
                                                                                          k6966
                                                                                          g6964)))
                                                                                 (f6967
                                                                                  x7292))))
                                                                       (integer?/c
                                                                        j6965
                                                                        k6966
                                                                        x7291))))
                                                             g7290))))
                                                 g7289))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7288
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7288))))
                                           (vector-set!
                                            ((lambda (j6970 k6971 f6972)
                                               (letrec ((g7294
                                                         (lambda (g6968 g6969)
                                                           (letrec ((g7295
                                                                     (letrec ((x7296
                                                                               (letrec ((x7298
                                                                                         (vector?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6968))
                                                                                        (x7297
                                                                                         (integer?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6969)))
                                                                                 (f6972
                                                                                  x7298
                                                                                  x7297))))
                                                                       (any/c
                                                                        j6970
                                                                        k6971
                                                                        x7296))))
                                                             g7295))))
                                                 g7294))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7293
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7293))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7299 #t)) g7299)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7300
                                                        (letrec ((x7301
                                                                  (letrec ((x7302
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7302))))
                                                          (cdr x7301))))
                                                g7300)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7303
                                                        (letrec ((x7306
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7306)))
                                                       (g7304
                                                        (letrec ((x7307
                                                                  (list? l)))
                                                          (assert x7307)))
                                                       (g7305
                                                        (letrec ((x-cnd7308
                                                                  (null? l)))
                                                          (if x-cnd7308
                                                            '()
                                                            (letrec ((x7311
                                                                      (letrec ((x7312
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7312)))
                                                                     (x7309
                                                                      (letrec ((x7310
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7310))))
                                                              (cons
                                                               x7311
                                                               x7309))))))
                                                g7305)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7313
                                                        (letrec ((x7314
                                                                  (car x)))
                                                          (cdr x7314))))
                                                g7313)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7315
                                                        (letrec ((x7316
                                                                  (letrec ((x7317
                                                                            (letrec ((x7318
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7318))))
                                                                    (cdr
                                                                     x7317))))
                                                          (car x7316))))
                                                g7315)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7319
                                                        (letrec ((x7320
                                                                  (letrec ((x7321
                                                                            (letrec ((x7322
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7322))))
                                                                    (car
                                                                     x7321))))
                                                          (cdr x7320))))
                                                g7319)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7323
                                                        (letrec ((x7326
                                                                  (string?
                                                                   filename)))
                                                          (assert x7326)))
                                                       (g7324
                                                        (letrec ((x7327
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7327)))
                                                       (g7325
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7328
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7329 res))
                                                            g7329))))
                                                g7325)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7330
                                                        (letrec ((x7331
                                                                  (letrec ((x7332
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7332))))
                                                          (car x7331))))
                                                g7330)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7333
                                                        (letrec ((x7334
                                                                  (letrec ((x7335
                                                                            (letrec ((x7336
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7336))))
                                                                    (car
                                                                     x7335))))
                                                          (cdr x7334))))
                                                g7333)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7337
                                                        (letrec ((x7339
                                                                  (list? l)))
                                                          (assert x7339)))
                                                       (g7338
                                                        (letrec ((x-cnd7340
                                                                  (null? l)))
                                                          (if x-cnd7340
                                                            #f
                                                            (letrec ((x-cnd7341
                                                                      (letrec ((x7342
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7342
                                                                         k))))
                                                              (if x-cnd7341
                                                                (car l)
                                                                (letrec ((x7343
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7343))))))))
                                                g7338)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7344
                                                        (letrec ((x7345
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7345))))
                                                g7344)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7346
                                                        (letrec ((x7348
                                                                  (list? l)))
                                                          (assert x7348)))
                                                       (g7347
                                                        (letrec ((x-cnd7349
                                                                  (null? l)))
                                                          (if x-cnd7349
                                                            ""
                                                            (letrec ((x7352
                                                                      (letrec ((x7353
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7353)))
                                                                     (x7350
                                                                      (letrec ((x7351
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7351))))
                                                              (string-append
                                                               x7352
                                                               x7350))))))
                                                g7347)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7354
                                                        (letrec ((x7357
                                                                  (char? c1)))
                                                          (assert x7357)))
                                                       (g7355
                                                        (letrec ((x7358
                                                                  (char? c2)))
                                                          (assert x7358)))
                                                       (g7356
                                                        (letrec ((val6887
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7359
                                                                    (if val6887
                                                                      val6887
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7359))))
                                                g7356)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7360
                                                        (letrec ((x7361
                                                                  (letrec ((x7362
                                                                            (letrec ((x7363
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7363))))
                                                                    (cdr
                                                                     x7362))))
                                                          (cdr x7361))))
                                                g7360)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7364
                                                        (letrec ((x7367
                                                                  (list? l)))
                                                          (assert x7367)))
                                                       (g7365
                                                        (letrec ((x7368
                                                                  (numer?)))
                                                          (assert x7368)))
                                                       (g7366
                                                        (letrec ((x-cnd7369
                                                                  (zero? k)))
                                                          (if x-cnd7369
                                                            x
                                                            (letrec ((x7371
                                                                      (cdr x))
                                                                     (x7370
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7371
                                                               x7370))))))
                                                g7366)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7372 '())) g7372)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7373
                                                        (letrec ((x-cnd7374
                                                                  (letrec ((x7375
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7375))))
                                                          (if x-cnd7374
                                                            (letrec ((x7376
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7376))
                                                            #f))))
                                                g7373)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7377
                                                        (letrec ((x7379
                                                                  (number? x)))
                                                          (assert x7379)))
                                                       (g7378
                                                        (letrec ((val6888
                                                                  (< x y)))
                                                          (letrec ((g7380
                                                                    (if val6888
                                                                      val6888
                                                                      (letrec ((val6889
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7381
                                                                                  (if val6889
                                                                                    val6889
                                                                                    #f)))
                                                                          g7381)))))
                                                            g7380))))
                                                g7378)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7382
                                                        (letrec ((val6890
                                                                  (letrec ((x7383
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7383
                                                                     9))))
                                                          (letrec ((g7384
                                                                    (if val6890
                                                                      val6890
                                                                      (letrec ((val6891
                                                                                (letrec ((x7385
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7385
                                                                                   10))))
                                                                        (letrec ((g7386
                                                                                  (if val6891
                                                                                    val6891
                                                                                    (letrec ((x7387
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7387
                                                                                       32)))))
                                                                          g7386)))))
                                                            g7384))))
                                                g7382)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7388
                                                        (letrec ((x7389
                                                                  (letrec ((x7390
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7390))))
                                                          (cdr x7389))))
                                                g7388)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7391
                                                        (letrec ((x7393
                                                                  (number? x)))
                                                          (assert x7393)))
                                                       (g7392 (> x 0)))
                                                g7392)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7394 #f)) g7394)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7395
                                                        (letrec ((x7396
                                                                  (cdr x)))
                                                          (cdr x7396))))
                                                g7395)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7397
                                                        (letrec ((x7399
                                                                  (number? x)))
                                                          (assert x7399)))
                                                       (g7398
                                                        (letrec ((x-cnd7400
                                                                  (< x 0)))
                                                          (if x-cnd7400
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7398)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7401
                                                        (letrec ((val6892
                                                                  (eq? a b)))
                                                          (letrec ((g7402
                                                                    (if val6892
                                                                      val6892
                                                                      (letrec ((val6893
                                                                                (letrec ((x7404
                                                                                          (null?
                                                                                           a))
                                                                                         (x7403
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7404
                                                                                       x7403))))
                                                                        (letrec ((g7405
                                                                                  (if val6893
                                                                                    val6893
                                                                                    (letrec ((val6894
                                                                                              (letrec ((x7408
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7407
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7406
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7408
                                                                                                     x7407
                                                                                                     x7406))))
                                                                                      (letrec ((g7409
                                                                                                (if val6894
                                                                                                  val6894
                                                                                                  (letrec ((val6895
                                                                                                            (letrec ((x7417
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7416
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7413
                                                                                                                      (letrec ((x7415
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7414
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7415
                                                                                                                         x7414)))
                                                                                                                     (x7410
                                                                                                                      (letrec ((x7412
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7411
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7412
                                                                                                                         x7411))))
                                                                                                              (and x7417
                                                                                                                   x7416
                                                                                                                   x7413
                                                                                                                   x7410))))
                                                                                                    (letrec ((g7418
                                                                                                              (if val6895
                                                                                                                val6895
                                                                                                                (letrec ((x7434
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7433
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7419
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7420
                                                                                                                                      (letrec ((x7431
                                                                                                                                                (letrec ((x7432
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7432
                                                                                                                                                   n)))
                                                                                                                                               (x7421
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7422
                                                                                                                                                                      (letrec ((x7429
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7423
                                                                                                                                                                                (letrec ((x7426
                                                                                                                                                                                          (letrec ((x7428
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7427
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7428
                                                                                                                                                                                             x7427)))
                                                                                                                                                                                         (x7424
                                                                                                                                                                                          (letrec ((x7425
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7425))))
                                                                                                                                                                                  (and x7426
                                                                                                                                                                                       x7424))))
                                                                                                                                                                        (or x7429
                                                                                                                                                                            x7423))))
                                                                                                                                                              g7422))))
                                                                                                                                                  (letrec ((g7430
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7430))))
                                                                                                                                        (and x7431
                                                                                                                                             x7421))))
                                                                                                                              g7420))))
                                                                                                                  (and x7434
                                                                                                                       x7433
                                                                                                                       x7419)))))
                                                                                                      g7418)))))
                                                                                        g7409)))))
                                                                          g7405)))))
                                                            g7402))))
                                                g7401)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7435
                                                        (letrec ((x7436
                                                                  (letrec ((x7437
                                                                            (letrec ((x7438
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7438))))
                                                                    (car
                                                                     x7437))))
                                                          (cdr x7436))))
                                                g7435)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7439
                                                        (letrec ((x7440
                                                                  (letrec ((x7441
                                                                            (letrec ((x7442
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7442))))
                                                                    (car
                                                                     x7441))))
                                                          (car x7440))))
                                                g7439)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7443 (eq? x y)))
                                                g7443)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7444
                                                        (letrec ((x7446
                                                                  (number? x)))
                                                          (assert x7446)))
                                                       (g7445
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7447
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7448
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7448)))))
                                                            g7447))))
                                                g7445)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7449
                                                        (letrec ((x7452
                                                                  (string?
                                                                   filename)))
                                                          (assert x7452)))
                                                       (g7450
                                                        (letrec ((x7453
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7453)))
                                                       (g7451
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7454
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7455 res))
                                                            g7455))))
                                                g7451)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7456 (cons x '())))
                                                g7456)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7457
                                                        (letrec ((x7460
                                                                  (char? c1)))
                                                          (assert x7460)))
                                                       (g7458
                                                        (letrec ((x7461
                                                                  (char? c2)))
                                                          (assert x7461)))
                                                       (g7459
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7462
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7462))))
                                                g7459)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7463
                                                        (letrec ((x7464
                                                                  (letrec ((x7465
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7465))))
                                                          (cdr x7464))))
                                                g7463)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7466
                                                        (letrec ((x7467
                                                                  (letrec ((x7468
                                                                            (letrec ((x7469
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7469))))
                                                                    (car
                                                                     x7468))))
                                                          (cdr x7467))))
                                                g7466)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7470
                                                        (letrec ((x7471
                                                                  (letrec ((x7472
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7472))))
                                                          (car x7471))))
                                                g7470)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7473
                                                        (letrec ((x7474
                                                                  (letrec ((x7475
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7475))))
                                                          (car x7474))))
                                                g7473)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7476
                                                        (letrec ((x7479
                                                                  (char? c1)))
                                                          (assert x7479)))
                                                       (g7477
                                                        (letrec ((x7480
                                                                  (char? c2)))
                                                          (assert x7480)))
                                                       (g7478
                                                        (letrec ((x7481
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7481))))
                                                g7478)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7482
                                                        (letrec ((x7483
                                                                  (letrec ((x7484
                                                                            (letrec ((x7485
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7485))))
                                                                    (car
                                                                     x7484))))
                                                          (car x7483))))
                                                g7482)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7486
                                                        (letrec ((x7488
                                                                  (number? x)))
                                                          (assert x7488)))
                                                       (g7487 (< x 0)))
                                                g7487)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7489 (memq e l)))
                                                g7489)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7490
                                                        (letrec ((x7491
                                                                  (letrec ((x7492
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7492))))
                                                          (car x7491))))
                                                g7490)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7493 '())) g7493)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7494
                                                        (letrec ((x7496
                                                                  (list? l)))
                                                          (assert x7496)))
                                                       (g7495
                                                        (letrec ((x-cnd7497
                                                                  (null? l)))
                                                          (if x-cnd7497
                                                            '()
                                                            (letrec ((x7500
                                                                      (letrec ((x7501
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7501)))
                                                                     (x7498
                                                                      (letrec ((x7499
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7499))))
                                                              (append
                                                               x7500
                                                               x7498))))))
                                                g7495)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7502
                                                        (letrec ((x7503
                                                                  (letrec ((x7504
                                                                            (letrec ((x7505
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7505))))
                                                                    (car
                                                                     x7504))))
                                                          (car x7503))))
                                                g7502)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7506
                                                        (letrec ((x7507
                                                                  (letrec ((x7508
                                                                            (letrec ((x7509
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7509))))
                                                                    (cdr
                                                                     x7508))))
                                                          (cdr x7507))))
                                                g7506)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7510
                                                        (letrec ((x7512
                                                                  (number? x)))
                                                          (assert x7512)))
                                                       (g7511
                                                        (letrec ((x7513
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7513))))
                                                g7511)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7514
                                                        (letrec ((x7515
                                                                  (letrec ((x7516
                                                                            (letrec ((x7517
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7517))))
                                                                    (car
                                                                     x7516))))
                                                          (car x7515))))
                                                g7514)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7518
                                                        (letrec ((x7521
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7521)))
                                                       (g7519
                                                        (letrec ((x7522
                                                                  (list?
                                                                   args)))
                                                          (assert x7522)))
                                                       (g7520
                                                        (if cnd
                                                          (letrec ((g7523
                                                                    (proc)))
                                                            g7523)
                                                          (if cnd
                                                            (letrec ((g7524
                                                                      (letrec ((x7525
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7525))))
                                                              g7524)
                                                            (if cnd
                                                              (letrec ((g7526
                                                                        (letrec ((x7528
                                                                                  (car
                                                                                   args))
                                                                                 (x7527
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7528
                                                                           x7527))))
                                                                g7526)
                                                              (if cnd
                                                                (letrec ((g7529
                                                                          (letrec ((x7532
                                                                                    (car
                                                                                     args))
                                                                                   (x7531
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7530
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7532
                                                                             x7531
                                                                             x7530))))
                                                                  g7529)
                                                                (if cnd
                                                                  (letrec ((g7533
                                                                            (letrec ((x7537
                                                                                      (car
                                                                                       args))
                                                                                     (x7536
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7535
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7534
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7537
                                                                               x7536
                                                                               x7535
                                                                               x7534))))
                                                                    g7533)
                                                                  (if cnd
                                                                    (letrec ((g7538
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
                                                                                           x7540))))
                                                                                (proc
                                                                                 x7544
                                                                                 x7543
                                                                                 x7542
                                                                                 x7541
                                                                                 x7539))))
                                                                      g7538)
                                                                    (if cnd
                                                                      (letrec ((g7545
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
                                                                                             x7547))))
                                                                                  (proc
                                                                                   x7553
                                                                                   x7552
                                                                                   x7551
                                                                                   x7550
                                                                                   x7548
                                                                                   x7546))))
                                                                        g7545)
                                                                      (if cnd
                                                                        (letrec ((g7554
                                                                                  (letrec ((x7564
                                                                                            (car
                                                                                             args))
                                                                                           (x7563
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7562
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7561
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7559
                                                                                            (letrec ((x7560
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7560)))
                                                                                           (x7557
                                                                                            (letrec ((x7558
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7558)))
                                                                                           (x7555
                                                                                            (letrec ((x7556
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7556))))
                                                                                    (proc
                                                                                     x7564
                                                                                     x7563
                                                                                     x7562
                                                                                     x7561
                                                                                     x7559
                                                                                     x7557
                                                                                     x7555))))
                                                                          g7554)
                                                                        (letrec ((g7565
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7565)))))))))))
                                                g7520)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7566
                                                        (letrec ((x7568
                                                                  (list? l)))
                                                          (assert x7568)))
                                                       (g7567
                                                        (letrec ((x-cnd7569
                                                                  (null? l)))
                                                          (if x-cnd7569
                                                            #f
                                                            (letrec ((x-cnd7570
                                                                      (letrec ((x7571
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7571
                                                                         e))))
                                                              (if x-cnd7570
                                                                l
                                                                (letrec ((x7572
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7572))))))))
                                                g7567)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7573
                                                        (letrec ((x7574
                                                                  (letrec ((x7575
                                                                            (letrec ((x7576
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7576))))
                                                                    (cdr
                                                                     x7575))))
                                                          (cdr x7574))))
                                                g7573)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7577
                                                        (letrec ((x7578
                                                                  (letrec ((x7579
                                                                            (letrec ((x7580
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7580))))
                                                                    (cdr
                                                                     x7579))))
                                                          (car x7578))))
                                                g7577)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7581 (random 42)))
                                                g7581)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7582
                                                        (letrec ((x7584
                                                                  (number? x)))
                                                          (assert x7584)))
                                                       (g7583 (= x 0)))
                                                g7583)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7585
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7586
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7586))))
                                                g7585)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7587
                                                        (letrec ((x7588
                                                                  (cdr x)))
                                                          (car x7588))))
                                                g7587)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7589
                                                        (letrec ((val6900
                                                                  (letrec ((x7592
                                                                            (pair?
                                                                             l))
                                                                           (x7590
                                                                            (letrec ((x7591
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7591))))
                                                                    (and x7592
                                                                         x7590))))
                                                          (letrec ((g7593
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7593))))
                                                g7589)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7594
                                                        (letrec ((x7595
                                                                  (letrec ((x7596
                                                                            (letrec ((x7597
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7597))))
                                                                    (cdr
                                                                     x7596))))
                                                          (cdr x7595))))
                                                g7594)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7598
                                                        (letrec ((x-cnd7599
                                                                  (letrec ((x7600
                                                                            #\0))
                                                                    (char<=?
                                                                     x7600
                                                                     c))))
                                                          (if x-cnd7599
                                                            (letrec ((x7601
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7601))
                                                            #f))))
                                                g7598)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7602
                                                        (letrec ((x7604
                                                                  (list? l)))
                                                          (assert x7604)))
                                                       (g7603
                                                        (letrec ((x-cnd7605
                                                                  (null? l)))
                                                          (if x-cnd7605
                                                            #f
                                                            (letrec ((x-cnd7606
                                                                      (letrec ((x7607
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7607
                                                                         k))))
                                                              (if x-cnd7606
                                                                (car l)
                                                                (letrec ((x7608
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7608))))))))
                                                g7603)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7609 (if x #f #t)))
                                                g7609)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7610 (append l1 l2)))
                                                g7610)))
                                           (memq
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
                                                                        (eq?
                                                                         x7616
                                                                         e))))
                                                              (if x-cnd7615
                                                                l
                                                                (letrec ((x7617
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7617))))))))
                                                g7612)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7618
                                                        (letrec ((x7619
                                                                  (letrec ((x7620
                                                                            (letrec ((x7621
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7621))))
                                                                    (cdr
                                                                     x7620))))
                                                          (car x7619))))
                                                g7618)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7622
                                                        (letrec ((x7624
                                                                  (list? l)))
                                                          (assert x7624)))
                                                       (g7623
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7625
                                                                              (letrec ((x-cnd7626
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7626
                                                                                  0
                                                                                  (letrec ((x7627
                                                                                            (letrec ((x7628
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7628))))
                                                                                    (+
                                                                                     1
                                                                                     x7627))))))
                                                                      g7625))))
                                                          (letrec ((g7629
                                                                    (rec l)))
                                                            g7629))))
                                                g7623)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7630
                                                        (letrec ((x7633
                                                                  (char? c1)))
                                                          (assert x7633)))
                                                       (g7631
                                                        (letrec ((x7634
                                                                  (char? c2)))
                                                          (assert x7634)))
                                                       (g7632
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7635
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7635))))
                                                g7632)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7636
                                                        (letrec ((x7637
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7637))))
                                                g7636)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7638
                                                        (letrec ((x7639
                                                                  (letrec ((x7640
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7640))))
                                                          (cdr x7639))))
                                                g7638)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7641
                                                        (letrec ((x7643
                                                                  (list? l)))
                                                          (assert x7643)))
                                                       (g7642
                                                        (letrec ((x-cnd7644
                                                                  (null? l)))
                                                          (if x-cnd7644
                                                            #f
                                                            (letrec ((x-cnd7645
                                                                      (letrec ((x7646
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7646
                                                                         k))))
                                                              (if x-cnd7645
                                                                (car l)
                                                                (letrec ((x7647
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7647))))))))
                                                g7642)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7648
                                                        (letrec ((x7649
                                                                  (car x)))
                                                          (car x7649))))
                                                g7648)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7650
                                                        (letrec ((x7653
                                                                  (char? c1)))
                                                          (assert x7653)))
                                                       (g7651
                                                        (letrec ((x7654
                                                                  (char? c2)))
                                                          (assert x7654)))
                                                       (g7652
                                                        (letrec ((x7655
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7655))))
                                                g7652)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7656
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7657
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7657))))
                                                g7656)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7658
                                                        (letrec ((x7661
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7661)))
                                                       (g7659
                                                        (letrec ((x7662
                                                                  (list? l)))
                                                          (assert x7662)))
                                                       (g7660
                                                        (letrec ((x-cnd7663
                                                                  (null? l)))
                                                          (if x-cnd7663
                                                            #t
                                                            (letrec ((x-cnd7664
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7664
                                                                (letrec ((g7665
                                                                          (letrec ((x7667
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7667)))
                                                                         (g7666
                                                                          (letrec ((x7668
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7668))))
                                                                  g7666)
                                                                '()))))))
                                                g7660)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7669
                                                        (letrec ((x7671
                                                                  (number? x)))
                                                          (assert x7671)))
                                                       (g7670
                                                        (letrec ((x-cnd7672
                                                                  (< x 0)))
                                                          (if x-cnd7672
                                                            (- 0 x)
                                                            x))))
                                                g7670)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7673
                                                        (letrec ((x7676
                                                                  (char? c1)))
                                                          (assert x7676)))
                                                       (g7674
                                                        (letrec ((x7677
                                                                  (char? c2)))
                                                          (assert x7677)))
                                                       (g7675
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7678
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7678))))
                                                g7675)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7679
                                                        (letrec ((x7680
                                                                  (letrec ((x7681
                                                                            (letrec ((x7682
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7682))))
                                                                    (cdr
                                                                     x7681))))
                                                          (car x7680))))
                                                g7679)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7683 #f)) g7683)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7684
                                                        (letrec ((x7686
                                                                  (letrec ((x7687
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7687)))
                                                                 (x7685
                                                                  (gcd m n)))
                                                          (/ x7686 x7685))))
                                                g7684)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7688
                                                        (letrec ((x7690
                                                                  (number? x)))
                                                          (assert x7690)))
                                                       (g7689
                                                        (letrec ((x7691
                                                                  (<= x y)))
                                                          (not x7691))))
                                                g7689)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7692
                                                        (letrec ((x7696
                                                                  (list? l)))
                                                          (assert x7696)))
                                                       (g7693
                                                        (letrec ((x7697
                                                                  (number?
                                                                   index)))
                                                          (assert x7697)))
                                                       (g7694
                                                        (letrec ((x7698
                                                                  (letrec ((x7699
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7699))))
                                                          (assert x7698)))
                                                       (g7695
                                                        (letrec ((x-cnd7700
                                                                  (= index 0)))
                                                          (if x-cnd7700
                                                            (car l)
                                                            (letrec ((x7702
                                                                      (cdr l))
                                                                     (x7701
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7702
                                                               x7701))))))
                                                g7695)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7703
                                                        (letrec ((x-cnd7704
                                                                  (= b 0)))
                                                          (if x-cnd7704
                                                            a
                                                            (letrec ((x7705
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7705))))))
                                                g7703)))
                                           (image
                                            (lambda ()
                                              (letrec ((g7706
                                                        (cons 'image '())))
                                                g7706)))
                                           (image?
                                            (lambda (image7196)
                                              (letrec ((g7707
                                                        (letrec ((x7708
                                                                  (car
                                                                   image7196)))
                                                          (eq? x7708 'image))))
                                                g7707)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g7709 (image)))
                                                g7709)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g7710 (image)))
                                                g7710)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g7711 (image)))
                                                g7711)))
                                           (min
                                            (lambda (x y)
                                              (letrec ((g7712
                                                        (letrec ((x-cnd7713
                                                                  (<= x y)))
                                                          (if x-cnd7713 x y))))
                                                g7712)))
                                           (max
                                            (lambda (x y)
                                              (letrec ((g7714
                                                        (letrec ((x-cnd7715
                                                                  (>= x y)))
                                                          (if x-cnd7715 x y))))
                                                g7714)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7716
                                                        (letrec ((x-cnd7717
                                                                  (>= x 0)))
                                                          (if x-cnd7717
                                                            x
                                                            (- 0 x)))))
                                                g7716)))
                                           (sqr
                                            (lambda (x)
                                              (letrec ((g7718 (* x x)))
                                                g7718)))
                                           (WIDTH 400)
                                           (HEIGHT 400)
                                           (MT-SCENE
                                            (empty-scene WIDTH HEIGHT))
                                           (PLAYER-SPEED 4)
                                           (ZOMBIE-SPEED 2)
                                           (ZOMBIE-RADIUS 20)
                                           (PLAYER-RADIUS 20)
                                           (PLAYER-IMG
                                            (circle
                                             PLAYER-RADIUS
                                             "solid"
                                             "green"))
                                           (posn/c
                                            (lambda (j6974 k6975 f6976)
                                              (letrec ((g7719
                                                        (lambda (g6973)
                                                          (letrec ((g7720
                                                                    (letrec ((x6977
                                                                              ((lambda (g6981
                                                                                        g6982
                                                                                        g6983)
                                                                                 (letrec ((g7721
                                                                                           (letrec ((x-cnd7722
                                                                                                     ((lambda (v6980)
                                                                                                        (letrec ((g7723
                                                                                                                  (letrec ((x-cnd7724
                                                                                                                            (eq?
                                                                                                                             'x
                                                                                                                             v6980)))
                                                                                                                    (if x-cnd7724
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd7725
                                                                                                                                (eq?
                                                                                                                                 'y
                                                                                                                                 v6980)))
                                                                                                                        (if x-cnd7725
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd7726
                                                                                                                                    (eq?
                                                                                                                                     'posn
                                                                                                                                     v6980)))
                                                                                                                            (if x-cnd7726
                                                                                                                              #t
                                                                                                                              (letrec ((x-cnd7727
                                                                                                                                        (eq?
                                                                                                                                         'move-toward/speed
                                                                                                                                         v6980)))
                                                                                                                                (if x-cnd7727
                                                                                                                                  #t
                                                                                                                                  (letrec ((x-cnd7728
                                                                                                                                            (eq?
                                                                                                                                             'draw-on/image
                                                                                                                                             v6980)))
                                                                                                                                    (if x-cnd7728
                                                                                                                                      #t
                                                                                                                                      (eq?
                                                                                                                                       'dist
                                                                                                                                       v6980)))))))))))))
                                                                                                          g7723))
                                                                                                      g6983)))
                                                                                             (if x-cnd7722
                                                                                               g6983
                                                                                               (blame
                                                                                                g6981
                                                                                                '(lambda (v6980)
                                                                                                   (if (eq?
                                                                                                        'x
                                                                                                        v6980)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'y
                                                                                                          v6980)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'posn
                                                                                                            v6980)
                                                                                                         #t
                                                                                                         (if (eq?
                                                                                                              'move-toward/speed
                                                                                                              v6980)
                                                                                                           #t
                                                                                                           (if (eq?
                                                                                                                'draw-on/image
                                                                                                                v6980)
                                                                                                             #t
                                                                                                             (eq?
                                                                                                              'dist
                                                                                                              v6980))))))))))))
                                                                                   g7721))
                                                                               j6974
                                                                               k6975
                                                                               g6973)))
                                                                      (letrec ((g7729
                                                                                (letrec ((x7731
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g7732
                                                                                                       (if cnd
                                                                                                         (letrec ((g7733
                                                                                                                   (lambda (j6984
                                                                                                                            k6985
                                                                                                                            f6986)
                                                                                                                     (letrec ((g7734
                                                                                                                               (lambda ()
                                                                                                                                 (letrec ((g7735
                                                                                                                                           (letrec ((x7736
                                                                                                                                                     (f6986)))
                                                                                                                                             (real?
                                                                                                                                              j6984
                                                                                                                                              k6985
                                                                                                                                              x7736))))
                                                                                                                                   g7735))))
                                                                                                                       g7734))))
                                                                                                           g7733)
                                                                                                         (if cnd
                                                                                                           (letrec ((g7737
                                                                                                                     (lambda (j6987
                                                                                                                              k6988
                                                                                                                              f6989)
                                                                                                                       (letrec ((g7738
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g7739
                                                                                                                                             (letrec ((x7740
                                                                                                                                                       (f6989)))
                                                                                                                                               (real?
                                                                                                                                                j6987
                                                                                                                                                k6988
                                                                                                                                                x7740))))
                                                                                                                                     g7739))))
                                                                                                                         g7738))))
                                                                                                             g7737)
                                                                                                           (if cnd
                                                                                                             (letrec ((g7741
                                                                                                                       (lambda (j6990
                                                                                                                                k6991
                                                                                                                                f6992)
                                                                                                                         (letrec ((g7742
                                                                                                                                   (lambda ()
                                                                                                                                     (letrec ((g7743
                                                                                                                                               (letrec ((x7744
                                                                                                                                                         (f6992)))
                                                                                                                                                 (posn/c
                                                                                                                                                  j6990
                                                                                                                                                  k6991
                                                                                                                                                  x7744))))
                                                                                                                                       g7743))))
                                                                                                                           g7742))))
                                                                                                               g7741)
                                                                                                             (if cnd
                                                                                                               (letrec ((g7745
                                                                                                                         (lambda (j6995
                                                                                                                                  k6996
                                                                                                                                  f6997)
                                                                                                                           (letrec ((g7746
                                                                                                                                     (lambda (g6993
                                                                                                                                              g6994)
                                                                                                                                       (letrec ((g7747
                                                                                                                                                 (letrec ((x7748
                                                                                                                                                           (letrec ((x7750
                                                                                                                                                                     (posn/c
                                                                                                                                                                      j6995
                                                                                                                                                                      k6996
                                                                                                                                                                      g6993))
                                                                                                                                                                    (x7749
                                                                                                                                                                     (real?
                                                                                                                                                                      j6995
                                                                                                                                                                      k6996
                                                                                                                                                                      g6994)))
                                                                                                                                                             (f6997
                                                                                                                                                              x7750
                                                                                                                                                              x7749))))
                                                                                                                                                   (posn/c
                                                                                                                                                    j6995
                                                                                                                                                    k6996
                                                                                                                                                    x7748))))
                                                                                                                                         g7747))))
                                                                                                                             g7746))))
                                                                                                                 g7745)
                                                                                                               (if cnd
                                                                                                                 (letrec ((g7751
                                                                                                                           (lambda (j7000
                                                                                                                                    k7001
                                                                                                                                    f7002)
                                                                                                                             (letrec ((g7752
                                                                                                                                       (lambda (g6998
                                                                                                                                                g6999)
                                                                                                                                         (letrec ((g7753
                                                                                                                                                   (letrec ((x7754
                                                                                                                                                             (letrec ((x7756
                                                                                                                                                                       (image?
                                                                                                                                                                        j7000
                                                                                                                                                                        k7001
                                                                                                                                                                        g6998))
                                                                                                                                                                      (x7755
                                                                                                                                                                       (image?
                                                                                                                                                                        j7000
                                                                                                                                                                        k7001
                                                                                                                                                                        g6999)))
                                                                                                                                                               (f7002
                                                                                                                                                                x7756
                                                                                                                                                                x7755))))
                                                                                                                                                     (image?
                                                                                                                                                      j7000
                                                                                                                                                      k7001
                                                                                                                                                      x7754))))
                                                                                                                                           g7753))))
                                                                                                                               g7752))))
                                                                                                                   g7751)
                                                                                                                 (if cnd
                                                                                                                   (letrec ((g7757
                                                                                                                             (lambda (j7004
                                                                                                                                      k7005
                                                                                                                                      f7006)
                                                                                                                               (letrec ((g7758
                                                                                                                                         (lambda (g7003)
                                                                                                                                           (letrec ((g7759
                                                                                                                                                     (letrec ((x7760
                                                                                                                                                               (letrec ((x7761
                                                                                                                                                                         (posn/c
                                                                                                                                                                          j7004
                                                                                                                                                                          k7005
                                                                                                                                                                          g7003)))
                                                                                                                                                                 (f7006
                                                                                                                                                                  x7761))))
                                                                                                                                                       (real?
                                                                                                                                                        j7004
                                                                                                                                                        k7005
                                                                                                                                                        x7760))))
                                                                                                                                             g7759))))
                                                                                                                                 g7758))))
                                                                                                                     g7757)
                                                                                                                   (letrec ((g7762
                                                                                                                             "error"))
                                                                                                                     g7762)))))))))
                                                                                               g7732))
                                                                                           x6977))
                                                                                         (x7730
                                                                                          (f6976
                                                                                           x6977)))
                                                                                  (x7731
                                                                                   j6974
                                                                                   k6975
                                                                                   x7730))))
                                                                        g7729))))
                                                            g7720))))
                                                g7719)))
                                           (player/c
                                            (lambda (j7008 k7009 f7010)
                                              (letrec ((g7763
                                                        (lambda (g7007)
                                                          (letrec ((g7764
                                                                    (letrec ((x7011
                                                                              ((lambda (g7015
                                                                                        g7016
                                                                                        g7017)
                                                                                 (letrec ((g7765
                                                                                           (letrec ((x-cnd7766
                                                                                                     ((lambda (v7014)
                                                                                                        (letrec ((g7767
                                                                                                                  (letrec ((x-cnd7768
                                                                                                                            (eq?
                                                                                                                             'posn
                                                                                                                             v7014)))
                                                                                                                    (if x-cnd7768
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd7769
                                                                                                                                (eq?
                                                                                                                                 'move-toward
                                                                                                                                 v7014)))
                                                                                                                        (if x-cnd7769
                                                                                                                          #t
                                                                                                                          (eq?
                                                                                                                           'draw-on
                                                                                                                           v7014)))))))
                                                                                                          g7767))
                                                                                                      g7017)))
                                                                                             (if x-cnd7766
                                                                                               g7017
                                                                                               (blame
                                                                                                g7015
                                                                                                '(lambda (v7014)
                                                                                                   (if (eq?
                                                                                                        'posn
                                                                                                        v7014)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'move-toward
                                                                                                          v7014)
                                                                                                       #t
                                                                                                       (eq?
                                                                                                        'draw-on
                                                                                                        v7014)))))))))
                                                                                   g7765))
                                                                               j7008
                                                                               k7009
                                                                               g7007)))
                                                                      (letrec ((g7770
                                                                                (letrec ((x7772
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g7773
                                                                                                       (if cnd
                                                                                                         (letrec ((g7774
                                                                                                                   (lambda (j7018
                                                                                                                            k7019
                                                                                                                            f7020)
                                                                                                                     (letrec ((g7775
                                                                                                                               (lambda ()
                                                                                                                                 (letrec ((g7776
                                                                                                                                           (letrec ((x7777
                                                                                                                                                     (f7020)))
                                                                                                                                             (posn/c
                                                                                                                                              j7018
                                                                                                                                              k7019
                                                                                                                                              x7777))))
                                                                                                                                   g7776))))
                                                                                                                       g7775))))
                                                                                                           g7774)
                                                                                                         (if cnd
                                                                                                           (letrec ((g7778
                                                                                                                     (lambda (j7022
                                                                                                                              k7023
                                                                                                                              f7024)
                                                                                                                       (letrec ((g7779
                                                                                                                                 (lambda (g7021)
                                                                                                                                   (letrec ((g7780
                                                                                                                                             (letrec ((x7781
                                                                                                                                                       (letrec ((x7782
                                                                                                                                                                 (posn/c
                                                                                                                                                                  j7022
                                                                                                                                                                  k7023
                                                                                                                                                                  g7021)))
                                                                                                                                                         (f7024
                                                                                                                                                          x7782))))
                                                                                                                                               (player/c
                                                                                                                                                j7022
                                                                                                                                                k7023
                                                                                                                                                x7781))))
                                                                                                                                     g7780))))
                                                                                                                         g7779))))
                                                                                                             g7778)
                                                                                                           (if cnd
                                                                                                             (letrec ((g7783
                                                                                                                       (lambda (j7026
                                                                                                                                k7027
                                                                                                                                f7028)
                                                                                                                         (letrec ((g7784
                                                                                                                                   (lambda (g7025)
                                                                                                                                     (letrec ((g7785
                                                                                                                                               (letrec ((x7786
                                                                                                                                                         (letrec ((x7787
                                                                                                                                                                   (image?
                                                                                                                                                                    j7026
                                                                                                                                                                    k7027
                                                                                                                                                                    g7025)))
                                                                                                                                                           (f7028
                                                                                                                                                            x7787))))
                                                                                                                                                 (image?
                                                                                                                                                  j7026
                                                                                                                                                  k7027
                                                                                                                                                  x7786))))
                                                                                                                                       g7785))))
                                                                                                                           g7784))))
                                                                                                               g7783)
                                                                                                             (letrec ((g7788
                                                                                                                       "error"))
                                                                                                               g7788))))))
                                                                                               g7773))
                                                                                           x7011))
                                                                                         (x7771
                                                                                          (f7010
                                                                                           x7011)))
                                                                                  (x7772
                                                                                   j7008
                                                                                   k7009
                                                                                   x7771))))
                                                                        g7770))))
                                                            g7764))))
                                                g7763)))
                                           (zombie/c
                                            (lambda (j7030 k7031 f7032)
                                              (letrec ((g7789
                                                        (lambda (g7029)
                                                          (letrec ((g7790
                                                                    (letrec ((x7033
                                                                              ((lambda (g7037
                                                                                        g7038
                                                                                        g7039)
                                                                                 (letrec ((g7791
                                                                                           (letrec ((x-cnd7792
                                                                                                     ((lambda (v7036)
                                                                                                        (letrec ((g7793
                                                                                                                  (letrec ((x-cnd7794
                                                                                                                            (eq?
                                                                                                                             'posn
                                                                                                                             v7036)))
                                                                                                                    (if x-cnd7794
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd7795
                                                                                                                                (eq?
                                                                                                                                 'draw-on/color
                                                                                                                                 v7036)))
                                                                                                                        (if x-cnd7795
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd7796
                                                                                                                                    (eq?
                                                                                                                                     'touching?
                                                                                                                                     v7036)))
                                                                                                                            (if x-cnd7796
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'move-toward
                                                                                                                               v7036)))))))))
                                                                                                          g7793))
                                                                                                      g7039)))
                                                                                             (if x-cnd7792
                                                                                               g7039
                                                                                               (blame
                                                                                                g7037
                                                                                                '(lambda (v7036)
                                                                                                   (if (eq?
                                                                                                        'posn
                                                                                                        v7036)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'draw-on/color
                                                                                                          v7036)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'touching?
                                                                                                            v7036)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'move-toward
                                                                                                          v7036))))))))))
                                                                                   g7791))
                                                                               j7030
                                                                               k7031
                                                                               g7029)))
                                                                      (letrec ((g7797
                                                                                (letrec ((x7799
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g7800
                                                                                                       (if cnd
                                                                                                         (letrec ((g7801
                                                                                                                   (lambda (j7040
                                                                                                                            k7041
                                                                                                                            f7042)
                                                                                                                     (letrec ((g7802
                                                                                                                               (lambda ()
                                                                                                                                 (letrec ((g7803
                                                                                                                                           (letrec ((x7804
                                                                                                                                                     (f7042)))
                                                                                                                                             (posn/c
                                                                                                                                              j7040
                                                                                                                                              k7041
                                                                                                                                              x7804))))
                                                                                                                                   g7803))))
                                                                                                                       g7802))))
                                                                                                           g7801)
                                                                                                         (if cnd
                                                                                                           (letrec ((g7805
                                                                                                                     (lambda (j7045
                                                                                                                              k7046
                                                                                                                              f7047)
                                                                                                                       (letrec ((g7806
                                                                                                                                 (lambda (g7043
                                                                                                                                          g7044)
                                                                                                                                   (letrec ((g7807
                                                                                                                                             (letrec ((x7808
                                                                                                                                                       (letrec ((x7810
                                                                                                                                                                 (string?
                                                                                                                                                                  j7045
                                                                                                                                                                  k7046
                                                                                                                                                                  g7043))
                                                                                                                                                                (x7809
                                                                                                                                                                 (image?
                                                                                                                                                                  j7045
                                                                                                                                                                  k7046
                                                                                                                                                                  g7044)))
                                                                                                                                                         (f7047
                                                                                                                                                          x7810
                                                                                                                                                          x7809))))
                                                                                                                                               (image?
                                                                                                                                                j7045
                                                                                                                                                k7046
                                                                                                                                                x7808))))
                                                                                                                                     g7807))))
                                                                                                                         g7806))))
                                                                                                             g7805)
                                                                                                           (if cnd
                                                                                                             (letrec ((g7811
                                                                                                                       (lambda (j7049
                                                                                                                                k7050
                                                                                                                                f7051)
                                                                                                                         (letrec ((g7812
                                                                                                                                   (lambda (g7048)
                                                                                                                                     (letrec ((g7813
                                                                                                                                               (letrec ((x7814
                                                                                                                                                         (letrec ((x7815
                                                                                                                                                                   (posn/c
                                                                                                                                                                    j7049
                                                                                                                                                                    k7050
                                                                                                                                                                    g7048)))
                                                                                                                                                           (f7051
                                                                                                                                                            x7815))))
                                                                                                                                                 (boolean?
                                                                                                                                                  j7049
                                                                                                                                                  k7050
                                                                                                                                                  x7814))))
                                                                                                                                       g7813))))
                                                                                                                           g7812))))
                                                                                                               g7811)
                                                                                                             (if cnd
                                                                                                               (letrec ((g7816
                                                                                                                         (lambda (j7053
                                                                                                                                  k7054
                                                                                                                                  f7055)
                                                                                                                           (letrec ((g7817
                                                                                                                                     (lambda (g7052)
                                                                                                                                       (letrec ((g7818
                                                                                                                                                 (letrec ((x7819
                                                                                                                                                           (letrec ((x7820
                                                                                                                                                                     (posn/c
                                                                                                                                                                      j7053
                                                                                                                                                                      k7054
                                                                                                                                                                      g7052)))
                                                                                                                                                             (f7055
                                                                                                                                                              x7820))))
                                                                                                                                                   (zombie/c
                                                                                                                                                    j7053
                                                                                                                                                    k7054
                                                                                                                                                    x7819))))
                                                                                                                                         g7818))))
                                                                                                                             g7817))))
                                                                                                                 g7816)
                                                                                                               (letrec ((g7821
                                                                                                                         "error"))
                                                                                                                 g7821)))))))
                                                                                               g7800))
                                                                                           x7033))
                                                                                         (x7798
                                                                                          (f7032
                                                                                           x7033)))
                                                                                  (x7799
                                                                                   j7030
                                                                                   k7031
                                                                                   x7798))))
                                                                        g7797))))
                                                            g7790))))
                                                g7789)))
                                           (horde/c
                                            (lambda (j7057 k7058 f7059)
                                              (letrec ((g7822
                                                        (lambda (g7056)
                                                          (letrec ((g7823
                                                                    (letrec ((x7060
                                                                              ((lambda (g7064
                                                                                        g7065
                                                                                        g7066)
                                                                                 (letrec ((g7824
                                                                                           (letrec ((x-cnd7825
                                                                                                     ((lambda (v7063)
                                                                                                        (letrec ((g7826
                                                                                                                  (letrec ((x-cnd7827
                                                                                                                            (eq?
                                                                                                                             'dead
                                                                                                                             v7063)))
                                                                                                                    (if x-cnd7827
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd7828
                                                                                                                                (eq?
                                                                                                                                 'undead
                                                                                                                                 v7063)))
                                                                                                                        (if x-cnd7828
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd7829
                                                                                                                                    (eq?
                                                                                                                                     'draw-on
                                                                                                                                     v7063)))
                                                                                                                            (if x-cnd7829
                                                                                                                              #t
                                                                                                                              (letrec ((x-cnd7830
                                                                                                                                        (eq?
                                                                                                                                         'touching?
                                                                                                                                         v7063)))
                                                                                                                                (if x-cnd7830
                                                                                                                                  #t
                                                                                                                                  (letrec ((x-cnd7831
                                                                                                                                            (eq?
                                                                                                                                             'move-toward
                                                                                                                                             v7063)))
                                                                                                                                    (if x-cnd7831
                                                                                                                                      #t
                                                                                                                                      (eq?
                                                                                                                                       'eat-brains
                                                                                                                                       v7063)))))))))))))
                                                                                                          g7826))
                                                                                                      g7066)))
                                                                                             (if x-cnd7825
                                                                                               g7066
                                                                                               (blame
                                                                                                g7064
                                                                                                '(lambda (v7063)
                                                                                                   (if (eq?
                                                                                                        'dead
                                                                                                        v7063)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'undead
                                                                                                          v7063)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'draw-on
                                                                                                            v7063)
                                                                                                         #t
                                                                                                         (if (eq?
                                                                                                              'touching?
                                                                                                              v7063)
                                                                                                           #t
                                                                                                           (if (eq?
                                                                                                                'move-toward
                                                                                                                v7063)
                                                                                                             #t
                                                                                                             (eq?
                                                                                                              'eat-brains
                                                                                                              v7063))))))))))))
                                                                                   g7824))
                                                                               j7057
                                                                               k7058
                                                                               g7056)))
                                                                      (letrec ((g7832
                                                                                (letrec ((x7834
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g7835
                                                                                                       (if cnd
                                                                                                         (letrec ((g7836
                                                                                                                   (lambda (j7067
                                                                                                                            k7068
                                                                                                                            f7069)
                                                                                                                     (letrec ((g7837
                                                                                                                               (lambda ()
                                                                                                                                 (letrec ((g7838
                                                                                                                                           (letrec ((x7839
                                                                                                                                                     (f7069)))
                                                                                                                                             (zombies/c
                                                                                                                                              j7067
                                                                                                                                              k7068
                                                                                                                                              x7839))))
                                                                                                                                   g7838))))
                                                                                                                       g7837))))
                                                                                                           g7836)
                                                                                                         (if cnd
                                                                                                           (letrec ((g7840
                                                                                                                     (lambda (j7070
                                                                                                                              k7071
                                                                                                                              f7072)
                                                                                                                       (letrec ((g7841
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g7842
                                                                                                                                             (letrec ((x7843
                                                                                                                                                       (f7072)))
                                                                                                                                               (zombies/c
                                                                                                                                                j7070
                                                                                                                                                k7071
                                                                                                                                                x7843))))
                                                                                                                                     g7842))))
                                                                                                                         g7841))))
                                                                                                             g7840)
                                                                                                           (if cnd
                                                                                                             (letrec ((g7844
                                                                                                                       (lambda (j7074
                                                                                                                                k7075
                                                                                                                                f7076)
                                                                                                                         (letrec ((g7845
                                                                                                                                   (lambda (g7073)
                                                                                                                                     (letrec ((g7846
                                                                                                                                               (letrec ((x7847
                                                                                                                                                         (letrec ((x7848
                                                                                                                                                                   (image?
                                                                                                                                                                    j7074
                                                                                                                                                                    k7075
                                                                                                                                                                    g7073)))
                                                                                                                                                           (f7076
                                                                                                                                                            x7848))))
                                                                                                                                                 (image?
                                                                                                                                                  j7074
                                                                                                                                                  k7075
                                                                                                                                                  x7847))))
                                                                                                                                       g7846))))
                                                                                                                           g7845))))
                                                                                                               g7844)
                                                                                                             (if cnd
                                                                                                               (letrec ((g7849
                                                                                                                         (lambda (j7078
                                                                                                                                  k7079
                                                                                                                                  f7080)
                                                                                                                           (letrec ((g7850
                                                                                                                                     (lambda (g7077)
                                                                                                                                       (letrec ((g7851
                                                                                                                                                 (letrec ((x7852
                                                                                                                                                           (letrec ((x7853
                                                                                                                                                                     (posn/c
                                                                                                                                                                      j7078
                                                                                                                                                                      k7079
                                                                                                                                                                      g7077)))
                                                                                                                                                             (f7080
                                                                                                                                                              x7853))))
                                                                                                                                                   (boolean?
                                                                                                                                                    j7078
                                                                                                                                                    k7079
                                                                                                                                                    x7852))))
                                                                                                                                         g7851))))
                                                                                                                             g7850))))
                                                                                                                 g7849)
                                                                                                               (if cnd
                                                                                                                 (letrec ((g7854
                                                                                                                           (lambda (j7082
                                                                                                                                    k7083
                                                                                                                                    f7084)
                                                                                                                             (letrec ((g7855
                                                                                                                                       (lambda (g7081)
                                                                                                                                         (letrec ((g7856
                                                                                                                                                   (letrec ((x7857
                                                                                                                                                             (letrec ((x7858
                                                                                                                                                                       (posn/c
                                                                                                                                                                        j7082
                                                                                                                                                                        k7083
                                                                                                                                                                        g7081)))
                                                                                                                                                               (f7084
                                                                                                                                                                x7858))))
                                                                                                                                                     (horde/c
                                                                                                                                                      j7082
                                                                                                                                                      k7083
                                                                                                                                                      x7857))))
                                                                                                                                           g7856))))
                                                                                                                               g7855))))
                                                                                                                   g7854)
                                                                                                                 (if cnd
                                                                                                                   (letrec ((g7859
                                                                                                                             (lambda (j7085
                                                                                                                                      k7086
                                                                                                                                      f7087)
                                                                                                                               (letrec ((g7860
                                                                                                                                         (lambda ()
                                                                                                                                           (letrec ((g7861
                                                                                                                                                     (letrec ((x7862
                                                                                                                                                               (f7087)))
                                                                                                                                                       (horde/c
                                                                                                                                                        j7085
                                                                                                                                                        k7086
                                                                                                                                                        x7862))))
                                                                                                                                             g7861))))
                                                                                                                                 g7860))))
                                                                                                                     g7859)
                                                                                                                   (letrec ((g7863
                                                                                                                             "error"))
                                                                                                                     g7863)))))))))
                                                                                               g7835))
                                                                                           x7060))
                                                                                         (x7833
                                                                                          (f7059
                                                                                           x7060)))
                                                                                  (x7834
                                                                                   j7057
                                                                                   k7058
                                                                                   x7833))))
                                                                        g7832))))
                                                            g7823))))
                                                g7822)))
                                           (zombies/c
                                            (lambda (j7089 k7090 f7091)
                                              (letrec ((g7864
                                                        (lambda (g7088)
                                                          (letrec ((g7865
                                                                    (letrec ((x7092
                                                                              ((lambda (g7096
                                                                                        g7097
                                                                                        g7098)
                                                                                 (letrec ((g7866
                                                                                           (letrec ((x-cnd7867
                                                                                                     ((lambda (v7095)
                                                                                                        (letrec ((g7868
                                                                                                                  (letrec ((x-cnd7869
                                                                                                                            (eq?
                                                                                                                             'move-toward
                                                                                                                             v7095)))
                                                                                                                    (if x-cnd7869
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd7870
                                                                                                                                (eq?
                                                                                                                                 'draw-on/color
                                                                                                                                 v7095)))
                                                                                                                        (if x-cnd7870
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd7871
                                                                                                                                    (eq?
                                                                                                                                     'touching?
                                                                                                                                     v7095)))
                                                                                                                            (if x-cnd7871
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'kill-all
                                                                                                                               v7095)))))))))
                                                                                                          g7868))
                                                                                                      g7098)))
                                                                                             (if x-cnd7867
                                                                                               g7098
                                                                                               (blame
                                                                                                g7096
                                                                                                '(lambda (v7095)
                                                                                                   (if (eq?
                                                                                                        'move-toward
                                                                                                        v7095)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'draw-on/color
                                                                                                          v7095)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'touching?
                                                                                                            v7095)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'kill-all
                                                                                                          v7095))))))))))
                                                                                   g7866))
                                                                               j7089
                                                                               k7090
                                                                               g7088)))
                                                                      (letrec ((g7872
                                                                                (letrec ((x7874
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g7875
                                                                                                       (if cnd
                                                                                                         (letrec ((g7876
                                                                                                                   (lambda (j7100
                                                                                                                            k7101
                                                                                                                            f7102)
                                                                                                                     (letrec ((g7877
                                                                                                                               (lambda (g7099)
                                                                                                                                 (letrec ((g7878
                                                                                                                                           (letrec ((x7879
                                                                                                                                                     (letrec ((x7880
                                                                                                                                                               (posn/c
                                                                                                                                                                j7100
                                                                                                                                                                k7101
                                                                                                                                                                g7099)))
                                                                                                                                                       (f7102
                                                                                                                                                        x7880))))
                                                                                                                                             (zombies/c
                                                                                                                                              j7100
                                                                                                                                              k7101
                                                                                                                                              x7879))))
                                                                                                                                   g7878))))
                                                                                                                       g7877))))
                                                                                                           g7876)
                                                                                                         (if cnd
                                                                                                           (letrec ((g7881
                                                                                                                     (lambda (j7105
                                                                                                                              k7106
                                                                                                                              f7107)
                                                                                                                       (letrec ((g7882
                                                                                                                                 (lambda (g7103
                                                                                                                                          g7104)
                                                                                                                                   (letrec ((g7883
                                                                                                                                             (letrec ((x7884
                                                                                                                                                       (letrec ((x7886
                                                                                                                                                                 (string?
                                                                                                                                                                  j7105
                                                                                                                                                                  k7106
                                                                                                                                                                  g7103))
                                                                                                                                                                (x7885
                                                                                                                                                                 (image?
                                                                                                                                                                  j7105
                                                                                                                                                                  k7106
                                                                                                                                                                  g7104)))
                                                                                                                                                         (f7107
                                                                                                                                                          x7886
                                                                                                                                                          x7885))))
                                                                                                                                               (image?
                                                                                                                                                j7105
                                                                                                                                                k7106
                                                                                                                                                x7884))))
                                                                                                                                     g7883))))
                                                                                                                         g7882))))
                                                                                                             g7881)
                                                                                                           (if cnd
                                                                                                             (letrec ((g7887
                                                                                                                       (lambda (j7109
                                                                                                                                k7110
                                                                                                                                f7111)
                                                                                                                         (letrec ((g7888
                                                                                                                                   (lambda (g7108)
                                                                                                                                     (letrec ((g7889
                                                                                                                                               (letrec ((x7890
                                                                                                                                                         (letrec ((x7891
                                                                                                                                                                   (posn/c
                                                                                                                                                                    j7109
                                                                                                                                                                    k7110
                                                                                                                                                                    g7108)))
                                                                                                                                                           (f7111
                                                                                                                                                            x7891))))
                                                                                                                                                 (boolean?
                                                                                                                                                  j7109
                                                                                                                                                  k7110
                                                                                                                                                  x7890))))
                                                                                                                                       g7889))))
                                                                                                                           g7888))))
                                                                                                               g7887)
                                                                                                             (if cnd
                                                                                                               (letrec ((g7892
                                                                                                                         (lambda (j7113
                                                                                                                                  k7114
                                                                                                                                  f7115)
                                                                                                                           (letrec ((g7893
                                                                                                                                     (lambda (g7112)
                                                                                                                                       (letrec ((g7894
                                                                                                                                                 (letrec ((x7895
                                                                                                                                                           (letrec ((x7896
                                                                                                                                                                     (zombies/c
                                                                                                                                                                      j7113
                                                                                                                                                                      k7114
                                                                                                                                                                      g7112)))
                                                                                                                                                             (f7115
                                                                                                                                                              x7896))))
                                                                                                                                                   (horde/c
                                                                                                                                                    j7113
                                                                                                                                                    k7114
                                                                                                                                                    x7895))))
                                                                                                                                         g7894))))
                                                                                                                             g7893))))
                                                                                                                 g7892)
                                                                                                               (letrec ((g7897
                                                                                                                         "error"))
                                                                                                                 g7897)))))))
                                                                                               g7875))
                                                                                           x7092))
                                                                                         (x7873
                                                                                          (f7091
                                                                                           x7092)))
                                                                                  (x7874
                                                                                   j7089
                                                                                   k7090
                                                                                   x7873))))
                                                                        g7872))))
                                                            g7865))))
                                                g7864)))
                                           (world/c
                                            (lambda (j7117 k7118 f7119)
                                              (letrec ((g7898
                                                        (lambda (g7116)
                                                          (letrec ((g7899
                                                                    (letrec ((x7120
                                                                              ((lambda (g7124
                                                                                        g7125
                                                                                        g7126)
                                                                                 (letrec ((g7900
                                                                                           (letrec ((x-cnd7901
                                                                                                     ((lambda (v7123)
                                                                                                        (letrec ((g7902
                                                                                                                  (letrec ((x-cnd7903
                                                                                                                            (eq?
                                                                                                                             'on-mouse
                                                                                                                             v7123)))
                                                                                                                    (if x-cnd7903
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd7904
                                                                                                                                (eq?
                                                                                                                                 'on-tick
                                                                                                                                 v7123)))
                                                                                                                        (if x-cnd7904
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd7905
                                                                                                                                    (eq?
                                                                                                                                     'to-draw
                                                                                                                                     v7123)))
                                                                                                                            (if x-cnd7905
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'stop-when
                                                                                                                               v7123)))))))))
                                                                                                          g7902))
                                                                                                      g7126)))
                                                                                             (if x-cnd7901
                                                                                               g7126
                                                                                               (blame
                                                                                                g7124
                                                                                                '(lambda (v7123)
                                                                                                   (if (eq?
                                                                                                        'on-mouse
                                                                                                        v7123)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'on-tick
                                                                                                          v7123)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'to-draw
                                                                                                            v7123)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'stop-when
                                                                                                          v7123))))))))))
                                                                                   g7900))
                                                                               j7117
                                                                               k7118
                                                                               g7116)))
                                                                      (letrec ((g7906
                                                                                (letrec ((x7908
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g7909
                                                                                                       (if cnd
                                                                                                         (letrec ((g7910
                                                                                                                   (lambda (j7130
                                                                                                                            k7131
                                                                                                                            f7132)
                                                                                                                     (letrec ((g7911
                                                                                                                               (lambda (g7127
                                                                                                                                        g7128
                                                                                                                                        g7129)
                                                                                                                                 (letrec ((g7912
                                                                                                                                           (letrec ((x7913
                                                                                                                                                     (letrec ((x7916
                                                                                                                                                               (real?
                                                                                                                                                                j7130
                                                                                                                                                                k7131
                                                                                                                                                                g7127))
                                                                                                                                                              (x7915
                                                                                                                                                               (real?
                                                                                                                                                                j7130
                                                                                                                                                                k7131
                                                                                                                                                                g7128))
                                                                                                                                                              (x7914
                                                                                                                                                               (string?
                                                                                                                                                                j7130
                                                                                                                                                                k7131
                                                                                                                                                                g7129)))
                                                                                                                                                       (f7132
                                                                                                                                                        x7916
                                                                                                                                                        x7915
                                                                                                                                                        x7914))))
                                                                                                                                             (world/c
                                                                                                                                              j7130
                                                                                                                                              k7131
                                                                                                                                              x7913))))
                                                                                                                                   g7912))))
                                                                                                                       g7911))))
                                                                                                           g7910)
                                                                                                         (if cnd
                                                                                                           (letrec ((g7917
                                                                                                                     (lambda (j7133
                                                                                                                              k7134
                                                                                                                              f7135)
                                                                                                                       (letrec ((g7918
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g7919
                                                                                                                                             (letrec ((x7920
                                                                                                                                                       (f7135)))
                                                                                                                                               (world/c
                                                                                                                                                j7133
                                                                                                                                                k7134
                                                                                                                                                x7920))))
                                                                                                                                     g7919))))
                                                                                                                         g7918))))
                                                                                                             g7917)
                                                                                                           (if cnd
                                                                                                             (letrec ((g7921
                                                                                                                       (lambda (j7136
                                                                                                                                k7137
                                                                                                                                f7138)
                                                                                                                         (letrec ((g7922
                                                                                                                                   (lambda ()
                                                                                                                                     (letrec ((g7923
                                                                                                                                               (letrec ((x7924
                                                                                                                                                         (f7138)))
                                                                                                                                                 (image?
                                                                                                                                                  j7136
                                                                                                                                                  k7137
                                                                                                                                                  x7924))))
                                                                                                                                       g7923))))
                                                                                                                           g7922))))
                                                                                                               g7921)
                                                                                                             (if cnd
                                                                                                               (letrec ((g7925
                                                                                                                         (lambda (j7139
                                                                                                                                  k7140
                                                                                                                                  f7141)
                                                                                                                           (letrec ((g7926
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g7927
                                                                                                                                                 (letrec ((x7928
                                                                                                                                                           (f7141)))
                                                                                                                                                   (boolean?
                                                                                                                                                    j7139
                                                                                                                                                    k7140
                                                                                                                                                    x7928))))
                                                                                                                                         g7927))))
                                                                                                                             g7926))))
                                                                                                                 g7925)
                                                                                                               (letrec ((g7929
                                                                                                                         "error"))
                                                                                                                 g7929)))))))
                                                                                               g7909))
                                                                                           x7120))
                                                                                         (x7907
                                                                                          (f7119
                                                                                           x7120)))
                                                                                  (x7908
                                                                                   j7117
                                                                                   k7118
                                                                                   x7907))))
                                                                        g7906))))
                                                            g7899))))
                                                g7898)))
                                           (new-world
                                            (lambda (player mouse zombies)
                                              (letrec ((g7930
                                                        (letrec ((x7959 (msg))
                                                                 (x7931
                                                                  (if cnd
                                                                    (letrec ((g7932
                                                                              (letrec ((x7937
                                                                                        (x
                                                                                         y
                                                                                         me))
                                                                                       (x7933
                                                                                        (letrec ((x7934
                                                                                                  (letrec ((x-cnd7935
                                                                                                            (equal?
                                                                                                             me
                                                                                                             "leave")))
                                                                                                    (if x-cnd7935
                                                                                                      (letrec ((x7936
                                                                                                                (player
                                                                                                                 'posn)))
                                                                                                        (x7936))
                                                                                                      (new-posn
                                                                                                       x
                                                                                                       y)))))
                                                                                          (new-world
                                                                                           player
                                                                                           x7934
                                                                                           zombies))))
                                                                                (λ x7937
                                                                                  x7933))))
                                                                      g7932)
                                                                    (if cnd
                                                                      (letrec ((g7938
                                                                                (letrec ((x7939
                                                                                          (letrec ((x7946
                                                                                                    (letrec ((x7947
                                                                                                              (player
                                                                                                               'move-toward)))
                                                                                                      (x7947
                                                                                                       mouse)))
                                                                                                   (x7940
                                                                                                    (letrec ((x7943
                                                                                                              (letrec ((x7944
                                                                                                                        (letrec ((x7945
                                                                                                                                  (zombies
                                                                                                                                   'eat-brains)))
                                                                                                                          (x7945))))
                                                                                                                (x7944
                                                                                                                 'move-toward)))
                                                                                                             (x7941
                                                                                                              (letrec ((x7942
                                                                                                                        (player
                                                                                                                         'posn)))
                                                                                                                (x7942))))
                                                                                                      (x7943
                                                                                                       x7941))))
                                                                                            (new-world
                                                                                             x7946
                                                                                             mouse
                                                                                             x7940))))
                                                                                  (λ ()
                                                                                    x7939))))
                                                                        g7938)
                                                                      (if cnd
                                                                        (letrec ((g7948
                                                                                  (letrec ((x7949
                                                                                            (letrec ((x7952
                                                                                                      (player
                                                                                                       'draw-on))
                                                                                                     (x7950
                                                                                                      (letrec ((x7951
                                                                                                                (zombies
                                                                                                                 'draw-on)))
                                                                                                        (x7951
                                                                                                         MT-SCENE))))
                                                                                              (x7952
                                                                                               x7950))))
                                                                                    (λ ()
                                                                                      x7949))))
                                                                          g7948)
                                                                        (if cnd
                                                                          (letrec ((g7953
                                                                                    (letrec ((x7954
                                                                                              (letrec ((x7957
                                                                                                        (zombies
                                                                                                         'touching?))
                                                                                                       (x7955
                                                                                                        (letrec ((x7956
                                                                                                                  (player
                                                                                                                   'posn)))
                                                                                                          (x7956))))
                                                                                                (x7957
                                                                                                 x7955))))
                                                                                      (λ ()
                                                                                        x7954))))
                                                                            g7953)
                                                                          (letrec ((g7958
                                                                                    "unknown message"))
                                                                            g7958)))))))
                                                          (λ x7959 x7931))))
                                                g7930)))
                                           (new-player
                                            (lambda (p)
                                              (letrec ((g7960
                                                        (letrec ((x7973 (msg))
                                                                 (x7961
                                                                  (if cnd
                                                                    (letrec ((g7962
                                                                              (λ ()
                                                                                p)))
                                                                      g7962)
                                                                    (if cnd
                                                                      (letrec ((g7963
                                                                                (letrec ((x7967
                                                                                          (q))
                                                                                         (x7964
                                                                                          (letrec ((x7965
                                                                                                    (letrec ((x7966
                                                                                                              (p
                                                                                                               'move-toward/speed)))
                                                                                                      (x7966
                                                                                                       q
                                                                                                       PLAYER-SPEED))))
                                                                                            (new-player
                                                                                             x7965))))
                                                                                  (λ x7967
                                                                                    x7964))))
                                                                        g7963)
                                                                      (if cnd
                                                                        (letrec ((g7968
                                                                                  (letrec ((x7971
                                                                                            (scn))
                                                                                           (x7969
                                                                                            (letrec ((x7970
                                                                                                      (p
                                                                                                       'draw-on/image)))
                                                                                              (x7970
                                                                                               PLAYER-IMG
                                                                                               scn))))
                                                                                    (λ x7971
                                                                                      x7969))))
                                                                          g7968)
                                                                        (letrec ((g7972
                                                                                  "unknown message"))
                                                                          g7972))))))
                                                          (λ x7973 x7961))))
                                                g7960)))
                                           (new-horde
                                            (lambda (undead dead)
                                              (letrec ((g7974
                                                        (letrec ((x8000 (msg))
                                                                 (x7975
                                                                  (if cnd
                                                                    (letrec ((g7976
                                                                              (λ ()
                                                                                dead)))
                                                                      g7976)
                                                                    (if cnd
                                                                      (letrec ((g7977
                                                                                (λ ()
                                                                                  undead)))
                                                                        g7977)
                                                                      (if cnd
                                                                        (letrec ((g7978
                                                                                  (letrec ((x7983
                                                                                            (scn))
                                                                                           (x7979
                                                                                            (letrec ((x7982
                                                                                                      (undead
                                                                                                       'draw-on/color))
                                                                                                     (x7980
                                                                                                      (letrec ((x7981
                                                                                                                (dead
                                                                                                                 'draw-on/color)))
                                                                                                        (x7981
                                                                                                         "black"
                                                                                                         scn))))
                                                                                              (x7982
                                                                                               "yellow"
                                                                                               x7980))))
                                                                                    (λ x7983
                                                                                      x7979))))
                                                                          g7978)
                                                                        (if cnd
                                                                          (letrec ((g7984
                                                                                    (letrec ((x7990
                                                                                              (p))
                                                                                             (x7985
                                                                                              (letrec ((x7988
                                                                                                        (letrec ((x7989
                                                                                                                  (undead
                                                                                                                   'touching?)))
                                                                                                          (x7989
                                                                                                           p)))
                                                                                                       (x7986
                                                                                                        (letrec ((x7987
                                                                                                                  (dead
                                                                                                                   'touching?)))
                                                                                                          (x7987
                                                                                                           p))))
                                                                                                (or x7988
                                                                                                    x7986))))
                                                                                      (λ x7990
                                                                                        x7985))))
                                                                            g7984)
                                                                          (if cnd
                                                                            (letrec ((g7991
                                                                                      (letrec ((x7995
                                                                                                (p))
                                                                                               (x7992
                                                                                                (letrec ((x7993
                                                                                                          (letrec ((x7994
                                                                                                                    (undead
                                                                                                                     'move-toward)))
                                                                                                            (x7994
                                                                                                             p))))
                                                                                                  (new-horde
                                                                                                   x7993
                                                                                                   dead))))
                                                                                        (λ x7995
                                                                                          x7992))))
                                                                              g7991)
                                                                            (if cnd
                                                                              (letrec ((g7996
                                                                                        (letrec ((x7997
                                                                                                  (letrec ((x7998
                                                                                                            (undead
                                                                                                             'kill-all)))
                                                                                                    (x7998
                                                                                                     dead))))
                                                                                          (λ ()
                                                                                            x7997))))
                                                                                g7996)
                                                                              (letrec ((g7999
                                                                                        "unknown message"))
                                                                                g7999)))))))))
                                                          (λ x8000 x7975))))
                                                g7974)))
                                           (new-cons-zombies
                                            (lambda (z r)
                                              (letrec ((g8001
                                                        (letrec ((x8049 (msg))
                                                                 (x8002
                                                                  (if cnd
                                                                    (letrec ((g8003
                                                                              (letrec ((x8009
                                                                                        (p))
                                                                                       (x8004
                                                                                        (letrec ((x8007
                                                                                                  (letrec ((x8008
                                                                                                            (z
                                                                                                             'move-toward)))
                                                                                                    (x8008
                                                                                                     p)))
                                                                                                 (x8005
                                                                                                  (letrec ((x8006
                                                                                                            (r
                                                                                                             'move-toward)))
                                                                                                    (x8006
                                                                                                     p))))
                                                                                          (new-cons-zombies
                                                                                           x8007
                                                                                           x8005))))
                                                                                (λ x8009
                                                                                  x8004))))
                                                                      g8003)
                                                                    (if cnd
                                                                      (letrec ((g8010
                                                                                (letrec ((x8015
                                                                                          (c
                                                                                           s))
                                                                                         (x8011
                                                                                          (letrec ((x8014
                                                                                                    (z
                                                                                                     'draw-on/color))
                                                                                                   (x8012
                                                                                                    (letrec ((x8013
                                                                                                              (r
                                                                                                               'draw-on/color)))
                                                                                                      (x8013
                                                                                                       c
                                                                                                       s))))
                                                                                            (x8014
                                                                                             c
                                                                                             x8012))))
                                                                                  (λ x8015
                                                                                    x8011))))
                                                                        g8010)
                                                                      (if cnd
                                                                        (letrec ((g8016
                                                                                  (letrec ((x8022
                                                                                            (p))
                                                                                           (x8017
                                                                                            (letrec ((x8020
                                                                                                      (letrec ((x8021
                                                                                                                (z
                                                                                                                 'touching?)))
                                                                                                        (x8021
                                                                                                         p)))
                                                                                                     (x8018
                                                                                                      (letrec ((x8019
                                                                                                                (r
                                                                                                                 'touching?)))
                                                                                                        (x8019
                                                                                                         p))))
                                                                                              (or x8020
                                                                                                  x8018))))
                                                                                    (λ x8022
                                                                                      x8017))))
                                                                          g8016)
                                                                        (if cnd
                                                                          (letrec ((g8023
                                                                                    (letrec ((x8047
                                                                                              (dead))
                                                                                             (x8024
                                                                                              (letrec ((x8034
                                                                                                        (letrec ((x8038
                                                                                                                  (letrec ((x8043
                                                                                                                            (letrec ((x8046
                                                                                                                                      (r
                                                                                                                                       'touching?))
                                                                                                                                     (x8044
                                                                                                                                      (letrec ((x8045
                                                                                                                                                (z
                                                                                                                                                 'posn)))
                                                                                                                                        (x8045))))
                                                                                                                              (x8046
                                                                                                                               x8044)))
                                                                                                                           (x8039
                                                                                                                            (letrec ((x8042
                                                                                                                                      (dead
                                                                                                                                       'touching?))
                                                                                                                                     (x8040
                                                                                                                                      (letrec ((x8041
                                                                                                                                                (z
                                                                                                                                                 'posn)))
                                                                                                                                        (x8041))))
                                                                                                                              (x8042
                                                                                                                               x8040))))
                                                                                                                    (or x8043
                                                                                                                        x8039)))
                                                                                                                 (x8035
                                                                                                                  (letrec ((x8037
                                                                                                                            (r
                                                                                                                             'kill-all))
                                                                                                                           (x8036
                                                                                                                            (new-cons-zombies
                                                                                                                             z
                                                                                                                             dead)))
                                                                                                                    (x8037
                                                                                                                     x8036))))
                                                                                                          (x8038
                                                                                                           x8035)))
                                                                                                       (x8025
                                                                                                        (letrec ((x8026
                                                                                                                  (letrec ((res
                                                                                                                            (letrec ((x8027
                                                                                                                                      (r
                                                                                                                                       'kill-all)))
                                                                                                                              (x8027
                                                                                                                               dead))))
                                                                                                                    (letrec ((g8028
                                                                                                                              (letrec ((x8031
                                                                                                                                        (letrec ((x8032
                                                                                                                                                  (letrec ((x8033
                                                                                                                                                            (res
                                                                                                                                                             'undead)))
                                                                                                                                                    (x8033))))
                                                                                                                                          (new-cons-zombies
                                                                                                                                           z
                                                                                                                                           x8032)))
                                                                                                                                       (x8029
                                                                                                                                        (letrec ((x8030
                                                                                                                                                  (res
                                                                                                                                                   'dead)))
                                                                                                                                          (x8030))))
                                                                                                                                (new-horde
                                                                                                                                 x8031
                                                                                                                                 x8029))))
                                                                                                                      g8028))))
                                                                                                          (else
                                                                                                           x8026))))
                                                                                                (cond
                                                                                                 x8034
                                                                                                 x8025))))
                                                                                      (λ x8047
                                                                                        x8024))))
                                                                            g8023)
                                                                          (letrec ((g8048
                                                                                    "unknown message"))
                                                                            g8048)))))))
                                                          (λ x8049 x8002))))
                                                g8001)))
                                           (new-mt-zombies
                                            (lambda ()
                                              (letrec ((g8050
                                                        (letrec ((x8064 (msg))
                                                                 (x8051
                                                                  (if cnd
                                                                    (letrec ((g8052
                                                                              (letrec ((x8054
                                                                                        (p))
                                                                                       (x8053
                                                                                        (new-mt-zombies)))
                                                                                (λ x8054
                                                                                  x8053))))
                                                                      g8052)
                                                                    (if cnd
                                                                      (letrec ((g8055
                                                                                (letrec ((x8056
                                                                                          (c
                                                                                           s)))
                                                                                  (λ x8056
                                                                                    s))))
                                                                        g8055)
                                                                      (if cnd
                                                                        (letrec ((g8057
                                                                                  (letrec ((x8058
                                                                                            (p)))
                                                                                    (λ x8058
                                                                                      #f))))
                                                                          g8057)
                                                                        (if cnd
                                                                          (letrec ((g8059
                                                                                    (letrec ((x8062
                                                                                              (dead))
                                                                                             (x8060
                                                                                              (letrec ((x8061
                                                                                                        (new-mt-zombies)))
                                                                                                (new-horde
                                                                                                 x8061
                                                                                                 dead))))
                                                                                      (λ x8062
                                                                                        x8060))))
                                                                            g8059)
                                                                          (letrec ((g8063
                                                                                    "unknown message"))
                                                                            g8063)))))))
                                                          (λ x8064 x8051))))
                                                g8050)))
                                           (new-zombie
                                            (lambda (p)
                                              (letrec ((g8065
                                                        (letrec ((x8084 (msg))
                                                                 (x8066
                                                                  (if cnd
                                                                    (letrec ((g8067
                                                                              (λ ()
                                                                                p)))
                                                                      g8067)
                                                                    (if cnd
                                                                      (letrec ((g8068
                                                                                (letrec ((x8072
                                                                                          (c
                                                                                           s))
                                                                                         (x8069
                                                                                          (letrec ((x8071
                                                                                                    (p
                                                                                                     'draw-on/image))
                                                                                                   (x8070
                                                                                                    (circle
                                                                                                     ZOMBIE-RADIUS
                                                                                                     "solid"
                                                                                                     c)))
                                                                                            (x8071
                                                                                             x8070
                                                                                             s))))
                                                                                  (λ x8072
                                                                                    x8069))))
                                                                        g8068)
                                                                      (if cnd
                                                                        (letrec ((g8073
                                                                                  (letrec ((x8077
                                                                                            (q))
                                                                                           (x8074
                                                                                            (letrec ((x8075
                                                                                                      (letrec ((x8076
                                                                                                                (p
                                                                                                                 'dist)))
                                                                                                        (x8076
                                                                                                         q))))
                                                                                              (<=
                                                                                               x8075
                                                                                               ZOMBIE-RADIUS))))
                                                                                    (λ x8077
                                                                                      x8074))))
                                                                          g8073)
                                                                        (if cnd
                                                                          (letrec ((g8078
                                                                                    (letrec ((x8082
                                                                                              (q))
                                                                                             (x8079
                                                                                              (letrec ((x8080
                                                                                                        (letrec ((x8081
                                                                                                                  (p
                                                                                                                   'move-toward/speed)))
                                                                                                          (x8081
                                                                                                           q
                                                                                                           ZOMBIE-SPEED))))
                                                                                                (new-zombie
                                                                                                 x8080))))
                                                                                      (λ x8082
                                                                                        x8079))))
                                                                            g8078)
                                                                          (letrec ((g8083
                                                                                    "unknown message"))
                                                                            g8083)))))))
                                                          (λ x8084 x8066))))
                                                g8065)))
                                           (new-posn
                                            (lambda (x y)
                                              (letrec ((g8085
                                                        (letrec ((this
                                                                  (letrec ((x8142
                                                                            (msg))
                                                                           (x8086
                                                                            (if cnd
                                                                              (letrec ((g8087
                                                                                        (λ ()
                                                                                          x)))
                                                                                g8087)
                                                                              (if cnd
                                                                                (letrec ((g8088
                                                                                          (λ ()
                                                                                            y)))
                                                                                  g8088)
                                                                                (if cnd
                                                                                  (letrec ((g8089
                                                                                            (λ ()
                                                                                              this)))
                                                                                    g8089)
                                                                                  (if cnd
                                                                                    (letrec ((g8090
                                                                                              (letrec ((x8120
                                                                                                        (p
                                                                                                         speed))
                                                                                                       (x8091
                                                                                                        (letrec ((x8106
                                                                                                                  (letrec ((x8116
                                                                                                                            (letrec ((x8117
                                                                                                                                      (letrec ((x8118
                                                                                                                                                (letrec ((x8119
                                                                                                                                                          (p
                                                                                                                                                           'x)))
                                                                                                                                                  (x8119))))
                                                                                                                                        (-
                                                                                                                                         x8118
                                                                                                                                         x))))
                                                                                                                              (δx
                                                                                                                               x8117)))
                                                                                                                           (x8112
                                                                                                                            (letrec ((x8113
                                                                                                                                      (letrec ((x8114
                                                                                                                                                (letrec ((x8115
                                                                                                                                                          (p
                                                                                                                                                           'y)))
                                                                                                                                                  (x8115))))
                                                                                                                                        (-
                                                                                                                                         x8114
                                                                                                                                         y))))
                                                                                                                              (δy
                                                                                                                               x8113)))
                                                                                                                           (x8107
                                                                                                                            (letrec ((x8108
                                                                                                                                      (letrec ((x8109
                                                                                                                                                (letrec ((x8111
                                                                                                                                                          (abs
                                                                                                                                                           δx))
                                                                                                                                                         (x8110
                                                                                                                                                          (abs
                                                                                                                                                           δy)))
                                                                                                                                                  (max
                                                                                                                                                   x8111
                                                                                                                                                   x8110))))
                                                                                                                                        (min
                                                                                                                                         speed
                                                                                                                                         x8109))))
                                                                                                                              (move-distance
                                                                                                                               x8108))))
                                                                                                                    (x8116
                                                                                                                     x8112
                                                                                                                     x8107)))
                                                                                                                 (x8092
                                                                                                                  (letrec ((x8098
                                                                                                                            (letrec ((x8103
                                                                                                                                      (letrec ((x8105
                                                                                                                                                (abs
                                                                                                                                                 δx))
                                                                                                                                               (x8104
                                                                                                                                                (abs
                                                                                                                                                 δy)))
                                                                                                                                        (<
                                                                                                                                         x8105
                                                                                                                                         x8104)))
                                                                                                                                     (x8099
                                                                                                                                      (letrec ((x8102
                                                                                                                                                (this
                                                                                                                                                 'move))
                                                                                                                                               (x8100
                                                                                                                                                (letrec ((x-cnd8101
                                                                                                                                                          (positive?
                                                                                                                                                           δy)))
                                                                                                                                                  (if x-cnd8101
                                                                                                                                                    move-distance
                                                                                                                                                    (-
                                                                                                                                                     0
                                                                                                                                                     move-distance)))))
                                                                                                                                        (x8102
                                                                                                                                         0
                                                                                                                                         x8100))))
                                                                                                                              (x8103
                                                                                                                               x8099)))
                                                                                                                           (x8093
                                                                                                                            (letrec ((x8094
                                                                                                                                      (letrec ((x8097
                                                                                                                                                (this
                                                                                                                                                 'move))
                                                                                                                                               (x8095
                                                                                                                                                (letrec ((x-cnd8096
                                                                                                                                                          (positive?
                                                                                                                                                           δx)))
                                                                                                                                                  (if x-cnd8096
                                                                                                                                                    move-distance
                                                                                                                                                    (-
                                                                                                                                                     0
                                                                                                                                                     move-distance)))))
                                                                                                                                        (x8097
                                                                                                                                         x8095
                                                                                                                                         0))))
                                                                                                                              (else
                                                                                                                               x8094))))
                                                                                                                    (cond
                                                                                                                     x8098
                                                                                                                     x8093))))
                                                                                                          (let* x8106 x8092))))
                                                                                                (λ x8120
                                                                                                  x8091))))
                                                                                      g8090)
                                                                                    (if cnd
                                                                                      (letrec ((g8121
                                                                                                (letrec ((x8125
                                                                                                          (δx
                                                                                                           δy))
                                                                                                         (x8122
                                                                                                          (letrec ((x8124
                                                                                                                    (+
                                                                                                                     x
                                                                                                                     δx))
                                                                                                                   (x8123
                                                                                                                    (+
                                                                                                                     y
                                                                                                                     δy)))
                                                                                                            (new-posn
                                                                                                             x8124
                                                                                                             x8123))))
                                                                                                  (λ x8125
                                                                                                    x8122))))
                                                                                        g8121)
                                                                                      (if cnd
                                                                                        (letrec ((g8126
                                                                                                  (letrec ((x8128
                                                                                                            (img
                                                                                                             scn))
                                                                                                           (x8127
                                                                                                            (place-image
                                                                                                             img
                                                                                                             x
                                                                                                             y
                                                                                                             scn)))
                                                                                                    (λ x8128
                                                                                                      x8127))))
                                                                                          g8126)
                                                                                        (if cnd
                                                                                          (letrec ((g8129
                                                                                                    (letrec ((x8140
                                                                                                              (p))
                                                                                                             (x8130
                                                                                                              (letrec ((x8131
                                                                                                                        (letrec ((x8136
                                                                                                                                  (letrec ((x8137
                                                                                                                                            (letrec ((x8138
                                                                                                                                                      (letrec ((x8139
                                                                                                                                                                (p
                                                                                                                                                                 'y)))
                                                                                                                                                        (x8139))))
                                                                                                                                              (-
                                                                                                                                               x8138
                                                                                                                                               y))))
                                                                                                                                    (sqr
                                                                                                                                     x8137)))
                                                                                                                                 (x8132
                                                                                                                                  (letrec ((x8133
                                                                                                                                            (letrec ((x8134
                                                                                                                                                      (letrec ((x8135
                                                                                                                                                                (p
                                                                                                                                                                 'x)))
                                                                                                                                                        (x8135))))
                                                                                                                                              (-
                                                                                                                                               x8134
                                                                                                                                               x))))
                                                                                                                                    (sqr
                                                                                                                                     x8133))))
                                                                                                                          (+
                                                                                                                           x8136
                                                                                                                           x8132))))
                                                                                                                (sqrt
                                                                                                                 x8131))))
                                                                                                      (λ x8140
                                                                                                        x8130))))
                                                                                            g8129)
                                                                                          (letrec ((g8141
                                                                                                    "unknown message"))
                                                                                            g8141))))))))))
                                                                    (λ x8142
                                                                      x8086))))
                                                          (letrec ((g8143
                                                                    this))
                                                            g8143))))
                                                g8085)))
                                           (w0
                                            (letrec ((x8157
                                                      (letrec ((x8158
                                                                (new-posn
                                                                 0
                                                                 0)))
                                                        (new-player x8158)))
                                                     (x8156 (new-posn 0 0))
                                                     (x8144
                                                      (letrec ((x8149
                                                                (letrec ((x8154
                                                                          (letrec ((x8155
                                                                                    (new-posn
                                                                                     100
                                                                                     300)))
                                                                            (new-zombie
                                                                             x8155)))
                                                                         (x8150
                                                                          (letrec ((x8152
                                                                                    (letrec ((x8153
                                                                                              (new-posn
                                                                                               100
                                                                                               200)))
                                                                                      (new-zombie
                                                                                       x8153)))
                                                                                   (x8151
                                                                                    (new-mt-zombies)))
                                                                            (new-cons-zombies
                                                                             x8152
                                                                             x8151))))
                                                                  (new-cons-zombies
                                                                   x8154
                                                                   x8150)))
                                                               (x8145
                                                                (letrec ((x8147
                                                                          (letrec ((x8148
                                                                                    (new-posn
                                                                                     200
                                                                                     200)))
                                                                            (new-zombie
                                                                             x8148)))
                                                                         (x8146
                                                                          (new-mt-zombies)))
                                                                  (new-cons-zombies
                                                                   x8147
                                                                   x8146))))
                                                        (new-horde
                                                         x8149
                                                         x8145))))
                                              (new-world x8157 x8156 x8144))))
                                    (letrec ((g8159
                                              (letrec ((x8172
                                                        ((lambda (j7143
                                                                  k7144
                                                                  f7145)
                                                           (letrec ((g8173
                                                                     (lambda (g7142)
                                                                       (letrec ((g8174
                                                                                 (letrec ((x8175
                                                                                           (letrec ((x8176
                                                                                                     (any/c
                                                                                                      j7143
                                                                                                      k7144
                                                                                                      g7142)))
                                                                                             (f7145
                                                                                              x8176))))
                                                                                   (boolean?/c
                                                                                    j7143
                                                                                    k7144
                                                                                    x8175))))
                                                                         g8174))))
                                                             g8173))
                                                         'module
                                                         'importer
                                                         image?))
                                                       (x8171 (input)))
                                                (x8172 x8171)))
                                             (g8160
                                              (letrec ((x8179
                                                        ((lambda (j7148
                                                                  k7149
                                                                  f7150)
                                                           (letrec ((g8180
                                                                     (lambda (g7146
                                                                              g7147)
                                                                       (letrec ((g8181
                                                                                 (letrec ((x8182
                                                                                           (letrec ((x8184
                                                                                                     (real?/c
                                                                                                      j7148
                                                                                                      k7149
                                                                                                      g7146))
                                                                                                    (x8183
                                                                                                     (real?/c
                                                                                                      j7148
                                                                                                      k7149
                                                                                                      g7147)))
                                                                                             (f7150
                                                                                              x8184
                                                                                              x8183))))
                                                                                   (image?
                                                                                    j7148
                                                                                    k7149
                                                                                    x8182))))
                                                                         g8181))))
                                                             g8180))
                                                         'module
                                                         'importer
                                                         empty-scene))
                                                       (x8178 (input))
                                                       (x8177 (input)))
                                                (x8179 x8178 x8177)))
                                             (g8161
                                              (letrec ((x8189
                                                        ((lambda (j7155
                                                                  k7156
                                                                  f7157)
                                                           (letrec ((g8190
                                                                     (lambda (g7151
                                                                              g7152
                                                                              g7153
                                                                              g7154)
                                                                       (letrec ((g8191
                                                                                 (letrec ((x8192
                                                                                           (letrec ((x8196
                                                                                                     (image?/c
                                                                                                      j7155
                                                                                                      k7156
                                                                                                      g7151))
                                                                                                    (x8195
                                                                                                     (real?/c
                                                                                                      j7155
                                                                                                      k7156
                                                                                                      g7152))
                                                                                                    (x8194
                                                                                                     (real?/c
                                                                                                      j7155
                                                                                                      k7156
                                                                                                      g7153))
                                                                                                    (x8193
                                                                                                     (image?
                                                                                                      j7155
                                                                                                      k7156
                                                                                                      g7154)))
                                                                                             (f7157
                                                                                              x8196
                                                                                              x8195
                                                                                              x8194
                                                                                              x8193))))
                                                                                   (image?
                                                                                    j7155
                                                                                    k7156
                                                                                    x8192))))
                                                                         g8191))))
                                                             g8190))
                                                         'module
                                                         'importer
                                                         place-image))
                                                       (x8188 (input))
                                                       (x8187 (input))
                                                       (x8186 (input))
                                                       (x8185 (input)))
                                                (x8189
                                                 x8188
                                                 x8187
                                                 x8186
                                                 x8185)))
                                             (g8162
                                              (letrec ((x8200
                                                        ((lambda (j7161
                                                                  k7162
                                                                  f7163)
                                                           (letrec ((g8201
                                                                     (lambda (g7158
                                                                              g7159
                                                                              g7160)
                                                                       (letrec ((g8202
                                                                                 (letrec ((x8203
                                                                                           (letrec ((x8206
                                                                                                     (real?/c
                                                                                                      j7161
                                                                                                      k7162
                                                                                                      g7158))
                                                                                                    (x8205
                                                                                                     (string?/c
                                                                                                      j7161
                                                                                                      k7162
                                                                                                      g7159))
                                                                                                    (x8204
                                                                                                     (string?/c
                                                                                                      j7161
                                                                                                      k7162
                                                                                                      g7160)))
                                                                                             (f7163
                                                                                              x8206
                                                                                              x8205
                                                                                              x8204))))
                                                                                   (image?
                                                                                    j7161
                                                                                    k7162
                                                                                    x8203))))
                                                                         g8202))))
                                                             g8201))
                                                         'module
                                                         'importer
                                                         circle))
                                                       (x8199 (input))
                                                       (x8198 (input))
                                                       (x8197 (input)))
                                                (x8200 x8199 x8198 x8197)))
                                             (g8163
                                              (letrec ((x8210
                                                        ((lambda (j7167
                                                                  k7168
                                                                  f7169)
                                                           (letrec ((g8211
                                                                     (lambda (g7164
                                                                              g7165
                                                                              g7166)
                                                                       (letrec ((g8212
                                                                                 (letrec ((x8213
                                                                                           (letrec ((x8216
                                                                                                     (player/c
                                                                                                      j7167
                                                                                                      k7168
                                                                                                      g7164))
                                                                                                    (x8215
                                                                                                     (posn/c
                                                                                                      j7167
                                                                                                      k7168
                                                                                                      g7165))
                                                                                                    (x8214
                                                                                                     (horde/c
                                                                                                      j7167
                                                                                                      k7168
                                                                                                      g7166)))
                                                                                             (f7169
                                                                                              x8216
                                                                                              x8215
                                                                                              x8214))))
                                                                                   (world/c
                                                                                    j7167
                                                                                    k7168
                                                                                    x8213))))
                                                                         g8212))))
                                                             g8211))
                                                         'module
                                                         'importer
                                                         new-world))
                                                       (x8209 (input))
                                                       (x8208 (input))
                                                       (x8207 (input)))
                                                (x8210 x8209 x8208 x8207)))
                                             (g8164
                                              (letrec ((x8218
                                                        ((lambda (j7171
                                                                  k7172
                                                                  f7173)
                                                           (letrec ((g8219
                                                                     (lambda (g7170)
                                                                       (letrec ((g8220
                                                                                 (letrec ((x8221
                                                                                           (letrec ((x8222
                                                                                                     (posn/c
                                                                                                      j7171
                                                                                                      k7172
                                                                                                      g7170)))
                                                                                             (f7173
                                                                                              x8222))))
                                                                                   (player/c
                                                                                    j7171
                                                                                    k7172
                                                                                    x8221))))
                                                                         g8220))))
                                                             g8219))
                                                         'module
                                                         'importer
                                                         new-player))
                                                       (x8217 (input)))
                                                (x8218 x8217)))
                                             (g8165
                                              (letrec ((x8225
                                                        ((lambda (j7176
                                                                  k7177
                                                                  f7178)
                                                           (letrec ((g8226
                                                                     (lambda (g7174
                                                                              g7175)
                                                                       (letrec ((g8227
                                                                                 (letrec ((x8228
                                                                                           (letrec ((x8230
                                                                                                     (zombies/c
                                                                                                      j7176
                                                                                                      k7177
                                                                                                      g7174))
                                                                                                    (x8229
                                                                                                     (zombies/c
                                                                                                      j7176
                                                                                                      k7177
                                                                                                      g7175)))
                                                                                             (f7178
                                                                                              x8230
                                                                                              x8229))))
                                                                                   (horde/c
                                                                                    j7176
                                                                                    k7177
                                                                                    x8228))))
                                                                         g8227))))
                                                             g8226))
                                                         'module
                                                         'importer
                                                         new-horde))
                                                       (x8224 (input))
                                                       (x8223 (input)))
                                                (x8225 x8224 x8223)))
                                             (g8166
                                              (letrec ((x8233
                                                        ((lambda (j7181
                                                                  k7182
                                                                  f7183)
                                                           (letrec ((g8234
                                                                     (lambda (g7179
                                                                              g7180)
                                                                       (letrec ((g8235
                                                                                 (letrec ((x8236
                                                                                           (letrec ((x8238
                                                                                                     (zombie/c
                                                                                                      j7181
                                                                                                      k7182
                                                                                                      g7179))
                                                                                                    (x8237
                                                                                                     (zombies/c
                                                                                                      j7181
                                                                                                      k7182
                                                                                                      g7180)))
                                                                                             (f7183
                                                                                              x8238
                                                                                              x8237))))
                                                                                   (zombies/c
                                                                                    j7181
                                                                                    k7182
                                                                                    x8236))))
                                                                         g8235))))
                                                             g8234))
                                                         'module
                                                         'importer
                                                         new-cons-zombies))
                                                       (x8232 (input))
                                                       (x8231 (input)))
                                                (x8233 x8232 x8231)))
                                             (g8167
                                              ((lambda (j7184 k7185 f7186)
                                                 (letrec ((g8239
                                                           (lambda ()
                                                             (letrec ((g8240
                                                                       (letrec ((x8241
                                                                                 (f7186)))
                                                                         (zombies/c
                                                                          j7184
                                                                          k7185
                                                                          x8241))))
                                                               g8240))))
                                                   g8239))
                                               'module
                                               'importer
                                               new-mt-zombies))
                                             (g8168
                                              (letrec ((x8243
                                                        ((lambda (j7188
                                                                  k7189
                                                                  f7190)
                                                           (letrec ((g8244
                                                                     (lambda (g7187)
                                                                       (letrec ((g8245
                                                                                 (letrec ((x8246
                                                                                           (letrec ((x8247
                                                                                                     (posn/c
                                                                                                      j7188
                                                                                                      k7189
                                                                                                      g7187)))
                                                                                             (f7190
                                                                                              x8247))))
                                                                                   (zombie/c
                                                                                    j7188
                                                                                    k7189
                                                                                    x8246))))
                                                                         g8245))))
                                                             g8244))
                                                         'module
                                                         'importer
                                                         new-zombie))
                                                       (x8242 (input)))
                                                (x8243 x8242)))
                                             (g8169
                                              (letrec ((x8250
                                                        ((lambda (j7193
                                                                  k7194
                                                                  f7195)
                                                           (letrec ((g8251
                                                                     (lambda (g7191
                                                                              g7192)
                                                                       (letrec ((g8252
                                                                                 (letrec ((x8253
                                                                                           (letrec ((x8255
                                                                                                     (real?/c
                                                                                                      j7193
                                                                                                      k7194
                                                                                                      g7191))
                                                                                                    (x8254
                                                                                                     (real?/c
                                                                                                      j7193
                                                                                                      k7194
                                                                                                      g7192)))
                                                                                             (f7195
                                                                                              x8255
                                                                                              x8254))))
                                                                                   (posn/c
                                                                                    j7193
                                                                                    k7194
                                                                                    x8253))))
                                                                         g8252))))
                                                             g8251))
                                                         'module
                                                         'importer
                                                         new-posn))
                                                       (x8249 (input))
                                                       (x8248 (input)))
                                                (x8250 x8249 x8248)))
                                             (g8170
                                              (world/c 'module 'importer w0)))
                                      g8170))))
                          g7210))))
              g7208)))
    g7207))
