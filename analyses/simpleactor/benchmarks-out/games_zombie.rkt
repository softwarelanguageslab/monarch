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
                                                                                                                (letrec ((x7437
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7436
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7419
                                                                                                                          (letrec ((x7433
                                                                                                                                    (letrec ((x7434
                                                                                                                                              (letrec ((x7435
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7435))))
                                                                                                                                      (x7434)))
                                                                                                                                   (x7420
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
                                                                                                                            (let x7433 x7420))))
                                                                                                                  (and x7437
                                                                                                                       x7436
                                                                                                                       x7419)))))
                                                                                                      g7418)))))
                                                                                        g7409)))))
                                                                          g7405)))))
                                                            g7402))))
                                                g7401)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7438
                                                        (letrec ((x7439
                                                                  (letrec ((x7440
                                                                            (letrec ((x7441
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7441))))
                                                                    (car
                                                                     x7440))))
                                                          (cdr x7439))))
                                                g7438)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7442
                                                        (letrec ((x7443
                                                                  (letrec ((x7444
                                                                            (letrec ((x7445
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7445))))
                                                                    (car
                                                                     x7444))))
                                                          (car x7443))))
                                                g7442)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7446 (eq? x y)))
                                                g7446)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7447
                                                        (letrec ((x7449
                                                                  (number? x)))
                                                          (assert x7449)))
                                                       (g7448
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7450
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7451
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7451)))))
                                                            g7450))))
                                                g7448)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7452
                                                        (letrec ((x7455
                                                                  (string?
                                                                   filename)))
                                                          (assert x7455)))
                                                       (g7453
                                                        (letrec ((x7456
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7456)))
                                                       (g7454
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7457
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7458 res))
                                                            g7458))))
                                                g7454)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7459 (cons x '())))
                                                g7459)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7460
                                                        (letrec ((x7463
                                                                  (char? c1)))
                                                          (assert x7463)))
                                                       (g7461
                                                        (letrec ((x7464
                                                                  (char? c2)))
                                                          (assert x7464)))
                                                       (g7462
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7465
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7465))))
                                                g7462)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7466
                                                        (letrec ((x7467
                                                                  (letrec ((x7468
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7468))))
                                                          (cdr x7467))))
                                                g7466)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7469
                                                        (letrec ((x7470
                                                                  (letrec ((x7471
                                                                            (letrec ((x7472
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7472))))
                                                                    (car
                                                                     x7471))))
                                                          (cdr x7470))))
                                                g7469)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7473
                                                        (letrec ((x7474
                                                                  (letrec ((x7475
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7475))))
                                                          (car x7474))))
                                                g7473)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7476
                                                        (letrec ((x7477
                                                                  (letrec ((x7478
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7478))))
                                                          (car x7477))))
                                                g7476)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7479
                                                        (letrec ((x7482
                                                                  (char? c1)))
                                                          (assert x7482)))
                                                       (g7480
                                                        (letrec ((x7483
                                                                  (char? c2)))
                                                          (assert x7483)))
                                                       (g7481
                                                        (letrec ((x7484
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7484))))
                                                g7481)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7485
                                                        (letrec ((x7486
                                                                  (letrec ((x7487
                                                                            (letrec ((x7488
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7488))))
                                                                    (car
                                                                     x7487))))
                                                          (car x7486))))
                                                g7485)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7489
                                                        (letrec ((x7491
                                                                  (number? x)))
                                                          (assert x7491)))
                                                       (g7490 (< x 0)))
                                                g7490)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7492 (memq e l)))
                                                g7492)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7493
                                                        (letrec ((x7494
                                                                  (letrec ((x7495
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7495))))
                                                          (car x7494))))
                                                g7493)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7496 '())) g7496)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7497
                                                        (letrec ((x7499
                                                                  (list? l)))
                                                          (assert x7499)))
                                                       (g7498
                                                        (letrec ((x-cnd7500
                                                                  (null? l)))
                                                          (if x-cnd7500
                                                            '()
                                                            (letrec ((x7503
                                                                      (letrec ((x7504
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7504)))
                                                                     (x7501
                                                                      (letrec ((x7502
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7502))))
                                                              (append
                                                               x7503
                                                               x7501))))))
                                                g7498)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7505
                                                        (letrec ((x7506
                                                                  (letrec ((x7507
                                                                            (letrec ((x7508
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7508))))
                                                                    (car
                                                                     x7507))))
                                                          (car x7506))))
                                                g7505)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7509
                                                        (letrec ((x7510
                                                                  (letrec ((x7511
                                                                            (letrec ((x7512
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7512))))
                                                                    (cdr
                                                                     x7511))))
                                                          (cdr x7510))))
                                                g7509)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7513
                                                        (letrec ((x7515
                                                                  (number? x)))
                                                          (assert x7515)))
                                                       (g7514
                                                        (letrec ((x7516
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7516))))
                                                g7514)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7517
                                                        (letrec ((x7518
                                                                  (letrec ((x7519
                                                                            (letrec ((x7520
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7520))))
                                                                    (car
                                                                     x7519))))
                                                          (car x7518))))
                                                g7517)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7521
                                                        (letrec ((x7524
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7524)))
                                                       (g7522
                                                        (letrec ((x7525
                                                                  (list?
                                                                   args)))
                                                          (assert x7525)))
                                                       (g7523
                                                        (if cnd
                                                          (letrec ((g7526
                                                                    (proc)))
                                                            g7526)
                                                          (if cnd
                                                            (letrec ((g7527
                                                                      (letrec ((x7528
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7528))))
                                                              g7527)
                                                            (if cnd
                                                              (letrec ((g7529
                                                                        (letrec ((x7531
                                                                                  (car
                                                                                   args))
                                                                                 (x7530
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7531
                                                                           x7530))))
                                                                g7529)
                                                              (if cnd
                                                                (letrec ((g7532
                                                                          (letrec ((x7535
                                                                                    (car
                                                                                     args))
                                                                                   (x7534
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7533
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7535
                                                                             x7534
                                                                             x7533))))
                                                                  g7532)
                                                                (if cnd
                                                                  (letrec ((g7536
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
                                                                                       args)))
                                                                              (proc
                                                                               x7540
                                                                               x7539
                                                                               x7538
                                                                               x7537))))
                                                                    g7536)
                                                                  (if cnd
                                                                    (letrec ((g7541
                                                                              (letrec ((x7547
                                                                                        (car
                                                                                         args))
                                                                                       (x7546
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7545
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7544
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7542
                                                                                        (letrec ((x7543
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7543))))
                                                                                (proc
                                                                                 x7547
                                                                                 x7546
                                                                                 x7545
                                                                                 x7544
                                                                                 x7542))))
                                                                      g7541)
                                                                    (if cnd
                                                                      (letrec ((g7548
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
                                                                                             x7550))))
                                                                                  (proc
                                                                                   x7556
                                                                                   x7555
                                                                                   x7554
                                                                                   x7553
                                                                                   x7551
                                                                                   x7549))))
                                                                        g7548)
                                                                      (if cnd
                                                                        (letrec ((g7557
                                                                                  (letrec ((x7567
                                                                                            (car
                                                                                             args))
                                                                                           (x7566
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7565
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7564
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7562
                                                                                            (letrec ((x7563
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7563)))
                                                                                           (x7560
                                                                                            (letrec ((x7561
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7561)))
                                                                                           (x7558
                                                                                            (letrec ((x7559
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7559))))
                                                                                    (proc
                                                                                     x7567
                                                                                     x7566
                                                                                     x7565
                                                                                     x7564
                                                                                     x7562
                                                                                     x7560
                                                                                     x7558))))
                                                                          g7557)
                                                                        (letrec ((g7568
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7568)))))))))))
                                                g7523)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7569
                                                        (letrec ((x7571
                                                                  (list? l)))
                                                          (assert x7571)))
                                                       (g7570
                                                        (letrec ((x-cnd7572
                                                                  (null? l)))
                                                          (if x-cnd7572
                                                            #f
                                                            (letrec ((x-cnd7573
                                                                      (letrec ((x7574
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7574
                                                                         e))))
                                                              (if x-cnd7573
                                                                l
                                                                (letrec ((x7575
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7575))))))))
                                                g7570)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7576
                                                        (letrec ((x7577
                                                                  (letrec ((x7578
                                                                            (letrec ((x7579
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7579))))
                                                                    (cdr
                                                                     x7578))))
                                                          (cdr x7577))))
                                                g7576)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7580
                                                        (letrec ((x7581
                                                                  (letrec ((x7582
                                                                            (letrec ((x7583
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7583))))
                                                                    (cdr
                                                                     x7582))))
                                                          (car x7581))))
                                                g7580)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7584 (random 42)))
                                                g7584)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7585
                                                        (letrec ((x7587
                                                                  (number? x)))
                                                          (assert x7587)))
                                                       (g7586 (= x 0)))
                                                g7586)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7588
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7589
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7589))))
                                                g7588)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7590
                                                        (letrec ((x7591
                                                                  (cdr x)))
                                                          (car x7591))))
                                                g7590)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7592
                                                        (letrec ((val6900
                                                                  (letrec ((x7595
                                                                            (pair?
                                                                             l))
                                                                           (x7593
                                                                            (letrec ((x7594
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7594))))
                                                                    (and x7595
                                                                         x7593))))
                                                          (letrec ((g7596
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7596))))
                                                g7592)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7597
                                                        (letrec ((x7598
                                                                  (letrec ((x7599
                                                                            (letrec ((x7600
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7600))))
                                                                    (cdr
                                                                     x7599))))
                                                          (cdr x7598))))
                                                g7597)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7601
                                                        (letrec ((x-cnd7602
                                                                  (letrec ((x7603
                                                                            #\0))
                                                                    (char<=?
                                                                     x7603
                                                                     c))))
                                                          (if x-cnd7602
                                                            (letrec ((x7604
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7604))
                                                            #f))))
                                                g7601)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7605
                                                        (letrec ((x7607
                                                                  (list? l)))
                                                          (assert x7607)))
                                                       (g7606
                                                        (letrec ((x-cnd7608
                                                                  (null? l)))
                                                          (if x-cnd7608
                                                            #f
                                                            (letrec ((x-cnd7609
                                                                      (letrec ((x7610
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7610
                                                                         k))))
                                                              (if x-cnd7609
                                                                (car l)
                                                                (letrec ((x7611
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7611))))))))
                                                g7606)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7612 (if x #f #t)))
                                                g7612)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7613 (append l1 l2)))
                                                g7613)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7614
                                                        (letrec ((x7616
                                                                  (list? l)))
                                                          (assert x7616)))
                                                       (g7615
                                                        (letrec ((x-cnd7617
                                                                  (null? l)))
                                                          (if x-cnd7617
                                                            #f
                                                            (letrec ((x-cnd7618
                                                                      (letrec ((x7619
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7619
                                                                         e))))
                                                              (if x-cnd7618
                                                                l
                                                                (letrec ((x7620
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7620))))))))
                                                g7615)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7621
                                                        (letrec ((x7622
                                                                  (letrec ((x7623
                                                                            (letrec ((x7624
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7624))))
                                                                    (cdr
                                                                     x7623))))
                                                          (car x7622))))
                                                g7621)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7625
                                                        (letrec ((x7627
                                                                  (list? l)))
                                                          (assert x7627)))
                                                       (g7626
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7628
                                                                              (letrec ((x-cnd7629
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7629
                                                                                  0
                                                                                  (letrec ((x7630
                                                                                            (letrec ((x7631
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7631))))
                                                                                    (+
                                                                                     1
                                                                                     x7630))))))
                                                                      g7628))))
                                                          (letrec ((g7632
                                                                    (rec l)))
                                                            g7632))))
                                                g7626)))
                                           (char-ci<=?
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
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7638
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7638))))
                                                g7635)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7639
                                                        (letrec ((x7640
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7640))))
                                                g7639)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7641
                                                        (letrec ((x7642
                                                                  (letrec ((x7643
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7643))))
                                                          (cdr x7642))))
                                                g7641)))
                                           (assoc
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
                                                                        (equal?
                                                                         x7649
                                                                         k))))
                                                              (if x-cnd7648
                                                                (car l)
                                                                (letrec ((x7650
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7650))))))))
                                                g7645)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7651
                                                        (letrec ((x7652
                                                                  (car x)))
                                                          (car x7652))))
                                                g7651)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7653
                                                        (letrec ((x7656
                                                                  (char? c1)))
                                                          (assert x7656)))
                                                       (g7654
                                                        (letrec ((x7657
                                                                  (char? c2)))
                                                          (assert x7657)))
                                                       (g7655
                                                        (letrec ((x7658
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7658))))
                                                g7655)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7659
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7660
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7660))))
                                                g7659)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7661
                                                        (letrec ((x7664
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7664)))
                                                       (g7662
                                                        (letrec ((x7665
                                                                  (list? l)))
                                                          (assert x7665)))
                                                       (g7663
                                                        (letrec ((x-cnd7666
                                                                  (null? l)))
                                                          (if x-cnd7666
                                                            #t
                                                            (letrec ((x-cnd7667
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7667
                                                                (letrec ((g7668
                                                                          (letrec ((x7670
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7670)))
                                                                         (g7669
                                                                          (letrec ((x7671
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7671))))
                                                                  g7669)
                                                                '()))))))
                                                g7663)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7672
                                                        (letrec ((x7674
                                                                  (number? x)))
                                                          (assert x7674)))
                                                       (g7673
                                                        (letrec ((x-cnd7675
                                                                  (< x 0)))
                                                          (if x-cnd7675
                                                            (- 0 x)
                                                            x))))
                                                g7673)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7676
                                                        (letrec ((x7679
                                                                  (char? c1)))
                                                          (assert x7679)))
                                                       (g7677
                                                        (letrec ((x7680
                                                                  (char? c2)))
                                                          (assert x7680)))
                                                       (g7678
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7681
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7681))))
                                                g7678)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7682
                                                        (letrec ((x7683
                                                                  (letrec ((x7684
                                                                            (letrec ((x7685
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7685))))
                                                                    (cdr
                                                                     x7684))))
                                                          (car x7683))))
                                                g7682)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7686 #f)) g7686)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7687
                                                        (letrec ((x7689
                                                                  (letrec ((x7690
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7690)))
                                                                 (x7688
                                                                  (gcd m n)))
                                                          (/ x7689 x7688))))
                                                g7687)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7691
                                                        (letrec ((x7693
                                                                  (number? x)))
                                                          (assert x7693)))
                                                       (g7692
                                                        (letrec ((x7694
                                                                  (<= x y)))
                                                          (not x7694))))
                                                g7692)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7695
                                                        (letrec ((x7699
                                                                  (list? l)))
                                                          (assert x7699)))
                                                       (g7696
                                                        (letrec ((x7700
                                                                  (number?
                                                                   index)))
                                                          (assert x7700)))
                                                       (g7697
                                                        (letrec ((x7701
                                                                  (letrec ((x7702
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7702))))
                                                          (assert x7701)))
                                                       (g7698
                                                        (letrec ((x-cnd7703
                                                                  (= index 0)))
                                                          (if x-cnd7703
                                                            (car l)
                                                            (letrec ((x7705
                                                                      (cdr l))
                                                                     (x7704
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7705
                                                               x7704))))))
                                                g7698)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7706
                                                        (letrec ((x-cnd7707
                                                                  (= b 0)))
                                                          (if x-cnd7707
                                                            a
                                                            (letrec ((x7708
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7708))))))
                                                g7706)))
                                           (image
                                            (lambda ()
                                              (letrec ((g7709
                                                        (cons 'image '())))
                                                g7709)))
                                           (image?
                                            (lambda (image7196)
                                              (letrec ((g7710
                                                        (letrec ((x7711
                                                                  (car
                                                                   image7196)))
                                                          (eq? x7711 'image))))
                                                g7710)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g7712 (image)))
                                                g7712)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g7713 (image)))
                                                g7713)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g7714 (image)))
                                                g7714)))
                                           (min
                                            (lambda (x y)
                                              (letrec ((g7715
                                                        (letrec ((x-cnd7716
                                                                  (<= x y)))
                                                          (if x-cnd7716 x y))))
                                                g7715)))
                                           (max
                                            (lambda (x y)
                                              (letrec ((g7717
                                                        (letrec ((x-cnd7718
                                                                  (>= x y)))
                                                          (if x-cnd7718 x y))))
                                                g7717)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7719
                                                        (letrec ((x-cnd7720
                                                                  (>= x 0)))
                                                          (if x-cnd7720
                                                            x
                                                            (- 0 x)))))
                                                g7719)))
                                           (sqr
                                            (lambda (x)
                                              (letrec ((g7721 (* x x)))
                                                g7721)))
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
                                              (letrec ((g7722
                                                        (lambda (g6973)
                                                          (letrec ((g7723
                                                                    (letrec ((x6977
                                                                              ((lambda (g6981
                                                                                        g6982
                                                                                        g6983)
                                                                                 (letrec ((g7724
                                                                                           (letrec ((x-cnd7725
                                                                                                     ((lambda (v6980)
                                                                                                        (letrec ((g7726
                                                                                                                  (letrec ((x-cnd7727
                                                                                                                            (eq?
                                                                                                                             'x
                                                                                                                             v6980)))
                                                                                                                    (if x-cnd7727
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd7728
                                                                                                                                (eq?
                                                                                                                                 'y
                                                                                                                                 v6980)))
                                                                                                                        (if x-cnd7728
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd7729
                                                                                                                                    (eq?
                                                                                                                                     'posn
                                                                                                                                     v6980)))
                                                                                                                            (if x-cnd7729
                                                                                                                              #t
                                                                                                                              (letrec ((x-cnd7730
                                                                                                                                        (eq?
                                                                                                                                         'move-toward/speed
                                                                                                                                         v6980)))
                                                                                                                                (if x-cnd7730
                                                                                                                                  #t
                                                                                                                                  (letrec ((x-cnd7731
                                                                                                                                            (eq?
                                                                                                                                             'draw-on/image
                                                                                                                                             v6980)))
                                                                                                                                    (if x-cnd7731
                                                                                                                                      #t
                                                                                                                                      (eq?
                                                                                                                                       'dist
                                                                                                                                       v6980)))))))))))))
                                                                                                          g7726))
                                                                                                      g6983)))
                                                                                             (if x-cnd7725
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
                                                                                   g7724))
                                                                               j6974
                                                                               k6975
                                                                               g6973)))
                                                                      (letrec ((g7732
                                                                                (letrec ((x7734
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g7735
                                                                                                       (if cnd
                                                                                                         (letrec ((g7736
                                                                                                                   (lambda (j6984
                                                                                                                            k6985
                                                                                                                            f6986)
                                                                                                                     (letrec ((g7737
                                                                                                                               (lambda ()
                                                                                                                                 (letrec ((g7738
                                                                                                                                           (letrec ((x7739
                                                                                                                                                     (f6986)))
                                                                                                                                             (real?
                                                                                                                                              j6984
                                                                                                                                              k6985
                                                                                                                                              x7739))))
                                                                                                                                   g7738))))
                                                                                                                       g7737))))
                                                                                                           g7736)
                                                                                                         (if cnd
                                                                                                           (letrec ((g7740
                                                                                                                     (lambda (j6987
                                                                                                                              k6988
                                                                                                                              f6989)
                                                                                                                       (letrec ((g7741
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g7742
                                                                                                                                             (letrec ((x7743
                                                                                                                                                       (f6989)))
                                                                                                                                               (real?
                                                                                                                                                j6987
                                                                                                                                                k6988
                                                                                                                                                x7743))))
                                                                                                                                     g7742))))
                                                                                                                         g7741))))
                                                                                                             g7740)
                                                                                                           (if cnd
                                                                                                             (letrec ((g7744
                                                                                                                       (lambda (j6990
                                                                                                                                k6991
                                                                                                                                f6992)
                                                                                                                         (letrec ((g7745
                                                                                                                                   (lambda ()
                                                                                                                                     (letrec ((g7746
                                                                                                                                               (letrec ((x7747
                                                                                                                                                         (f6992)))
                                                                                                                                                 (posn/c
                                                                                                                                                  j6990
                                                                                                                                                  k6991
                                                                                                                                                  x7747))))
                                                                                                                                       g7746))))
                                                                                                                           g7745))))
                                                                                                               g7744)
                                                                                                             (if cnd
                                                                                                               (letrec ((g7748
                                                                                                                         (lambda (j6995
                                                                                                                                  k6996
                                                                                                                                  f6997)
                                                                                                                           (letrec ((g7749
                                                                                                                                     (lambda (g6993
                                                                                                                                              g6994)
                                                                                                                                       (letrec ((g7750
                                                                                                                                                 (letrec ((x7751
                                                                                                                                                           (letrec ((x7753
                                                                                                                                                                     (posn/c
                                                                                                                                                                      j6995
                                                                                                                                                                      k6996
                                                                                                                                                                      g6993))
                                                                                                                                                                    (x7752
                                                                                                                                                                     (real?
                                                                                                                                                                      j6995
                                                                                                                                                                      k6996
                                                                                                                                                                      g6994)))
                                                                                                                                                             (f6997
                                                                                                                                                              x7753
                                                                                                                                                              x7752))))
                                                                                                                                                   (posn/c
                                                                                                                                                    j6995
                                                                                                                                                    k6996
                                                                                                                                                    x7751))))
                                                                                                                                         g7750))))
                                                                                                                             g7749))))
                                                                                                                 g7748)
                                                                                                               (if cnd
                                                                                                                 (letrec ((g7754
                                                                                                                           (lambda (j7000
                                                                                                                                    k7001
                                                                                                                                    f7002)
                                                                                                                             (letrec ((g7755
                                                                                                                                       (lambda (g6998
                                                                                                                                                g6999)
                                                                                                                                         (letrec ((g7756
                                                                                                                                                   (letrec ((x7757
                                                                                                                                                             (letrec ((x7759
                                                                                                                                                                       (image?
                                                                                                                                                                        j7000
                                                                                                                                                                        k7001
                                                                                                                                                                        g6998))
                                                                                                                                                                      (x7758
                                                                                                                                                                       (image?
                                                                                                                                                                        j7000
                                                                                                                                                                        k7001
                                                                                                                                                                        g6999)))
                                                                                                                                                               (f7002
                                                                                                                                                                x7759
                                                                                                                                                                x7758))))
                                                                                                                                                     (image?
                                                                                                                                                      j7000
                                                                                                                                                      k7001
                                                                                                                                                      x7757))))
                                                                                                                                           g7756))))
                                                                                                                               g7755))))
                                                                                                                   g7754)
                                                                                                                 (if cnd
                                                                                                                   (letrec ((g7760
                                                                                                                             (lambda (j7004
                                                                                                                                      k7005
                                                                                                                                      f7006)
                                                                                                                               (letrec ((g7761
                                                                                                                                         (lambda (g7003)
                                                                                                                                           (letrec ((g7762
                                                                                                                                                     (letrec ((x7763
                                                                                                                                                               (letrec ((x7764
                                                                                                                                                                         (posn/c
                                                                                                                                                                          j7004
                                                                                                                                                                          k7005
                                                                                                                                                                          g7003)))
                                                                                                                                                                 (f7006
                                                                                                                                                                  x7764))))
                                                                                                                                                       (real?
                                                                                                                                                        j7004
                                                                                                                                                        k7005
                                                                                                                                                        x7763))))
                                                                                                                                             g7762))))
                                                                                                                                 g7761))))
                                                                                                                     g7760)
                                                                                                                   (letrec ((g7765
                                                                                                                             "error"))
                                                                                                                     g7765)))))))))
                                                                                               g7735))
                                                                                           x6977))
                                                                                         (x7733
                                                                                          (f6976
                                                                                           x6977)))
                                                                                  (x7734
                                                                                   j6974
                                                                                   k6975
                                                                                   x7733))))
                                                                        g7732))))
                                                            g7723))))
                                                g7722)))
                                           (player/c
                                            (lambda (j7008 k7009 f7010)
                                              (letrec ((g7766
                                                        (lambda (g7007)
                                                          (letrec ((g7767
                                                                    (letrec ((x7011
                                                                              ((lambda (g7015
                                                                                        g7016
                                                                                        g7017)
                                                                                 (letrec ((g7768
                                                                                           (letrec ((x-cnd7769
                                                                                                     ((lambda (v7014)
                                                                                                        (letrec ((g7770
                                                                                                                  (letrec ((x-cnd7771
                                                                                                                            (eq?
                                                                                                                             'posn
                                                                                                                             v7014)))
                                                                                                                    (if x-cnd7771
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd7772
                                                                                                                                (eq?
                                                                                                                                 'move-toward
                                                                                                                                 v7014)))
                                                                                                                        (if x-cnd7772
                                                                                                                          #t
                                                                                                                          (eq?
                                                                                                                           'draw-on
                                                                                                                           v7014)))))))
                                                                                                          g7770))
                                                                                                      g7017)))
                                                                                             (if x-cnd7769
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
                                                                                   g7768))
                                                                               j7008
                                                                               k7009
                                                                               g7007)))
                                                                      (letrec ((g7773
                                                                                (letrec ((x7775
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g7776
                                                                                                       (if cnd
                                                                                                         (letrec ((g7777
                                                                                                                   (lambda (j7018
                                                                                                                            k7019
                                                                                                                            f7020)
                                                                                                                     (letrec ((g7778
                                                                                                                               (lambda ()
                                                                                                                                 (letrec ((g7779
                                                                                                                                           (letrec ((x7780
                                                                                                                                                     (f7020)))
                                                                                                                                             (posn/c
                                                                                                                                              j7018
                                                                                                                                              k7019
                                                                                                                                              x7780))))
                                                                                                                                   g7779))))
                                                                                                                       g7778))))
                                                                                                           g7777)
                                                                                                         (if cnd
                                                                                                           (letrec ((g7781
                                                                                                                     (lambda (j7022
                                                                                                                              k7023
                                                                                                                              f7024)
                                                                                                                       (letrec ((g7782
                                                                                                                                 (lambda (g7021)
                                                                                                                                   (letrec ((g7783
                                                                                                                                             (letrec ((x7784
                                                                                                                                                       (letrec ((x7785
                                                                                                                                                                 (posn/c
                                                                                                                                                                  j7022
                                                                                                                                                                  k7023
                                                                                                                                                                  g7021)))
                                                                                                                                                         (f7024
                                                                                                                                                          x7785))))
                                                                                                                                               (player/c
                                                                                                                                                j7022
                                                                                                                                                k7023
                                                                                                                                                x7784))))
                                                                                                                                     g7783))))
                                                                                                                         g7782))))
                                                                                                             g7781)
                                                                                                           (if cnd
                                                                                                             (letrec ((g7786
                                                                                                                       (lambda (j7026
                                                                                                                                k7027
                                                                                                                                f7028)
                                                                                                                         (letrec ((g7787
                                                                                                                                   (lambda (g7025)
                                                                                                                                     (letrec ((g7788
                                                                                                                                               (letrec ((x7789
                                                                                                                                                         (letrec ((x7790
                                                                                                                                                                   (image?
                                                                                                                                                                    j7026
                                                                                                                                                                    k7027
                                                                                                                                                                    g7025)))
                                                                                                                                                           (f7028
                                                                                                                                                            x7790))))
                                                                                                                                                 (image?
                                                                                                                                                  j7026
                                                                                                                                                  k7027
                                                                                                                                                  x7789))))
                                                                                                                                       g7788))))
                                                                                                                           g7787))))
                                                                                                               g7786)
                                                                                                             (letrec ((g7791
                                                                                                                       "error"))
                                                                                                               g7791))))))
                                                                                               g7776))
                                                                                           x7011))
                                                                                         (x7774
                                                                                          (f7010
                                                                                           x7011)))
                                                                                  (x7775
                                                                                   j7008
                                                                                   k7009
                                                                                   x7774))))
                                                                        g7773))))
                                                            g7767))))
                                                g7766)))
                                           (zombie/c
                                            (lambda (j7030 k7031 f7032)
                                              (letrec ((g7792
                                                        (lambda (g7029)
                                                          (letrec ((g7793
                                                                    (letrec ((x7033
                                                                              ((lambda (g7037
                                                                                        g7038
                                                                                        g7039)
                                                                                 (letrec ((g7794
                                                                                           (letrec ((x-cnd7795
                                                                                                     ((lambda (v7036)
                                                                                                        (letrec ((g7796
                                                                                                                  (letrec ((x-cnd7797
                                                                                                                            (eq?
                                                                                                                             'posn
                                                                                                                             v7036)))
                                                                                                                    (if x-cnd7797
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd7798
                                                                                                                                (eq?
                                                                                                                                 'draw-on/color
                                                                                                                                 v7036)))
                                                                                                                        (if x-cnd7798
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd7799
                                                                                                                                    (eq?
                                                                                                                                     'touching?
                                                                                                                                     v7036)))
                                                                                                                            (if x-cnd7799
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'move-toward
                                                                                                                               v7036)))))))))
                                                                                                          g7796))
                                                                                                      g7039)))
                                                                                             (if x-cnd7795
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
                                                                                   g7794))
                                                                               j7030
                                                                               k7031
                                                                               g7029)))
                                                                      (letrec ((g7800
                                                                                (letrec ((x7802
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g7803
                                                                                                       (if cnd
                                                                                                         (letrec ((g7804
                                                                                                                   (lambda (j7040
                                                                                                                            k7041
                                                                                                                            f7042)
                                                                                                                     (letrec ((g7805
                                                                                                                               (lambda ()
                                                                                                                                 (letrec ((g7806
                                                                                                                                           (letrec ((x7807
                                                                                                                                                     (f7042)))
                                                                                                                                             (posn/c
                                                                                                                                              j7040
                                                                                                                                              k7041
                                                                                                                                              x7807))))
                                                                                                                                   g7806))))
                                                                                                                       g7805))))
                                                                                                           g7804)
                                                                                                         (if cnd
                                                                                                           (letrec ((g7808
                                                                                                                     (lambda (j7045
                                                                                                                              k7046
                                                                                                                              f7047)
                                                                                                                       (letrec ((g7809
                                                                                                                                 (lambda (g7043
                                                                                                                                          g7044)
                                                                                                                                   (letrec ((g7810
                                                                                                                                             (letrec ((x7811
                                                                                                                                                       (letrec ((x7813
                                                                                                                                                                 (string?
                                                                                                                                                                  j7045
                                                                                                                                                                  k7046
                                                                                                                                                                  g7043))
                                                                                                                                                                (x7812
                                                                                                                                                                 (image?
                                                                                                                                                                  j7045
                                                                                                                                                                  k7046
                                                                                                                                                                  g7044)))
                                                                                                                                                         (f7047
                                                                                                                                                          x7813
                                                                                                                                                          x7812))))
                                                                                                                                               (image?
                                                                                                                                                j7045
                                                                                                                                                k7046
                                                                                                                                                x7811))))
                                                                                                                                     g7810))))
                                                                                                                         g7809))))
                                                                                                             g7808)
                                                                                                           (if cnd
                                                                                                             (letrec ((g7814
                                                                                                                       (lambda (j7049
                                                                                                                                k7050
                                                                                                                                f7051)
                                                                                                                         (letrec ((g7815
                                                                                                                                   (lambda (g7048)
                                                                                                                                     (letrec ((g7816
                                                                                                                                               (letrec ((x7817
                                                                                                                                                         (letrec ((x7818
                                                                                                                                                                   (posn/c
                                                                                                                                                                    j7049
                                                                                                                                                                    k7050
                                                                                                                                                                    g7048)))
                                                                                                                                                           (f7051
                                                                                                                                                            x7818))))
                                                                                                                                                 (boolean?
                                                                                                                                                  j7049
                                                                                                                                                  k7050
                                                                                                                                                  x7817))))
                                                                                                                                       g7816))))
                                                                                                                           g7815))))
                                                                                                               g7814)
                                                                                                             (if cnd
                                                                                                               (letrec ((g7819
                                                                                                                         (lambda (j7053
                                                                                                                                  k7054
                                                                                                                                  f7055)
                                                                                                                           (letrec ((g7820
                                                                                                                                     (lambda (g7052)
                                                                                                                                       (letrec ((g7821
                                                                                                                                                 (letrec ((x7822
                                                                                                                                                           (letrec ((x7823
                                                                                                                                                                     (posn/c
                                                                                                                                                                      j7053
                                                                                                                                                                      k7054
                                                                                                                                                                      g7052)))
                                                                                                                                                             (f7055
                                                                                                                                                              x7823))))
                                                                                                                                                   (zombie/c
                                                                                                                                                    j7053
                                                                                                                                                    k7054
                                                                                                                                                    x7822))))
                                                                                                                                         g7821))))
                                                                                                                             g7820))))
                                                                                                                 g7819)
                                                                                                               (letrec ((g7824
                                                                                                                         "error"))
                                                                                                                 g7824)))))))
                                                                                               g7803))
                                                                                           x7033))
                                                                                         (x7801
                                                                                          (f7032
                                                                                           x7033)))
                                                                                  (x7802
                                                                                   j7030
                                                                                   k7031
                                                                                   x7801))))
                                                                        g7800))))
                                                            g7793))))
                                                g7792)))
                                           (horde/c
                                            (lambda (j7057 k7058 f7059)
                                              (letrec ((g7825
                                                        (lambda (g7056)
                                                          (letrec ((g7826
                                                                    (letrec ((x7060
                                                                              ((lambda (g7064
                                                                                        g7065
                                                                                        g7066)
                                                                                 (letrec ((g7827
                                                                                           (letrec ((x-cnd7828
                                                                                                     ((lambda (v7063)
                                                                                                        (letrec ((g7829
                                                                                                                  (letrec ((x-cnd7830
                                                                                                                            (eq?
                                                                                                                             'dead
                                                                                                                             v7063)))
                                                                                                                    (if x-cnd7830
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd7831
                                                                                                                                (eq?
                                                                                                                                 'undead
                                                                                                                                 v7063)))
                                                                                                                        (if x-cnd7831
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd7832
                                                                                                                                    (eq?
                                                                                                                                     'draw-on
                                                                                                                                     v7063)))
                                                                                                                            (if x-cnd7832
                                                                                                                              #t
                                                                                                                              (letrec ((x-cnd7833
                                                                                                                                        (eq?
                                                                                                                                         'touching?
                                                                                                                                         v7063)))
                                                                                                                                (if x-cnd7833
                                                                                                                                  #t
                                                                                                                                  (letrec ((x-cnd7834
                                                                                                                                            (eq?
                                                                                                                                             'move-toward
                                                                                                                                             v7063)))
                                                                                                                                    (if x-cnd7834
                                                                                                                                      #t
                                                                                                                                      (eq?
                                                                                                                                       'eat-brains
                                                                                                                                       v7063)))))))))))))
                                                                                                          g7829))
                                                                                                      g7066)))
                                                                                             (if x-cnd7828
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
                                                                                   g7827))
                                                                               j7057
                                                                               k7058
                                                                               g7056)))
                                                                      (letrec ((g7835
                                                                                (letrec ((x7837
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g7838
                                                                                                       (if cnd
                                                                                                         (letrec ((g7839
                                                                                                                   (lambda (j7067
                                                                                                                            k7068
                                                                                                                            f7069)
                                                                                                                     (letrec ((g7840
                                                                                                                               (lambda ()
                                                                                                                                 (letrec ((g7841
                                                                                                                                           (letrec ((x7842
                                                                                                                                                     (f7069)))
                                                                                                                                             (zombies/c
                                                                                                                                              j7067
                                                                                                                                              k7068
                                                                                                                                              x7842))))
                                                                                                                                   g7841))))
                                                                                                                       g7840))))
                                                                                                           g7839)
                                                                                                         (if cnd
                                                                                                           (letrec ((g7843
                                                                                                                     (lambda (j7070
                                                                                                                              k7071
                                                                                                                              f7072)
                                                                                                                       (letrec ((g7844
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g7845
                                                                                                                                             (letrec ((x7846
                                                                                                                                                       (f7072)))
                                                                                                                                               (zombies/c
                                                                                                                                                j7070
                                                                                                                                                k7071
                                                                                                                                                x7846))))
                                                                                                                                     g7845))))
                                                                                                                         g7844))))
                                                                                                             g7843)
                                                                                                           (if cnd
                                                                                                             (letrec ((g7847
                                                                                                                       (lambda (j7074
                                                                                                                                k7075
                                                                                                                                f7076)
                                                                                                                         (letrec ((g7848
                                                                                                                                   (lambda (g7073)
                                                                                                                                     (letrec ((g7849
                                                                                                                                               (letrec ((x7850
                                                                                                                                                         (letrec ((x7851
                                                                                                                                                                   (image?
                                                                                                                                                                    j7074
                                                                                                                                                                    k7075
                                                                                                                                                                    g7073)))
                                                                                                                                                           (f7076
                                                                                                                                                            x7851))))
                                                                                                                                                 (image?
                                                                                                                                                  j7074
                                                                                                                                                  k7075
                                                                                                                                                  x7850))))
                                                                                                                                       g7849))))
                                                                                                                           g7848))))
                                                                                                               g7847)
                                                                                                             (if cnd
                                                                                                               (letrec ((g7852
                                                                                                                         (lambda (j7078
                                                                                                                                  k7079
                                                                                                                                  f7080)
                                                                                                                           (letrec ((g7853
                                                                                                                                     (lambda (g7077)
                                                                                                                                       (letrec ((g7854
                                                                                                                                                 (letrec ((x7855
                                                                                                                                                           (letrec ((x7856
                                                                                                                                                                     (posn/c
                                                                                                                                                                      j7078
                                                                                                                                                                      k7079
                                                                                                                                                                      g7077)))
                                                                                                                                                             (f7080
                                                                                                                                                              x7856))))
                                                                                                                                                   (boolean?
                                                                                                                                                    j7078
                                                                                                                                                    k7079
                                                                                                                                                    x7855))))
                                                                                                                                         g7854))))
                                                                                                                             g7853))))
                                                                                                                 g7852)
                                                                                                               (if cnd
                                                                                                                 (letrec ((g7857
                                                                                                                           (lambda (j7082
                                                                                                                                    k7083
                                                                                                                                    f7084)
                                                                                                                             (letrec ((g7858
                                                                                                                                       (lambda (g7081)
                                                                                                                                         (letrec ((g7859
                                                                                                                                                   (letrec ((x7860
                                                                                                                                                             (letrec ((x7861
                                                                                                                                                                       (posn/c
                                                                                                                                                                        j7082
                                                                                                                                                                        k7083
                                                                                                                                                                        g7081)))
                                                                                                                                                               (f7084
                                                                                                                                                                x7861))))
                                                                                                                                                     (horde/c
                                                                                                                                                      j7082
                                                                                                                                                      k7083
                                                                                                                                                      x7860))))
                                                                                                                                           g7859))))
                                                                                                                               g7858))))
                                                                                                                   g7857)
                                                                                                                 (if cnd
                                                                                                                   (letrec ((g7862
                                                                                                                             (lambda (j7085
                                                                                                                                      k7086
                                                                                                                                      f7087)
                                                                                                                               (letrec ((g7863
                                                                                                                                         (lambda ()
                                                                                                                                           (letrec ((g7864
                                                                                                                                                     (letrec ((x7865
                                                                                                                                                               (f7087)))
                                                                                                                                                       (horde/c
                                                                                                                                                        j7085
                                                                                                                                                        k7086
                                                                                                                                                        x7865))))
                                                                                                                                             g7864))))
                                                                                                                                 g7863))))
                                                                                                                     g7862)
                                                                                                                   (letrec ((g7866
                                                                                                                             "error"))
                                                                                                                     g7866)))))))))
                                                                                               g7838))
                                                                                           x7060))
                                                                                         (x7836
                                                                                          (f7059
                                                                                           x7060)))
                                                                                  (x7837
                                                                                   j7057
                                                                                   k7058
                                                                                   x7836))))
                                                                        g7835))))
                                                            g7826))))
                                                g7825)))
                                           (zombies/c
                                            (lambda (j7089 k7090 f7091)
                                              (letrec ((g7867
                                                        (lambda (g7088)
                                                          (letrec ((g7868
                                                                    (letrec ((x7092
                                                                              ((lambda (g7096
                                                                                        g7097
                                                                                        g7098)
                                                                                 (letrec ((g7869
                                                                                           (letrec ((x-cnd7870
                                                                                                     ((lambda (v7095)
                                                                                                        (letrec ((g7871
                                                                                                                  (letrec ((x-cnd7872
                                                                                                                            (eq?
                                                                                                                             'move-toward
                                                                                                                             v7095)))
                                                                                                                    (if x-cnd7872
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd7873
                                                                                                                                (eq?
                                                                                                                                 'draw-on/color
                                                                                                                                 v7095)))
                                                                                                                        (if x-cnd7873
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd7874
                                                                                                                                    (eq?
                                                                                                                                     'touching?
                                                                                                                                     v7095)))
                                                                                                                            (if x-cnd7874
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'kill-all
                                                                                                                               v7095)))))))))
                                                                                                          g7871))
                                                                                                      g7098)))
                                                                                             (if x-cnd7870
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
                                                                                   g7869))
                                                                               j7089
                                                                               k7090
                                                                               g7088)))
                                                                      (letrec ((g7875
                                                                                (letrec ((x7877
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g7878
                                                                                                       (if cnd
                                                                                                         (letrec ((g7879
                                                                                                                   (lambda (j7100
                                                                                                                            k7101
                                                                                                                            f7102)
                                                                                                                     (letrec ((g7880
                                                                                                                               (lambda (g7099)
                                                                                                                                 (letrec ((g7881
                                                                                                                                           (letrec ((x7882
                                                                                                                                                     (letrec ((x7883
                                                                                                                                                               (posn/c
                                                                                                                                                                j7100
                                                                                                                                                                k7101
                                                                                                                                                                g7099)))
                                                                                                                                                       (f7102
                                                                                                                                                        x7883))))
                                                                                                                                             (zombies/c
                                                                                                                                              j7100
                                                                                                                                              k7101
                                                                                                                                              x7882))))
                                                                                                                                   g7881))))
                                                                                                                       g7880))))
                                                                                                           g7879)
                                                                                                         (if cnd
                                                                                                           (letrec ((g7884
                                                                                                                     (lambda (j7105
                                                                                                                              k7106
                                                                                                                              f7107)
                                                                                                                       (letrec ((g7885
                                                                                                                                 (lambda (g7103
                                                                                                                                          g7104)
                                                                                                                                   (letrec ((g7886
                                                                                                                                             (letrec ((x7887
                                                                                                                                                       (letrec ((x7889
                                                                                                                                                                 (string?
                                                                                                                                                                  j7105
                                                                                                                                                                  k7106
                                                                                                                                                                  g7103))
                                                                                                                                                                (x7888
                                                                                                                                                                 (image?
                                                                                                                                                                  j7105
                                                                                                                                                                  k7106
                                                                                                                                                                  g7104)))
                                                                                                                                                         (f7107
                                                                                                                                                          x7889
                                                                                                                                                          x7888))))
                                                                                                                                               (image?
                                                                                                                                                j7105
                                                                                                                                                k7106
                                                                                                                                                x7887))))
                                                                                                                                     g7886))))
                                                                                                                         g7885))))
                                                                                                             g7884)
                                                                                                           (if cnd
                                                                                                             (letrec ((g7890
                                                                                                                       (lambda (j7109
                                                                                                                                k7110
                                                                                                                                f7111)
                                                                                                                         (letrec ((g7891
                                                                                                                                   (lambda (g7108)
                                                                                                                                     (letrec ((g7892
                                                                                                                                               (letrec ((x7893
                                                                                                                                                         (letrec ((x7894
                                                                                                                                                                   (posn/c
                                                                                                                                                                    j7109
                                                                                                                                                                    k7110
                                                                                                                                                                    g7108)))
                                                                                                                                                           (f7111
                                                                                                                                                            x7894))))
                                                                                                                                                 (boolean?
                                                                                                                                                  j7109
                                                                                                                                                  k7110
                                                                                                                                                  x7893))))
                                                                                                                                       g7892))))
                                                                                                                           g7891))))
                                                                                                               g7890)
                                                                                                             (if cnd
                                                                                                               (letrec ((g7895
                                                                                                                         (lambda (j7113
                                                                                                                                  k7114
                                                                                                                                  f7115)
                                                                                                                           (letrec ((g7896
                                                                                                                                     (lambda (g7112)
                                                                                                                                       (letrec ((g7897
                                                                                                                                                 (letrec ((x7898
                                                                                                                                                           (letrec ((x7899
                                                                                                                                                                     (zombies/c
                                                                                                                                                                      j7113
                                                                                                                                                                      k7114
                                                                                                                                                                      g7112)))
                                                                                                                                                             (f7115
                                                                                                                                                              x7899))))
                                                                                                                                                   (horde/c
                                                                                                                                                    j7113
                                                                                                                                                    k7114
                                                                                                                                                    x7898))))
                                                                                                                                         g7897))))
                                                                                                                             g7896))))
                                                                                                                 g7895)
                                                                                                               (letrec ((g7900
                                                                                                                         "error"))
                                                                                                                 g7900)))))))
                                                                                               g7878))
                                                                                           x7092))
                                                                                         (x7876
                                                                                          (f7091
                                                                                           x7092)))
                                                                                  (x7877
                                                                                   j7089
                                                                                   k7090
                                                                                   x7876))))
                                                                        g7875))))
                                                            g7868))))
                                                g7867)))
                                           (world/c
                                            (lambda (j7117 k7118 f7119)
                                              (letrec ((g7901
                                                        (lambda (g7116)
                                                          (letrec ((g7902
                                                                    (letrec ((x7120
                                                                              ((lambda (g7124
                                                                                        g7125
                                                                                        g7126)
                                                                                 (letrec ((g7903
                                                                                           (letrec ((x-cnd7904
                                                                                                     ((lambda (v7123)
                                                                                                        (letrec ((g7905
                                                                                                                  (letrec ((x-cnd7906
                                                                                                                            (eq?
                                                                                                                             'on-mouse
                                                                                                                             v7123)))
                                                                                                                    (if x-cnd7906
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd7907
                                                                                                                                (eq?
                                                                                                                                 'on-tick
                                                                                                                                 v7123)))
                                                                                                                        (if x-cnd7907
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd7908
                                                                                                                                    (eq?
                                                                                                                                     'to-draw
                                                                                                                                     v7123)))
                                                                                                                            (if x-cnd7908
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'stop-when
                                                                                                                               v7123)))))))))
                                                                                                          g7905))
                                                                                                      g7126)))
                                                                                             (if x-cnd7904
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
                                                                                   g7903))
                                                                               j7117
                                                                               k7118
                                                                               g7116)))
                                                                      (letrec ((g7909
                                                                                (letrec ((x7911
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g7912
                                                                                                       (if cnd
                                                                                                         (letrec ((g7913
                                                                                                                   (lambda (j7130
                                                                                                                            k7131
                                                                                                                            f7132)
                                                                                                                     (letrec ((g7914
                                                                                                                               (lambda (g7127
                                                                                                                                        g7128
                                                                                                                                        g7129)
                                                                                                                                 (letrec ((g7915
                                                                                                                                           (letrec ((x7916
                                                                                                                                                     (letrec ((x7919
                                                                                                                                                               (real?
                                                                                                                                                                j7130
                                                                                                                                                                k7131
                                                                                                                                                                g7127))
                                                                                                                                                              (x7918
                                                                                                                                                               (real?
                                                                                                                                                                j7130
                                                                                                                                                                k7131
                                                                                                                                                                g7128))
                                                                                                                                                              (x7917
                                                                                                                                                               (string?
                                                                                                                                                                j7130
                                                                                                                                                                k7131
                                                                                                                                                                g7129)))
                                                                                                                                                       (f7132
                                                                                                                                                        x7919
                                                                                                                                                        x7918
                                                                                                                                                        x7917))))
                                                                                                                                             (world/c
                                                                                                                                              j7130
                                                                                                                                              k7131
                                                                                                                                              x7916))))
                                                                                                                                   g7915))))
                                                                                                                       g7914))))
                                                                                                           g7913)
                                                                                                         (if cnd
                                                                                                           (letrec ((g7920
                                                                                                                     (lambda (j7133
                                                                                                                              k7134
                                                                                                                              f7135)
                                                                                                                       (letrec ((g7921
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g7922
                                                                                                                                             (letrec ((x7923
                                                                                                                                                       (f7135)))
                                                                                                                                               (world/c
                                                                                                                                                j7133
                                                                                                                                                k7134
                                                                                                                                                x7923))))
                                                                                                                                     g7922))))
                                                                                                                         g7921))))
                                                                                                             g7920)
                                                                                                           (if cnd
                                                                                                             (letrec ((g7924
                                                                                                                       (lambda (j7136
                                                                                                                                k7137
                                                                                                                                f7138)
                                                                                                                         (letrec ((g7925
                                                                                                                                   (lambda ()
                                                                                                                                     (letrec ((g7926
                                                                                                                                               (letrec ((x7927
                                                                                                                                                         (f7138)))
                                                                                                                                                 (image?
                                                                                                                                                  j7136
                                                                                                                                                  k7137
                                                                                                                                                  x7927))))
                                                                                                                                       g7926))))
                                                                                                                           g7925))))
                                                                                                               g7924)
                                                                                                             (if cnd
                                                                                                               (letrec ((g7928
                                                                                                                         (lambda (j7139
                                                                                                                                  k7140
                                                                                                                                  f7141)
                                                                                                                           (letrec ((g7929
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g7930
                                                                                                                                                 (letrec ((x7931
                                                                                                                                                           (f7141)))
                                                                                                                                                   (boolean?
                                                                                                                                                    j7139
                                                                                                                                                    k7140
                                                                                                                                                    x7931))))
                                                                                                                                         g7930))))
                                                                                                                             g7929))))
                                                                                                                 g7928)
                                                                                                               (letrec ((g7932
                                                                                                                         "error"))
                                                                                                                 g7932)))))))
                                                                                               g7912))
                                                                                           x7120))
                                                                                         (x7910
                                                                                          (f7119
                                                                                           x7120)))
                                                                                  (x7911
                                                                                   j7117
                                                                                   k7118
                                                                                   x7910))))
                                                                        g7909))))
                                                            g7902))))
                                                g7901)))
                                           (new-world
                                            (lambda (player mouse zombies)
                                              (letrec ((g7933
                                                        (letrec ((x7962 (msg))
                                                                 (x7934
                                                                  (if cnd
                                                                    (letrec ((g7935
                                                                              (letrec ((x7940
                                                                                        (x
                                                                                         y
                                                                                         me))
                                                                                       (x7936
                                                                                        (letrec ((x7937
                                                                                                  (letrec ((x-cnd7938
                                                                                                            (equal?
                                                                                                             me
                                                                                                             "leave")))
                                                                                                    (if x-cnd7938
                                                                                                      (letrec ((x7939
                                                                                                                (player
                                                                                                                 'posn)))
                                                                                                        (x7939))
                                                                                                      (new-posn
                                                                                                       x
                                                                                                       y)))))
                                                                                          (new-world
                                                                                           player
                                                                                           x7937
                                                                                           zombies))))
                                                                                (λ x7940
                                                                                  x7936))))
                                                                      g7935)
                                                                    (if cnd
                                                                      (letrec ((g7941
                                                                                (letrec ((x7942
                                                                                          (letrec ((x7949
                                                                                                    (letrec ((x7950
                                                                                                              (player
                                                                                                               'move-toward)))
                                                                                                      (x7950
                                                                                                       mouse)))
                                                                                                   (x7943
                                                                                                    (letrec ((x7946
                                                                                                              (letrec ((x7947
                                                                                                                        (letrec ((x7948
                                                                                                                                  (zombies
                                                                                                                                   'eat-brains)))
                                                                                                                          (x7948))))
                                                                                                                (x7947
                                                                                                                 'move-toward)))
                                                                                                             (x7944
                                                                                                              (letrec ((x7945
                                                                                                                        (player
                                                                                                                         'posn)))
                                                                                                                (x7945))))
                                                                                                      (x7946
                                                                                                       x7944))))
                                                                                            (new-world
                                                                                             x7949
                                                                                             mouse
                                                                                             x7943))))
                                                                                  (λ ()
                                                                                    x7942))))
                                                                        g7941)
                                                                      (if cnd
                                                                        (letrec ((g7951
                                                                                  (letrec ((x7952
                                                                                            (letrec ((x7955
                                                                                                      (player
                                                                                                       'draw-on))
                                                                                                     (x7953
                                                                                                      (letrec ((x7954
                                                                                                                (zombies
                                                                                                                 'draw-on)))
                                                                                                        (x7954
                                                                                                         MT-SCENE))))
                                                                                              (x7955
                                                                                               x7953))))
                                                                                    (λ ()
                                                                                      x7952))))
                                                                          g7951)
                                                                        (if cnd
                                                                          (letrec ((g7956
                                                                                    (letrec ((x7957
                                                                                              (letrec ((x7960
                                                                                                        (zombies
                                                                                                         'touching?))
                                                                                                       (x7958
                                                                                                        (letrec ((x7959
                                                                                                                  (player
                                                                                                                   'posn)))
                                                                                                          (x7959))))
                                                                                                (x7960
                                                                                                 x7958))))
                                                                                      (λ ()
                                                                                        x7957))))
                                                                            g7956)
                                                                          (letrec ((g7961
                                                                                    "unknown message"))
                                                                            g7961)))))))
                                                          (λ x7962 x7934))))
                                                g7933)))
                                           (new-player
                                            (lambda (p)
                                              (letrec ((g7963
                                                        (letrec ((x7976 (msg))
                                                                 (x7964
                                                                  (if cnd
                                                                    (letrec ((g7965
                                                                              (λ ()
                                                                                p)))
                                                                      g7965)
                                                                    (if cnd
                                                                      (letrec ((g7966
                                                                                (letrec ((x7970
                                                                                          (q))
                                                                                         (x7967
                                                                                          (letrec ((x7968
                                                                                                    (letrec ((x7969
                                                                                                              (p
                                                                                                               'move-toward/speed)))
                                                                                                      (x7969
                                                                                                       q
                                                                                                       PLAYER-SPEED))))
                                                                                            (new-player
                                                                                             x7968))))
                                                                                  (λ x7970
                                                                                    x7967))))
                                                                        g7966)
                                                                      (if cnd
                                                                        (letrec ((g7971
                                                                                  (letrec ((x7974
                                                                                            (scn))
                                                                                           (x7972
                                                                                            (letrec ((x7973
                                                                                                      (p
                                                                                                       'draw-on/image)))
                                                                                              (x7973
                                                                                               PLAYER-IMG
                                                                                               scn))))
                                                                                    (λ x7974
                                                                                      x7972))))
                                                                          g7971)
                                                                        (letrec ((g7975
                                                                                  "unknown message"))
                                                                          g7975))))))
                                                          (λ x7976 x7964))))
                                                g7963)))
                                           (new-horde
                                            (lambda (undead dead)
                                              (letrec ((g7977
                                                        (letrec ((x8003 (msg))
                                                                 (x7978
                                                                  (if cnd
                                                                    (letrec ((g7979
                                                                              (λ ()
                                                                                dead)))
                                                                      g7979)
                                                                    (if cnd
                                                                      (letrec ((g7980
                                                                                (λ ()
                                                                                  undead)))
                                                                        g7980)
                                                                      (if cnd
                                                                        (letrec ((g7981
                                                                                  (letrec ((x7986
                                                                                            (scn))
                                                                                           (x7982
                                                                                            (letrec ((x7985
                                                                                                      (undead
                                                                                                       'draw-on/color))
                                                                                                     (x7983
                                                                                                      (letrec ((x7984
                                                                                                                (dead
                                                                                                                 'draw-on/color)))
                                                                                                        (x7984
                                                                                                         "black"
                                                                                                         scn))))
                                                                                              (x7985
                                                                                               "yellow"
                                                                                               x7983))))
                                                                                    (λ x7986
                                                                                      x7982))))
                                                                          g7981)
                                                                        (if cnd
                                                                          (letrec ((g7987
                                                                                    (letrec ((x7993
                                                                                              (p))
                                                                                             (x7988
                                                                                              (letrec ((x7991
                                                                                                        (letrec ((x7992
                                                                                                                  (undead
                                                                                                                   'touching?)))
                                                                                                          (x7992
                                                                                                           p)))
                                                                                                       (x7989
                                                                                                        (letrec ((x7990
                                                                                                                  (dead
                                                                                                                   'touching?)))
                                                                                                          (x7990
                                                                                                           p))))
                                                                                                (or x7991
                                                                                                    x7989))))
                                                                                      (λ x7993
                                                                                        x7988))))
                                                                            g7987)
                                                                          (if cnd
                                                                            (letrec ((g7994
                                                                                      (letrec ((x7998
                                                                                                (p))
                                                                                               (x7995
                                                                                                (letrec ((x7996
                                                                                                          (letrec ((x7997
                                                                                                                    (undead
                                                                                                                     'move-toward)))
                                                                                                            (x7997
                                                                                                             p))))
                                                                                                  (new-horde
                                                                                                   x7996
                                                                                                   dead))))
                                                                                        (λ x7998
                                                                                          x7995))))
                                                                              g7994)
                                                                            (if cnd
                                                                              (letrec ((g7999
                                                                                        (letrec ((x8000
                                                                                                  (letrec ((x8001
                                                                                                            (undead
                                                                                                             'kill-all)))
                                                                                                    (x8001
                                                                                                     dead))))
                                                                                          (λ ()
                                                                                            x8000))))
                                                                                g7999)
                                                                              (letrec ((g8002
                                                                                        "unknown message"))
                                                                                g8002)))))))))
                                                          (λ x8003 x7978))))
                                                g7977)))
                                           (new-cons-zombies
                                            (lambda (z r)
                                              (letrec ((g8004
                                                        (letrec ((x8055 (msg))
                                                                 (x8005
                                                                  (if cnd
                                                                    (letrec ((g8006
                                                                              (letrec ((x8012
                                                                                        (p))
                                                                                       (x8007
                                                                                        (letrec ((x8010
                                                                                                  (letrec ((x8011
                                                                                                            (z
                                                                                                             'move-toward)))
                                                                                                    (x8011
                                                                                                     p)))
                                                                                                 (x8008
                                                                                                  (letrec ((x8009
                                                                                                            (r
                                                                                                             'move-toward)))
                                                                                                    (x8009
                                                                                                     p))))
                                                                                          (new-cons-zombies
                                                                                           x8010
                                                                                           x8008))))
                                                                                (λ x8012
                                                                                  x8007))))
                                                                      g8006)
                                                                    (if cnd
                                                                      (letrec ((g8013
                                                                                (letrec ((x8018
                                                                                          (c
                                                                                           s))
                                                                                         (x8014
                                                                                          (letrec ((x8017
                                                                                                    (z
                                                                                                     'draw-on/color))
                                                                                                   (x8015
                                                                                                    (letrec ((x8016
                                                                                                              (r
                                                                                                               'draw-on/color)))
                                                                                                      (x8016
                                                                                                       c
                                                                                                       s))))
                                                                                            (x8017
                                                                                             c
                                                                                             x8015))))
                                                                                  (λ x8018
                                                                                    x8014))))
                                                                        g8013)
                                                                      (if cnd
                                                                        (letrec ((g8019
                                                                                  (letrec ((x8025
                                                                                            (p))
                                                                                           (x8020
                                                                                            (letrec ((x8023
                                                                                                      (letrec ((x8024
                                                                                                                (z
                                                                                                                 'touching?)))
                                                                                                        (x8024
                                                                                                         p)))
                                                                                                     (x8021
                                                                                                      (letrec ((x8022
                                                                                                                (r
                                                                                                                 'touching?)))
                                                                                                        (x8022
                                                                                                         p))))
                                                                                              (or x8023
                                                                                                  x8021))))
                                                                                    (λ x8025
                                                                                      x8020))))
                                                                          g8019)
                                                                        (if cnd
                                                                          (letrec ((g8026
                                                                                    (letrec ((x8053
                                                                                              (dead))
                                                                                             (x8027
                                                                                              (letrec ((x8040
                                                                                                        (letrec ((x8044
                                                                                                                  (letrec ((x8049
                                                                                                                            (letrec ((x8052
                                                                                                                                      (r
                                                                                                                                       'touching?))
                                                                                                                                     (x8050
                                                                                                                                      (letrec ((x8051
                                                                                                                                                (z
                                                                                                                                                 'posn)))
                                                                                                                                        (x8051))))
                                                                                                                              (x8052
                                                                                                                               x8050)))
                                                                                                                           (x8045
                                                                                                                            (letrec ((x8048
                                                                                                                                      (dead
                                                                                                                                       'touching?))
                                                                                                                                     (x8046
                                                                                                                                      (letrec ((x8047
                                                                                                                                                (z
                                                                                                                                                 'posn)))
                                                                                                                                        (x8047))))
                                                                                                                              (x8048
                                                                                                                               x8046))))
                                                                                                                    (or x8049
                                                                                                                        x8045)))
                                                                                                                 (x8041
                                                                                                                  (letrec ((x8043
                                                                                                                            (r
                                                                                                                             'kill-all))
                                                                                                                           (x8042
                                                                                                                            (new-cons-zombies
                                                                                                                             z
                                                                                                                             dead)))
                                                                                                                    (x8043
                                                                                                                     x8042))))
                                                                                                          (x8044
                                                                                                           x8041)))
                                                                                                       (x8028
                                                                                                        (letrec ((x8029
                                                                                                                  (letrec ((x8036
                                                                                                                            (letrec ((x8037
                                                                                                                                      (letrec ((x8038
                                                                                                                                                (letrec ((x8039
                                                                                                                                                          (r
                                                                                                                                                           'kill-all)))
                                                                                                                                                  (x8039
                                                                                                                                                   dead))))
                                                                                                                                        (res
                                                                                                                                         x8038))))
                                                                                                                              (x8037)))
                                                                                                                           (x8030
                                                                                                                            (letrec ((x8033
                                                                                                                                      (letrec ((x8034
                                                                                                                                                (letrec ((x8035
                                                                                                                                                          (res
                                                                                                                                                           'undead)))
                                                                                                                                                  (x8035))))
                                                                                                                                        (new-cons-zombies
                                                                                                                                         z
                                                                                                                                         x8034)))
                                                                                                                                     (x8031
                                                                                                                                      (letrec ((x8032
                                                                                                                                                (res
                                                                                                                                                 'dead)))
                                                                                                                                        (x8032))))
                                                                                                                              (new-horde
                                                                                                                               x8033
                                                                                                                               x8031))))
                                                                                                                    (let x8036 x8030))))
                                                                                                          (else
                                                                                                           x8029))))
                                                                                                (cond
                                                                                                 x8040
                                                                                                 x8028))))
                                                                                      (λ x8053
                                                                                        x8027))))
                                                                            g8026)
                                                                          (letrec ((g8054
                                                                                    "unknown message"))
                                                                            g8054)))))))
                                                          (λ x8055 x8005))))
                                                g8004)))
                                           (new-mt-zombies
                                            (lambda ()
                                              (letrec ((g8056
                                                        (letrec ((x8070 (msg))
                                                                 (x8057
                                                                  (if cnd
                                                                    (letrec ((g8058
                                                                              (letrec ((x8060
                                                                                        (p))
                                                                                       (x8059
                                                                                        (new-mt-zombies)))
                                                                                (λ x8060
                                                                                  x8059))))
                                                                      g8058)
                                                                    (if cnd
                                                                      (letrec ((g8061
                                                                                (letrec ((x8062
                                                                                          (c
                                                                                           s)))
                                                                                  (λ x8062
                                                                                    s))))
                                                                        g8061)
                                                                      (if cnd
                                                                        (letrec ((g8063
                                                                                  (letrec ((x8064
                                                                                            (p)))
                                                                                    (λ x8064
                                                                                      #f))))
                                                                          g8063)
                                                                        (if cnd
                                                                          (letrec ((g8065
                                                                                    (letrec ((x8068
                                                                                              (dead))
                                                                                             (x8066
                                                                                              (letrec ((x8067
                                                                                                        (new-mt-zombies)))
                                                                                                (new-horde
                                                                                                 x8067
                                                                                                 dead))))
                                                                                      (λ x8068
                                                                                        x8066))))
                                                                            g8065)
                                                                          (letrec ((g8069
                                                                                    "unknown message"))
                                                                            g8069)))))))
                                                          (λ x8070 x8057))))
                                                g8056)))
                                           (new-zombie
                                            (lambda (p)
                                              (letrec ((g8071
                                                        (letrec ((x8090 (msg))
                                                                 (x8072
                                                                  (if cnd
                                                                    (letrec ((g8073
                                                                              (λ ()
                                                                                p)))
                                                                      g8073)
                                                                    (if cnd
                                                                      (letrec ((g8074
                                                                                (letrec ((x8078
                                                                                          (c
                                                                                           s))
                                                                                         (x8075
                                                                                          (letrec ((x8077
                                                                                                    (p
                                                                                                     'draw-on/image))
                                                                                                   (x8076
                                                                                                    (circle
                                                                                                     ZOMBIE-RADIUS
                                                                                                     "solid"
                                                                                                     c)))
                                                                                            (x8077
                                                                                             x8076
                                                                                             s))))
                                                                                  (λ x8078
                                                                                    x8075))))
                                                                        g8074)
                                                                      (if cnd
                                                                        (letrec ((g8079
                                                                                  (letrec ((x8083
                                                                                            (q))
                                                                                           (x8080
                                                                                            (letrec ((x8081
                                                                                                      (letrec ((x8082
                                                                                                                (p
                                                                                                                 'dist)))
                                                                                                        (x8082
                                                                                                         q))))
                                                                                              (<=
                                                                                               x8081
                                                                                               ZOMBIE-RADIUS))))
                                                                                    (λ x8083
                                                                                      x8080))))
                                                                          g8079)
                                                                        (if cnd
                                                                          (letrec ((g8084
                                                                                    (letrec ((x8088
                                                                                              (q))
                                                                                             (x8085
                                                                                              (letrec ((x8086
                                                                                                        (letrec ((x8087
                                                                                                                  (p
                                                                                                                   'move-toward/speed)))
                                                                                                          (x8087
                                                                                                           q
                                                                                                           ZOMBIE-SPEED))))
                                                                                                (new-zombie
                                                                                                 x8086))))
                                                                                      (λ x8088
                                                                                        x8085))))
                                                                            g8084)
                                                                          (letrec ((g8089
                                                                                    "unknown message"))
                                                                            g8089)))))))
                                                          (λ x8090 x8072))))
                                                g8071)))
                                           (new-posn
                                            (lambda (x y)
                                              (letrec ((g8091
                                                        (letrec ((this
                                                                  (letrec ((x8148
                                                                            (msg))
                                                                           (x8092
                                                                            (if cnd
                                                                              (letrec ((g8093
                                                                                        (λ ()
                                                                                          x)))
                                                                                g8093)
                                                                              (if cnd
                                                                                (letrec ((g8094
                                                                                          (λ ()
                                                                                            y)))
                                                                                  g8094)
                                                                                (if cnd
                                                                                  (letrec ((g8095
                                                                                            (λ ()
                                                                                              this)))
                                                                                    g8095)
                                                                                  (if cnd
                                                                                    (letrec ((g8096
                                                                                              (letrec ((x8126
                                                                                                        (p
                                                                                                         speed))
                                                                                                       (x8097
                                                                                                        (letrec ((x8112
                                                                                                                  (letrec ((x8122
                                                                                                                            (letrec ((x8123
                                                                                                                                      (letrec ((x8124
                                                                                                                                                (letrec ((x8125
                                                                                                                                                          (p
                                                                                                                                                           'x)))
                                                                                                                                                  (x8125))))
                                                                                                                                        (-
                                                                                                                                         x8124
                                                                                                                                         x))))
                                                                                                                              (δx
                                                                                                                               x8123)))
                                                                                                                           (x8118
                                                                                                                            (letrec ((x8119
                                                                                                                                      (letrec ((x8120
                                                                                                                                                (letrec ((x8121
                                                                                                                                                          (p
                                                                                                                                                           'y)))
                                                                                                                                                  (x8121))))
                                                                                                                                        (-
                                                                                                                                         x8120
                                                                                                                                         y))))
                                                                                                                              (δy
                                                                                                                               x8119)))
                                                                                                                           (x8113
                                                                                                                            (letrec ((x8114
                                                                                                                                      (letrec ((x8115
                                                                                                                                                (letrec ((x8117
                                                                                                                                                          (abs
                                                                                                                                                           δx))
                                                                                                                                                         (x8116
                                                                                                                                                          (abs
                                                                                                                                                           δy)))
                                                                                                                                                  (max
                                                                                                                                                   x8117
                                                                                                                                                   x8116))))
                                                                                                                                        (min
                                                                                                                                         speed
                                                                                                                                         x8115))))
                                                                                                                              (move-distance
                                                                                                                               x8114))))
                                                                                                                    (x8122
                                                                                                                     x8118
                                                                                                                     x8113)))
                                                                                                                 (x8098
                                                                                                                  (letrec ((x8104
                                                                                                                            (letrec ((x8109
                                                                                                                                      (letrec ((x8111
                                                                                                                                                (abs
                                                                                                                                                 δx))
                                                                                                                                               (x8110
                                                                                                                                                (abs
                                                                                                                                                 δy)))
                                                                                                                                        (<
                                                                                                                                         x8111
                                                                                                                                         x8110)))
                                                                                                                                     (x8105
                                                                                                                                      (letrec ((x8108
                                                                                                                                                (this
                                                                                                                                                 'move))
                                                                                                                                               (x8106
                                                                                                                                                (letrec ((x-cnd8107
                                                                                                                                                          (positive?
                                                                                                                                                           δy)))
                                                                                                                                                  (if x-cnd8107
                                                                                                                                                    move-distance
                                                                                                                                                    (-
                                                                                                                                                     0
                                                                                                                                                     move-distance)))))
                                                                                                                                        (x8108
                                                                                                                                         0
                                                                                                                                         x8106))))
                                                                                                                              (x8109
                                                                                                                               x8105)))
                                                                                                                           (x8099
                                                                                                                            (letrec ((x8100
                                                                                                                                      (letrec ((x8103
                                                                                                                                                (this
                                                                                                                                                 'move))
                                                                                                                                               (x8101
                                                                                                                                                (letrec ((x-cnd8102
                                                                                                                                                          (positive?
                                                                                                                                                           δx)))
                                                                                                                                                  (if x-cnd8102
                                                                                                                                                    move-distance
                                                                                                                                                    (-
                                                                                                                                                     0
                                                                                                                                                     move-distance)))))
                                                                                                                                        (x8103
                                                                                                                                         x8101
                                                                                                                                         0))))
                                                                                                                              (else
                                                                                                                               x8100))))
                                                                                                                    (cond
                                                                                                                     x8104
                                                                                                                     x8099))))
                                                                                                          (let* x8112 x8098))))
                                                                                                (λ x8126
                                                                                                  x8097))))
                                                                                      g8096)
                                                                                    (if cnd
                                                                                      (letrec ((g8127
                                                                                                (letrec ((x8131
                                                                                                          (δx
                                                                                                           δy))
                                                                                                         (x8128
                                                                                                          (letrec ((x8130
                                                                                                                    (+
                                                                                                                     x
                                                                                                                     δx))
                                                                                                                   (x8129
                                                                                                                    (+
                                                                                                                     y
                                                                                                                     δy)))
                                                                                                            (new-posn
                                                                                                             x8130
                                                                                                             x8129))))
                                                                                                  (λ x8131
                                                                                                    x8128))))
                                                                                        g8127)
                                                                                      (if cnd
                                                                                        (letrec ((g8132
                                                                                                  (letrec ((x8134
                                                                                                            (img
                                                                                                             scn))
                                                                                                           (x8133
                                                                                                            (place-image
                                                                                                             img
                                                                                                             x
                                                                                                             y
                                                                                                             scn)))
                                                                                                    (λ x8134
                                                                                                      x8133))))
                                                                                          g8132)
                                                                                        (if cnd
                                                                                          (letrec ((g8135
                                                                                                    (letrec ((x8146
                                                                                                              (p))
                                                                                                             (x8136
                                                                                                              (letrec ((x8137
                                                                                                                        (letrec ((x8142
                                                                                                                                  (letrec ((x8143
                                                                                                                                            (letrec ((x8144
                                                                                                                                                      (letrec ((x8145
                                                                                                                                                                (p
                                                                                                                                                                 'y)))
                                                                                                                                                        (x8145))))
                                                                                                                                              (-
                                                                                                                                               x8144
                                                                                                                                               y))))
                                                                                                                                    (sqr
                                                                                                                                     x8143)))
                                                                                                                                 (x8138
                                                                                                                                  (letrec ((x8139
                                                                                                                                            (letrec ((x8140
                                                                                                                                                      (letrec ((x8141
                                                                                                                                                                (p
                                                                                                                                                                 'x)))
                                                                                                                                                        (x8141))))
                                                                                                                                              (-
                                                                                                                                               x8140
                                                                                                                                               x))))
                                                                                                                                    (sqr
                                                                                                                                     x8139))))
                                                                                                                          (+
                                                                                                                           x8142
                                                                                                                           x8138))))
                                                                                                                (sqrt
                                                                                                                 x8137))))
                                                                                                      (λ x8146
                                                                                                        x8136))))
                                                                                            g8135)
                                                                                          (letrec ((g8147
                                                                                                    "unknown message"))
                                                                                            g8147))))))))))
                                                                    (λ x8148
                                                                      x8092))))
                                                          (letrec ((g8149
                                                                    this))
                                                            g8149))))
                                                g8091)))
                                           (w0
                                            (letrec ((x8163
                                                      (letrec ((x8164
                                                                (new-posn
                                                                 0
                                                                 0)))
                                                        (new-player x8164)))
                                                     (x8162 (new-posn 0 0))
                                                     (x8150
                                                      (letrec ((x8155
                                                                (letrec ((x8160
                                                                          (letrec ((x8161
                                                                                    (new-posn
                                                                                     100
                                                                                     300)))
                                                                            (new-zombie
                                                                             x8161)))
                                                                         (x8156
                                                                          (letrec ((x8158
                                                                                    (letrec ((x8159
                                                                                              (new-posn
                                                                                               100
                                                                                               200)))
                                                                                      (new-zombie
                                                                                       x8159)))
                                                                                   (x8157
                                                                                    (new-mt-zombies)))
                                                                            (new-cons-zombies
                                                                             x8158
                                                                             x8157))))
                                                                  (new-cons-zombies
                                                                   x8160
                                                                   x8156)))
                                                               (x8151
                                                                (letrec ((x8153
                                                                          (letrec ((x8154
                                                                                    (new-posn
                                                                                     200
                                                                                     200)))
                                                                            (new-zombie
                                                                             x8154)))
                                                                         (x8152
                                                                          (new-mt-zombies)))
                                                                  (new-cons-zombies
                                                                   x8153
                                                                   x8152))))
                                                        (new-horde
                                                         x8155
                                                         x8151))))
                                              (new-world x8163 x8162 x8150))))
                                    (letrec ((g8165
                                              (letrec ((x8178
                                                        ((lambda (j7143
                                                                  k7144
                                                                  f7145)
                                                           (letrec ((g8179
                                                                     (lambda (g7142)
                                                                       (letrec ((g8180
                                                                                 (letrec ((x8181
                                                                                           (letrec ((x8182
                                                                                                     (any/c
                                                                                                      j7143
                                                                                                      k7144
                                                                                                      g7142)))
                                                                                             (f7145
                                                                                              x8182))))
                                                                                   (boolean?/c
                                                                                    j7143
                                                                                    k7144
                                                                                    x8181))))
                                                                         g8180))))
                                                             g8179))
                                                         'module
                                                         'importer
                                                         image?))
                                                       (x8177 (input)))
                                                (x8178 x8177)))
                                             (g8166
                                              (letrec ((x8185
                                                        ((lambda (j7148
                                                                  k7149
                                                                  f7150)
                                                           (letrec ((g8186
                                                                     (lambda (g7146
                                                                              g7147)
                                                                       (letrec ((g8187
                                                                                 (letrec ((x8188
                                                                                           (letrec ((x8190
                                                                                                     (real?/c
                                                                                                      j7148
                                                                                                      k7149
                                                                                                      g7146))
                                                                                                    (x8189
                                                                                                     (real?/c
                                                                                                      j7148
                                                                                                      k7149
                                                                                                      g7147)))
                                                                                             (f7150
                                                                                              x8190
                                                                                              x8189))))
                                                                                   (image?
                                                                                    j7148
                                                                                    k7149
                                                                                    x8188))))
                                                                         g8187))))
                                                             g8186))
                                                         'module
                                                         'importer
                                                         empty-scene))
                                                       (x8184 (input))
                                                       (x8183 (input)))
                                                (x8185 x8184 x8183)))
                                             (g8167
                                              (letrec ((x8195
                                                        ((lambda (j7155
                                                                  k7156
                                                                  f7157)
                                                           (letrec ((g8196
                                                                     (lambda (g7151
                                                                              g7152
                                                                              g7153
                                                                              g7154)
                                                                       (letrec ((g8197
                                                                                 (letrec ((x8198
                                                                                           (letrec ((x8202
                                                                                                     (image?/c
                                                                                                      j7155
                                                                                                      k7156
                                                                                                      g7151))
                                                                                                    (x8201
                                                                                                     (real?/c
                                                                                                      j7155
                                                                                                      k7156
                                                                                                      g7152))
                                                                                                    (x8200
                                                                                                     (real?/c
                                                                                                      j7155
                                                                                                      k7156
                                                                                                      g7153))
                                                                                                    (x8199
                                                                                                     (image?
                                                                                                      j7155
                                                                                                      k7156
                                                                                                      g7154)))
                                                                                             (f7157
                                                                                              x8202
                                                                                              x8201
                                                                                              x8200
                                                                                              x8199))))
                                                                                   (image?
                                                                                    j7155
                                                                                    k7156
                                                                                    x8198))))
                                                                         g8197))))
                                                             g8196))
                                                         'module
                                                         'importer
                                                         place-image))
                                                       (x8194 (input))
                                                       (x8193 (input))
                                                       (x8192 (input))
                                                       (x8191 (input)))
                                                (x8195
                                                 x8194
                                                 x8193
                                                 x8192
                                                 x8191)))
                                             (g8168
                                              (letrec ((x8206
                                                        ((lambda (j7161
                                                                  k7162
                                                                  f7163)
                                                           (letrec ((g8207
                                                                     (lambda (g7158
                                                                              g7159
                                                                              g7160)
                                                                       (letrec ((g8208
                                                                                 (letrec ((x8209
                                                                                           (letrec ((x8212
                                                                                                     (real?/c
                                                                                                      j7161
                                                                                                      k7162
                                                                                                      g7158))
                                                                                                    (x8211
                                                                                                     (string?/c
                                                                                                      j7161
                                                                                                      k7162
                                                                                                      g7159))
                                                                                                    (x8210
                                                                                                     (string?/c
                                                                                                      j7161
                                                                                                      k7162
                                                                                                      g7160)))
                                                                                             (f7163
                                                                                              x8212
                                                                                              x8211
                                                                                              x8210))))
                                                                                   (image?
                                                                                    j7161
                                                                                    k7162
                                                                                    x8209))))
                                                                         g8208))))
                                                             g8207))
                                                         'module
                                                         'importer
                                                         circle))
                                                       (x8205 (input))
                                                       (x8204 (input))
                                                       (x8203 (input)))
                                                (x8206 x8205 x8204 x8203)))
                                             (g8169
                                              (letrec ((x8216
                                                        ((lambda (j7167
                                                                  k7168
                                                                  f7169)
                                                           (letrec ((g8217
                                                                     (lambda (g7164
                                                                              g7165
                                                                              g7166)
                                                                       (letrec ((g8218
                                                                                 (letrec ((x8219
                                                                                           (letrec ((x8222
                                                                                                     (player/c
                                                                                                      j7167
                                                                                                      k7168
                                                                                                      g7164))
                                                                                                    (x8221
                                                                                                     (posn/c
                                                                                                      j7167
                                                                                                      k7168
                                                                                                      g7165))
                                                                                                    (x8220
                                                                                                     (horde/c
                                                                                                      j7167
                                                                                                      k7168
                                                                                                      g7166)))
                                                                                             (f7169
                                                                                              x8222
                                                                                              x8221
                                                                                              x8220))))
                                                                                   (world/c
                                                                                    j7167
                                                                                    k7168
                                                                                    x8219))))
                                                                         g8218))))
                                                             g8217))
                                                         'module
                                                         'importer
                                                         new-world))
                                                       (x8215 (input))
                                                       (x8214 (input))
                                                       (x8213 (input)))
                                                (x8216 x8215 x8214 x8213)))
                                             (g8170
                                              (letrec ((x8224
                                                        ((lambda (j7171
                                                                  k7172
                                                                  f7173)
                                                           (letrec ((g8225
                                                                     (lambda (g7170)
                                                                       (letrec ((g8226
                                                                                 (letrec ((x8227
                                                                                           (letrec ((x8228
                                                                                                     (posn/c
                                                                                                      j7171
                                                                                                      k7172
                                                                                                      g7170)))
                                                                                             (f7173
                                                                                              x8228))))
                                                                                   (player/c
                                                                                    j7171
                                                                                    k7172
                                                                                    x8227))))
                                                                         g8226))))
                                                             g8225))
                                                         'module
                                                         'importer
                                                         new-player))
                                                       (x8223 (input)))
                                                (x8224 x8223)))
                                             (g8171
                                              (letrec ((x8231
                                                        ((lambda (j7176
                                                                  k7177
                                                                  f7178)
                                                           (letrec ((g8232
                                                                     (lambda (g7174
                                                                              g7175)
                                                                       (letrec ((g8233
                                                                                 (letrec ((x8234
                                                                                           (letrec ((x8236
                                                                                                     (zombies/c
                                                                                                      j7176
                                                                                                      k7177
                                                                                                      g7174))
                                                                                                    (x8235
                                                                                                     (zombies/c
                                                                                                      j7176
                                                                                                      k7177
                                                                                                      g7175)))
                                                                                             (f7178
                                                                                              x8236
                                                                                              x8235))))
                                                                                   (horde/c
                                                                                    j7176
                                                                                    k7177
                                                                                    x8234))))
                                                                         g8233))))
                                                             g8232))
                                                         'module
                                                         'importer
                                                         new-horde))
                                                       (x8230 (input))
                                                       (x8229 (input)))
                                                (x8231 x8230 x8229)))
                                             (g8172
                                              (letrec ((x8239
                                                        ((lambda (j7181
                                                                  k7182
                                                                  f7183)
                                                           (letrec ((g8240
                                                                     (lambda (g7179
                                                                              g7180)
                                                                       (letrec ((g8241
                                                                                 (letrec ((x8242
                                                                                           (letrec ((x8244
                                                                                                     (zombie/c
                                                                                                      j7181
                                                                                                      k7182
                                                                                                      g7179))
                                                                                                    (x8243
                                                                                                     (zombies/c
                                                                                                      j7181
                                                                                                      k7182
                                                                                                      g7180)))
                                                                                             (f7183
                                                                                              x8244
                                                                                              x8243))))
                                                                                   (zombies/c
                                                                                    j7181
                                                                                    k7182
                                                                                    x8242))))
                                                                         g8241))))
                                                             g8240))
                                                         'module
                                                         'importer
                                                         new-cons-zombies))
                                                       (x8238 (input))
                                                       (x8237 (input)))
                                                (x8239 x8238 x8237)))
                                             (g8173
                                              ((lambda (j7184 k7185 f7186)
                                                 (letrec ((g8245
                                                           (lambda ()
                                                             (letrec ((g8246
                                                                       (letrec ((x8247
                                                                                 (f7186)))
                                                                         (zombies/c
                                                                          j7184
                                                                          k7185
                                                                          x8247))))
                                                               g8246))))
                                                   g8245))
                                               'module
                                               'importer
                                               new-mt-zombies))
                                             (g8174
                                              (letrec ((x8249
                                                        ((lambda (j7188
                                                                  k7189
                                                                  f7190)
                                                           (letrec ((g8250
                                                                     (lambda (g7187)
                                                                       (letrec ((g8251
                                                                                 (letrec ((x8252
                                                                                           (letrec ((x8253
                                                                                                     (posn/c
                                                                                                      j7188
                                                                                                      k7189
                                                                                                      g7187)))
                                                                                             (f7190
                                                                                              x8253))))
                                                                                   (zombie/c
                                                                                    j7188
                                                                                    k7189
                                                                                    x8252))))
                                                                         g8251))))
                                                             g8250))
                                                         'module
                                                         'importer
                                                         new-zombie))
                                                       (x8248 (input)))
                                                (x8249 x8248)))
                                             (g8175
                                              (letrec ((x8256
                                                        ((lambda (j7193
                                                                  k7194
                                                                  f7195)
                                                           (letrec ((g8257
                                                                     (lambda (g7191
                                                                              g7192)
                                                                       (letrec ((g8258
                                                                                 (letrec ((x8259
                                                                                           (letrec ((x8261
                                                                                                     (real?/c
                                                                                                      j7193
                                                                                                      k7194
                                                                                                      g7191))
                                                                                                    (x8260
                                                                                                     (real?/c
                                                                                                      j7193
                                                                                                      k7194
                                                                                                      g7192)))
                                                                                             (f7195
                                                                                              x8261
                                                                                              x8260))))
                                                                                   (posn/c
                                                                                    j7193
                                                                                    k7194
                                                                                    x8259))))
                                                                         g8258))))
                                                             g8257))
                                                         'module
                                                         'importer
                                                         new-posn))
                                                       (x8255 (input))
                                                       (x8254 (input)))
                                                (x8256 x8255 x8254)))
                                             (g8176
                                              (world/c 'module 'importer w0)))
                                      g8176))))
                          g7210))))
              g7208)))
    g7207))
