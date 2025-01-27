(letrec ((any? (lambda (v) (letrec ((g7095 #t)) g7095)))
         (meta (lambda (v) (letrec ((g7096 v)) g7096)))
         (member
          (lambda (v lst)
            (letrec ((g7097
                      (letrec ((g7098
                                (letrec ((x-e7099 lst))
                                  (match
                                   x-e7099
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7100 (eq? v v1)))
                                       (if x-cnd7100 #t (member v vs)))))))))
                        g7098)))
              g7097)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7101 (lambda (v) (letrec ((g7102 v)) g7102)))) g7101)))
         (nonzero?
          (lambda (v)
            (letrec ((g7103 (letrec ((x7104 (= v 0))) (not x7104)))) g7103))))
  (letrec ((g7105
            (letrec ((g7106
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7107 '())
                                 (g7108
                                  (letrec ((real/c
                                            (lambda (g6908 g6909 g6910)
                                              (letrec ((g7109
                                                        (letrec ((x-cnd7110
                                                                  (real?
                                                                   g6910)))
                                                          (if x-cnd7110
                                                            g6910
                                                            (blame
                                                             g6908
                                                             'real?)))))
                                                g7109)))
                                           (boolean?/c
                                            (lambda (g6911 g6912 g6913)
                                              (letrec ((g7111
                                                        (letrec ((x-cnd7112
                                                                  (boolean?
                                                                   g6913)))
                                                          (if x-cnd7112
                                                            g6913
                                                            (blame
                                                             g6911
                                                             'boolean?)))))
                                                g7111)))
                                           (number?/c
                                            (lambda (g6914 g6915 g6916)
                                              (letrec ((g7113
                                                        (letrec ((x-cnd7114
                                                                  (number?
                                                                   g6916)))
                                                          (if x-cnd7114
                                                            g6916
                                                            (blame
                                                             g6914
                                                             'number?)))))
                                                g7113)))
                                           (any/c
                                            (lambda (g6917 g6918 g6919)
                                              (letrec ((g7115
                                                        (letrec ((x-cnd7116
                                                                  ((lambda (v)
                                                                     (letrec ((g7117
                                                                               #t))
                                                                       g7117))
                                                                   g6919)))
                                                          (if x-cnd7116
                                                            g6919
                                                            (blame
                                                             g6917
                                                             '(lambda (v)
                                                                #t))))))
                                                g7115)))
                                           (any?/c
                                            (lambda (g6920 g6921 g6922)
                                              (letrec ((g7118
                                                        (letrec ((x-cnd7119
                                                                  ((lambda (v)
                                                                     (letrec ((g7120
                                                                               #t))
                                                                       g7120))
                                                                   g6922)))
                                                          (if x-cnd7119
                                                            g6922
                                                            (blame
                                                             g6920
                                                             '(lambda (v)
                                                                #t))))))
                                                g7118)))
                                           (cons?/c
                                            (lambda (g6923 g6924 g6925)
                                              (letrec ((g7121
                                                        (letrec ((x-cnd7122
                                                                  (pair?
                                                                   g6925)))
                                                          (if x-cnd7122
                                                            g6925
                                                            (blame
                                                             g6923
                                                             'pair?)))))
                                                g7121)))
                                           (pair?/c
                                            (lambda (g6926 g6927 g6928)
                                              (letrec ((g7123
                                                        (letrec ((x-cnd7124
                                                                  (pair?
                                                                   g6928)))
                                                          (if x-cnd7124
                                                            g6928
                                                            (blame
                                                             g6926
                                                             'pair?)))))
                                                g7123)))
                                           (integer?/c
                                            (lambda (g6929 g6930 g6931)
                                              (letrec ((g7125
                                                        (letrec ((x-cnd7126
                                                                  (integer?
                                                                   g6931)))
                                                          (if x-cnd7126
                                                            g6931
                                                            (blame
                                                             g6929
                                                             'integer?)))))
                                                g7125)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7127
                                                        (lambda (k j v)
                                                          (letrec ((g7128
                                                                    (letrec ((x-cnd7129
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7129
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7128))))
                                                g7127)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7130
                                                        (lambda (k j v)
                                                          (letrec ((g7131
                                                                    (letrec ((x-cnd7132
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7132
                                                                        '()
                                                                        (letrec ((x7136
                                                                                  (letrec ((x7137
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7137)))
                                                                                 (x7133
                                                                                  (letrec ((x7135
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7134
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7135
                                                                                     k
                                                                                     j
                                                                                     x7134))))
                                                                          (cons
                                                                           x7136
                                                                           x7133))))))
                                                            g7131))))
                                                g7130)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7138 #t)) g7138)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7139
                                                        (letrec ((x7140
                                                                  (= v 0)))
                                                          (not x7140))))
                                                g7139)))
                                           (nonzero?/c
                                            (lambda (g6932 g6933 g6934)
                                              (letrec ((g7141
                                                        (letrec ((x-cnd7142
                                                                  ((lambda (v)
                                                                     (letrec ((g7143
                                                                               (letrec ((x7144
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7144))))
                                                                       g7143))
                                                                   g6934)))
                                                          (if x-cnd7142
                                                            g6934
                                                            (blame
                                                             g6932
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7141)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7145 v)) g7145)))
                                           (+
                                            ((lambda (j6937 k6938 f6939)
                                               (letrec ((g7147
                                                         (lambda (g6935 g6936)
                                                           (letrec ((g7148
                                                                     (letrec ((x7149
                                                                               (letrec ((x7151
                                                                                         (number?/c
                                                                                          j6937
                                                                                          k6938
                                                                                          g6935))
                                                                                        (x7150
                                                                                         (number?/c
                                                                                          j6937
                                                                                          k6938
                                                                                          g6936)))
                                                                                 (f6939
                                                                                  x7151
                                                                                  x7150))))
                                                                       (number?/c
                                                                        j6937
                                                                        k6938
                                                                        x7149))))
                                                             g7148))))
                                                 g7147))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7146 (orig-+ a b)))
                                                 g7146))))
                                           (-
                                            ((lambda (j6942 k6943 f6944)
                                               (letrec ((g7153
                                                         (lambda (g6940 g6941)
                                                           (letrec ((g7154
                                                                     (letrec ((x7155
                                                                               (letrec ((x7157
                                                                                         (number?/c
                                                                                          j6942
                                                                                          k6943
                                                                                          g6940))
                                                                                        (x7156
                                                                                         (number?/c
                                                                                          j6942
                                                                                          k6943
                                                                                          g6941)))
                                                                                 (f6944
                                                                                  x7157
                                                                                  x7156))))
                                                                       (number?/c
                                                                        j6942
                                                                        k6943
                                                                        x7155))))
                                                             g7154))))
                                                 g7153))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7152 (orig-- a b)))
                                                 g7152))))
                                           (*
                                            ((lambda (j6947 k6948 f6949)
                                               (letrec ((g7159
                                                         (lambda (g6945 g6946)
                                                           (letrec ((g7160
                                                                     (letrec ((x7161
                                                                               (letrec ((x7163
                                                                                         (number?/c
                                                                                          j6947
                                                                                          k6948
                                                                                          g6945))
                                                                                        (x7162
                                                                                         (number?/c
                                                                                          j6947
                                                                                          k6948
                                                                                          g6946)))
                                                                                 (f6949
                                                                                  x7163
                                                                                  x7162))))
                                                                       (number?/c
                                                                        j6947
                                                                        k6948
                                                                        x7161))))
                                                             g7160))))
                                                 g7159))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7158 (orig-* a b)))
                                                 g7158))))
                                           (/
                                            ((lambda (j6952 k6953 f6954)
                                               (letrec ((g7165
                                                         (lambda (g6950 g6951)
                                                           (letrec ((g7166
                                                                     (letrec ((x7167
                                                                               (letrec ((x7169
                                                                                         (number?/c
                                                                                          j6952
                                                                                          k6953
                                                                                          g6950))
                                                                                        (x7168
                                                                                         (number?/c
                                                                                          j6952
                                                                                          k6953
                                                                                          g6951)))
                                                                                 (f6954
                                                                                  x7169
                                                                                  x7168))))
                                                                       (number?/c
                                                                        j6952
                                                                        k6953
                                                                        x7167))))
                                                             g7166))))
                                                 g7165))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7164 (orig-/ a b)))
                                                 g7164))))
                                           (car
                                            ((lambda (j6956 k6957 f6958)
                                               (letrec ((g7171
                                                         (lambda (g6955)
                                                           (letrec ((g7172
                                                                     (letrec ((x7173
                                                                               (letrec ((x7174
                                                                                         (pair?/c
                                                                                          j6956
                                                                                          k6957
                                                                                          g6955)))
                                                                                 (f6958
                                                                                  x7174))))
                                                                       (any/c
                                                                        j6956
                                                                        k6957
                                                                        x7173))))
                                                             g7172))))
                                                 g7171))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7170 (orig-car p)))
                                                 g7170))))
                                           (cdr
                                            ((lambda (j6960 k6961 f6962)
                                               (letrec ((g7176
                                                         (lambda (g6959)
                                                           (letrec ((g7177
                                                                     (letrec ((x7178
                                                                               (letrec ((x7179
                                                                                         (pair?/c
                                                                                          j6960
                                                                                          k6961
                                                                                          g6959)))
                                                                                 (f6962
                                                                                  x7179))))
                                                                       (any/c
                                                                        j6960
                                                                        k6961
                                                                        x7178))))
                                                             g7177))))
                                                 g7176))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7175 (orig-cdr p)))
                                                 g7175))))
                                           (cons
                                            ((lambda (j6965 k6966 f6967)
                                               (letrec ((g7181
                                                         (lambda (g6963 g6964)
                                                           (letrec ((g7182
                                                                     (letrec ((x7183
                                                                               (letrec ((x7185
                                                                                         (any/c
                                                                                          j6965
                                                                                          k6966
                                                                                          g6963))
                                                                                        (x7184
                                                                                         (any/c
                                                                                          j6965
                                                                                          k6966
                                                                                          g6964)))
                                                                                 (f6967
                                                                                  x7185
                                                                                  x7184))))
                                                                       (pair?/c
                                                                        j6965
                                                                        k6966
                                                                        x7183))))
                                                             g7182))))
                                                 g7181))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7180 (cons a b)))
                                                 g7180))))
                                           (vector-ref
                                            ((lambda (j6969 k6970 f6971)
                                               (letrec ((g7187
                                                         (lambda (g6968)
                                                           (letrec ((g7188
                                                                     (letrec ((x7189
                                                                               (letrec ((x7190
                                                                                         (vector?/c
                                                                                          j6969
                                                                                          k6970
                                                                                          g6968)))
                                                                                 (f6971
                                                                                  x7190))))
                                                                       (integer?/c
                                                                        j6969
                                                                        k6970
                                                                        x7189))))
                                                             g7188))))
                                                 g7187))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7186
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7186))))
                                           (vector-set!
                                            ((lambda (j6974 k6975 f6976)
                                               (letrec ((g7192
                                                         (lambda (g6972 g6973)
                                                           (letrec ((g7193
                                                                     (letrec ((x7194
                                                                               (letrec ((x7196
                                                                                         (vector?/c
                                                                                          j6974
                                                                                          k6975
                                                                                          g6972))
                                                                                        (x7195
                                                                                         (integer?/c
                                                                                          j6974
                                                                                          k6975
                                                                                          g6973)))
                                                                                 (f6976
                                                                                  x7196
                                                                                  x7195))))
                                                                       (any/c
                                                                        j6974
                                                                        k6975
                                                                        x7194))))
                                                             g7193))))
                                                 g7192))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7191
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7191))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7197 #t)) g7197)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7198
                                                        (letrec ((x7199
                                                                  (letrec ((x7200
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7200))))
                                                          (cdr x7199))))
                                                g7198)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7201
                                                        (letrec ((x7204
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7204)))
                                                       (g7202
                                                        (letrec ((x7205
                                                                  (list? l)))
                                                          (assert x7205)))
                                                       (g7203
                                                        (letrec ((x-cnd7206
                                                                  (null? l)))
                                                          (if x-cnd7206
                                                            '()
                                                            (letrec ((x7209
                                                                      (letrec ((x7210
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7210)))
                                                                     (x7207
                                                                      (letrec ((x7208
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7208))))
                                                              (cons
                                                               x7209
                                                               x7207))))))
                                                g7203)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7211
                                                        (letrec ((x7212
                                                                  (car x)))
                                                          (cdr x7212))))
                                                g7211)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7213
                                                        (letrec ((x7214
                                                                  (letrec ((x7215
                                                                            (letrec ((x7216
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7216))))
                                                                    (cdr
                                                                     x7215))))
                                                          (car x7214))))
                                                g7213)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7217
                                                        (letrec ((x7218
                                                                  (letrec ((x7219
                                                                            (letrec ((x7220
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7220))))
                                                                    (car
                                                                     x7219))))
                                                          (cdr x7218))))
                                                g7217)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7221
                                                        (letrec ((x7224
                                                                  (string?
                                                                   filename)))
                                                          (assert x7224)))
                                                       (g7222
                                                        (letrec ((x7225
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7225)))
                                                       (g7223
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7226
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7227 res))
                                                            g7227))))
                                                g7223)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7228
                                                        (letrec ((x7229
                                                                  (letrec ((x7230
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7230))))
                                                          (car x7229))))
                                                g7228)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7231
                                                        (letrec ((x7232
                                                                  (letrec ((x7233
                                                                            (letrec ((x7234
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7234))))
                                                                    (car
                                                                     x7233))))
                                                          (cdr x7232))))
                                                g7231)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7235
                                                        (letrec ((x7237
                                                                  (list? l)))
                                                          (assert x7237)))
                                                       (g7236
                                                        (letrec ((x-cnd7238
                                                                  (null? l)))
                                                          (if x-cnd7238
                                                            #f
                                                            (letrec ((x-cnd7239
                                                                      (letrec ((x7240
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7240
                                                                         k))))
                                                              (if x-cnd7239
                                                                (car l)
                                                                (letrec ((x7241
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7241))))))))
                                                g7236)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7242
                                                        (letrec ((x7243
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7243))))
                                                g7242)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7244
                                                        (letrec ((x7246
                                                                  (list? l)))
                                                          (assert x7246)))
                                                       (g7245
                                                        (letrec ((x-cnd7247
                                                                  (null? l)))
                                                          (if x-cnd7247
                                                            ""
                                                            (letrec ((x7250
                                                                      (letrec ((x7251
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7251)))
                                                                     (x7248
                                                                      (letrec ((x7249
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7249))))
                                                              (string-append
                                                               x7250
                                                               x7248))))))
                                                g7245)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7252
                                                        (letrec ((x7255
                                                                  (char? c1)))
                                                          (assert x7255)))
                                                       (g7253
                                                        (letrec ((x7256
                                                                  (char? c2)))
                                                          (assert x7256)))
                                                       (g7254
                                                        (letrec ((val6887
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7257
                                                                    (if val6887
                                                                      val6887
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7257))))
                                                g7254)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7258
                                                        (letrec ((x7259
                                                                  (letrec ((x7260
                                                                            (letrec ((x7261
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7261))))
                                                                    (cdr
                                                                     x7260))))
                                                          (cdr x7259))))
                                                g7258)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7262
                                                        (letrec ((x7265
                                                                  (list? l)))
                                                          (assert x7265)))
                                                       (g7263
                                                        (letrec ((x7266
                                                                  (numer?)))
                                                          (assert x7266)))
                                                       (g7264
                                                        (letrec ((x-cnd7267
                                                                  (zero? k)))
                                                          (if x-cnd7267
                                                            x
                                                            (letrec ((x7269
                                                                      (cdr x))
                                                                     (x7268
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7269
                                                               x7268))))))
                                                g7264)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7270 '())) g7270)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7271
                                                        (letrec ((x-cnd7272
                                                                  (letrec ((x7273
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7273))))
                                                          (if x-cnd7272
                                                            (letrec ((x7274
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7274))
                                                            #f))))
                                                g7271)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7275
                                                        (letrec ((x7277
                                                                  (number? x)))
                                                          (assert x7277)))
                                                       (g7276
                                                        (letrec ((val6888
                                                                  (< x y)))
                                                          (letrec ((g7278
                                                                    (if val6888
                                                                      val6888
                                                                      (letrec ((val6889
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7279
                                                                                  (if val6889
                                                                                    val6889
                                                                                    #f)))
                                                                          g7279)))))
                                                            g7278))))
                                                g7276)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7280
                                                        (letrec ((val6890
                                                                  (letrec ((x7281
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7281
                                                                     9))))
                                                          (letrec ((g7282
                                                                    (if val6890
                                                                      val6890
                                                                      (letrec ((val6891
                                                                                (letrec ((x7283
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7283
                                                                                   10))))
                                                                        (letrec ((g7284
                                                                                  (if val6891
                                                                                    val6891
                                                                                    (letrec ((x7285
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7285
                                                                                       32)))))
                                                                          g7284)))))
                                                            g7282))))
                                                g7280)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7286
                                                        (letrec ((x7287
                                                                  (letrec ((x7288
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7288))))
                                                          (cdr x7287))))
                                                g7286)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7289
                                                        (letrec ((x7291
                                                                  (number? x)))
                                                          (assert x7291)))
                                                       (g7290 (> x 0)))
                                                g7290)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7292 #f)) g7292)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7293
                                                        (letrec ((x7294
                                                                  (cdr x)))
                                                          (cdr x7294))))
                                                g7293)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7295
                                                        (letrec ((x7297
                                                                  (number? x)))
                                                          (assert x7297)))
                                                       (g7296
                                                        (letrec ((x-cnd7298
                                                                  (< x 0)))
                                                          (if x-cnd7298
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7296)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7299
                                                        (letrec ((val6892
                                                                  (eq? a b)))
                                                          (letrec ((g7300
                                                                    (if val6892
                                                                      val6892
                                                                      (letrec ((val6893
                                                                                (letrec ((x7302
                                                                                          (null?
                                                                                           a))
                                                                                         (x7301
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7302
                                                                                       x7301))))
                                                                        (letrec ((g7303
                                                                                  (if val6893
                                                                                    val6893
                                                                                    (letrec ((val6894
                                                                                              (letrec ((x7306
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7305
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7304
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7306
                                                                                                     x7305
                                                                                                     x7304))))
                                                                                      (letrec ((g7307
                                                                                                (if val6894
                                                                                                  val6894
                                                                                                  (letrec ((val6895
                                                                                                            (letrec ((x7315
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7314
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7311
                                                                                                                      (letrec ((x7313
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7312
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7313
                                                                                                                         x7312)))
                                                                                                                     (x7308
                                                                                                                      (letrec ((x7310
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7309
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7310
                                                                                                                         x7309))))
                                                                                                              (and x7315
                                                                                                                   x7314
                                                                                                                   x7311
                                                                                                                   x7308))))
                                                                                                    (letrec ((g7316
                                                                                                              (if val6895
                                                                                                                val6895
                                                                                                                (letrec ((x7332
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7331
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7317
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7318
                                                                                                                                      (letrec ((x7329
                                                                                                                                                (letrec ((x7330
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7330
                                                                                                                                                   n)))
                                                                                                                                               (x7319
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7320
                                                                                                                                                                      (letrec ((x7327
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7321
                                                                                                                                                                                (letrec ((x7324
                                                                                                                                                                                          (letrec ((x7326
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7325
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7326
                                                                                                                                                                                             x7325)))
                                                                                                                                                                                         (x7322
                                                                                                                                                                                          (letrec ((x7323
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7323))))
                                                                                                                                                                                  (and x7324
                                                                                                                                                                                       x7322))))
                                                                                                                                                                        (or x7327
                                                                                                                                                                            x7321))))
                                                                                                                                                              g7320))))
                                                                                                                                                  (letrec ((g7328
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7328))))
                                                                                                                                        (and x7329
                                                                                                                                             x7319))))
                                                                                                                              g7318))))
                                                                                                                  (and x7332
                                                                                                                       x7331
                                                                                                                       x7317)))))
                                                                                                      g7316)))))
                                                                                        g7307)))))
                                                                          g7303)))))
                                                            g7300))))
                                                g7299)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7333
                                                        (letrec ((x7334
                                                                  (letrec ((x7335
                                                                            (letrec ((x7336
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7336))))
                                                                    (car
                                                                     x7335))))
                                                          (cdr x7334))))
                                                g7333)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7337
                                                        (letrec ((x7338
                                                                  (letrec ((x7339
                                                                            (letrec ((x7340
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7340))))
                                                                    (car
                                                                     x7339))))
                                                          (car x7338))))
                                                g7337)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7341 (eq? x y)))
                                                g7341)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7342
                                                        (letrec ((x7344
                                                                  (number? x)))
                                                          (assert x7344)))
                                                       (g7343
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7345
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7346
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7346)))))
                                                            g7345))))
                                                g7343)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7347
                                                        (letrec ((x7350
                                                                  (string?
                                                                   filename)))
                                                          (assert x7350)))
                                                       (g7348
                                                        (letrec ((x7351
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7351)))
                                                       (g7349
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7352
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7353 res))
                                                            g7353))))
                                                g7349)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7354 (cons x '())))
                                                g7354)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7355
                                                        (letrec ((x7358
                                                                  (char? c1)))
                                                          (assert x7358)))
                                                       (g7356
                                                        (letrec ((x7359
                                                                  (char? c2)))
                                                          (assert x7359)))
                                                       (g7357
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7360
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7360))))
                                                g7357)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7361
                                                        (letrec ((x7362
                                                                  (letrec ((x7363
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7363))))
                                                          (cdr x7362))))
                                                g7361)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7364
                                                        (letrec ((x7365
                                                                  (letrec ((x7366
                                                                            (letrec ((x7367
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7367))))
                                                                    (car
                                                                     x7366))))
                                                          (cdr x7365))))
                                                g7364)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7368
                                                        (letrec ((x7369
                                                                  (letrec ((x7370
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7370))))
                                                          (car x7369))))
                                                g7368)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7371
                                                        (letrec ((x7372
                                                                  (letrec ((x7373
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7373))))
                                                          (car x7372))))
                                                g7371)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7374
                                                        (letrec ((x7377
                                                                  (char? c1)))
                                                          (assert x7377)))
                                                       (g7375
                                                        (letrec ((x7378
                                                                  (char? c2)))
                                                          (assert x7378)))
                                                       (g7376
                                                        (letrec ((x7379
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7379))))
                                                g7376)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7380
                                                        (letrec ((x7381
                                                                  (letrec ((x7382
                                                                            (letrec ((x7383
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7383))))
                                                                    (car
                                                                     x7382))))
                                                          (car x7381))))
                                                g7380)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7384
                                                        (letrec ((x7386
                                                                  (number? x)))
                                                          (assert x7386)))
                                                       (g7385 (< x 0)))
                                                g7385)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7387 (memq e l)))
                                                g7387)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7388
                                                        (letrec ((x7389
                                                                  (letrec ((x7390
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7390))))
                                                          (car x7389))))
                                                g7388)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7391 '())) g7391)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7392
                                                        (letrec ((x7394
                                                                  (list? l)))
                                                          (assert x7394)))
                                                       (g7393
                                                        (letrec ((x-cnd7395
                                                                  (null? l)))
                                                          (if x-cnd7395
                                                            '()
                                                            (letrec ((x7398
                                                                      (letrec ((x7399
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7399)))
                                                                     (x7396
                                                                      (letrec ((x7397
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7397))))
                                                              (append
                                                               x7398
                                                               x7396))))))
                                                g7393)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7400
                                                        (letrec ((x7401
                                                                  (letrec ((x7402
                                                                            (letrec ((x7403
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7403))))
                                                                    (car
                                                                     x7402))))
                                                          (car x7401))))
                                                g7400)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7404
                                                        (letrec ((x7405
                                                                  (letrec ((x7406
                                                                            (letrec ((x7407
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7407))))
                                                                    (cdr
                                                                     x7406))))
                                                          (cdr x7405))))
                                                g7404)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7408
                                                        (letrec ((x7410
                                                                  (number? x)))
                                                          (assert x7410)))
                                                       (g7409
                                                        (letrec ((x7411
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7411))))
                                                g7409)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7412
                                                        (letrec ((x7413
                                                                  (letrec ((x7414
                                                                            (letrec ((x7415
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7415))))
                                                                    (car
                                                                     x7414))))
                                                          (car x7413))))
                                                g7412)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7416
                                                        (letrec ((x7419
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7419)))
                                                       (g7417
                                                        (letrec ((x7420
                                                                  (list?
                                                                   args)))
                                                          (assert x7420)))
                                                       (g7418
                                                        (if cnd
                                                          (letrec ((g7421
                                                                    (proc)))
                                                            g7421)
                                                          (if cnd
                                                            (letrec ((g7422
                                                                      (letrec ((x7423
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7423))))
                                                              g7422)
                                                            (if cnd
                                                              (letrec ((g7424
                                                                        (letrec ((x7426
                                                                                  (car
                                                                                   args))
                                                                                 (x7425
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7426
                                                                           x7425))))
                                                                g7424)
                                                              (if cnd
                                                                (letrec ((g7427
                                                                          (letrec ((x7430
                                                                                    (car
                                                                                     args))
                                                                                   (x7429
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7428
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7430
                                                                             x7429
                                                                             x7428))))
                                                                  g7427)
                                                                (if cnd
                                                                  (letrec ((g7431
                                                                            (letrec ((x7435
                                                                                      (car
                                                                                       args))
                                                                                     (x7434
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7433
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7432
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7435
                                                                               x7434
                                                                               x7433
                                                                               x7432))))
                                                                    g7431)
                                                                  (if cnd
                                                                    (letrec ((g7436
                                                                              (letrec ((x7442
                                                                                        (car
                                                                                         args))
                                                                                       (x7441
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7440
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7439
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7437
                                                                                        (letrec ((x7438
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7438))))
                                                                                (proc
                                                                                 x7442
                                                                                 x7441
                                                                                 x7440
                                                                                 x7439
                                                                                 x7437))))
                                                                      g7436)
                                                                    (if cnd
                                                                      (letrec ((g7443
                                                                                (letrec ((x7451
                                                                                          (car
                                                                                           args))
                                                                                         (x7450
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7449
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7448
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7446
                                                                                          (letrec ((x7447
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7447)))
                                                                                         (x7444
                                                                                          (letrec ((x7445
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7445))))
                                                                                  (proc
                                                                                   x7451
                                                                                   x7450
                                                                                   x7449
                                                                                   x7448
                                                                                   x7446
                                                                                   x7444))))
                                                                        g7443)
                                                                      (if cnd
                                                                        (letrec ((g7452
                                                                                  (letrec ((x7462
                                                                                            (car
                                                                                             args))
                                                                                           (x7461
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7460
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7459
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7457
                                                                                            (letrec ((x7458
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7458)))
                                                                                           (x7455
                                                                                            (letrec ((x7456
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7456)))
                                                                                           (x7453
                                                                                            (letrec ((x7454
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7454))))
                                                                                    (proc
                                                                                     x7462
                                                                                     x7461
                                                                                     x7460
                                                                                     x7459
                                                                                     x7457
                                                                                     x7455
                                                                                     x7453))))
                                                                          g7452)
                                                                        (letrec ((g7463
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7463)))))))))))
                                                g7418)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7464
                                                        (letrec ((x7466
                                                                  (list? l)))
                                                          (assert x7466)))
                                                       (g7465
                                                        (letrec ((x-cnd7467
                                                                  (null? l)))
                                                          (if x-cnd7467
                                                            #f
                                                            (letrec ((x-cnd7468
                                                                      (letrec ((x7469
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7469
                                                                         e))))
                                                              (if x-cnd7468
                                                                l
                                                                (letrec ((x7470
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7470))))))))
                                                g7465)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7471
                                                        (letrec ((x7472
                                                                  (letrec ((x7473
                                                                            (letrec ((x7474
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7474))))
                                                                    (cdr
                                                                     x7473))))
                                                          (cdr x7472))))
                                                g7471)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7475
                                                        (letrec ((x7476
                                                                  (letrec ((x7477
                                                                            (letrec ((x7478
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7478))))
                                                                    (cdr
                                                                     x7477))))
                                                          (car x7476))))
                                                g7475)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7479 (random 42)))
                                                g7479)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7480
                                                        (letrec ((x7482
                                                                  (number? x)))
                                                          (assert x7482)))
                                                       (g7481 (= x 0)))
                                                g7481)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7483
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7484
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7484))))
                                                g7483)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7485
                                                        (letrec ((x7486
                                                                  (cdr x)))
                                                          (car x7486))))
                                                g7485)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7487
                                                        (letrec ((val6900
                                                                  (letrec ((x7490
                                                                            (pair?
                                                                             l))
                                                                           (x7488
                                                                            (letrec ((x7489
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7489))))
                                                                    (and x7490
                                                                         x7488))))
                                                          (letrec ((g7491
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7491))))
                                                g7487)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7492
                                                        (letrec ((x7493
                                                                  (letrec ((x7494
                                                                            (letrec ((x7495
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7495))))
                                                                    (cdr
                                                                     x7494))))
                                                          (cdr x7493))))
                                                g7492)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7496
                                                        (letrec ((x-cnd7497
                                                                  (letrec ((x7498
                                                                            #\0))
                                                                    (char<=?
                                                                     x7498
                                                                     c))))
                                                          (if x-cnd7497
                                                            (letrec ((x7499
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7499))
                                                            #f))))
                                                g7496)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7500
                                                        (letrec ((x7502
                                                                  (list? l)))
                                                          (assert x7502)))
                                                       (g7501
                                                        (letrec ((x-cnd7503
                                                                  (null? l)))
                                                          (if x-cnd7503
                                                            #f
                                                            (letrec ((x-cnd7504
                                                                      (letrec ((x7505
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7505
                                                                         k))))
                                                              (if x-cnd7504
                                                                (car l)
                                                                (letrec ((x7506
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7506))))))))
                                                g7501)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7507 (if x #f #t)))
                                                g7507)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7508 (append l1 l2)))
                                                g7508)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7509
                                                        (letrec ((x7511
                                                                  (list? l)))
                                                          (assert x7511)))
                                                       (g7510
                                                        (letrec ((x-cnd7512
                                                                  (null? l)))
                                                          (if x-cnd7512
                                                            #f
                                                            (letrec ((x-cnd7513
                                                                      (letrec ((x7514
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7514
                                                                         e))))
                                                              (if x-cnd7513
                                                                l
                                                                (letrec ((x7515
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7515))))))))
                                                g7510)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7516
                                                        (letrec ((x7517
                                                                  (letrec ((x7518
                                                                            (letrec ((x7519
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7519))))
                                                                    (cdr
                                                                     x7518))))
                                                          (car x7517))))
                                                g7516)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7520
                                                        (letrec ((x7522
                                                                  (list? l)))
                                                          (assert x7522)))
                                                       (g7521
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7523
                                                                              (letrec ((x-cnd7524
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7524
                                                                                  0
                                                                                  (letrec ((x7525
                                                                                            (letrec ((x7526
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7526))))
                                                                                    (+
                                                                                     1
                                                                                     x7525))))))
                                                                      g7523))))
                                                          (letrec ((g7527
                                                                    (rec l)))
                                                            g7527))))
                                                g7521)))
                                           (char-ci<=?
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
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7533
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7533))))
                                                g7530)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7534
                                                        (letrec ((x7535
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7535))))
                                                g7534)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7536
                                                        (letrec ((x7537
                                                                  (letrec ((x7538
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7538))))
                                                          (cdr x7537))))
                                                g7536)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7539
                                                        (letrec ((x7541
                                                                  (list? l)))
                                                          (assert x7541)))
                                                       (g7540
                                                        (letrec ((x-cnd7542
                                                                  (null? l)))
                                                          (if x-cnd7542
                                                            #f
                                                            (letrec ((x-cnd7543
                                                                      (letrec ((x7544
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7544
                                                                         k))))
                                                              (if x-cnd7543
                                                                (car l)
                                                                (letrec ((x7545
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7545))))))))
                                                g7540)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7546
                                                        (letrec ((x7547
                                                                  (car x)))
                                                          (car x7547))))
                                                g7546)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7548
                                                        (letrec ((x7551
                                                                  (char? c1)))
                                                          (assert x7551)))
                                                       (g7549
                                                        (letrec ((x7552
                                                                  (char? c2)))
                                                          (assert x7552)))
                                                       (g7550
                                                        (letrec ((x7553
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7553))))
                                                g7550)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7554
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7555
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7555))))
                                                g7554)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7556
                                                        (letrec ((x7559
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7559)))
                                                       (g7557
                                                        (letrec ((x7560
                                                                  (list? l)))
                                                          (assert x7560)))
                                                       (g7558
                                                        (letrec ((x-cnd7561
                                                                  (null? l)))
                                                          (if x-cnd7561
                                                            #t
                                                            (letrec ((x-cnd7562
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7562
                                                                (letrec ((g7563
                                                                          (letrec ((x7565
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7565)))
                                                                         (g7564
                                                                          (letrec ((x7566
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7566))))
                                                                  g7564)
                                                                '()))))))
                                                g7558)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7567
                                                        (letrec ((x7569
                                                                  (number? x)))
                                                          (assert x7569)))
                                                       (g7568
                                                        (letrec ((x-cnd7570
                                                                  (< x 0)))
                                                          (if x-cnd7570
                                                            (- 0 x)
                                                            x))))
                                                g7568)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7571
                                                        (letrec ((x7574
                                                                  (char? c1)))
                                                          (assert x7574)))
                                                       (g7572
                                                        (letrec ((x7575
                                                                  (char? c2)))
                                                          (assert x7575)))
                                                       (g7573
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7576
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7576))))
                                                g7573)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7577
                                                        (letrec ((x7578
                                                                  (letrec ((x7579
                                                                            (letrec ((x7580
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7580))))
                                                                    (cdr
                                                                     x7579))))
                                                          (car x7578))))
                                                g7577)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7581 #f)) g7581)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7582
                                                        (letrec ((x7584
                                                                  (letrec ((x7585
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7585)))
                                                                 (x7583
                                                                  (gcd m n)))
                                                          (/ x7584 x7583))))
                                                g7582)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7586
                                                        (letrec ((x7588
                                                                  (number? x)))
                                                          (assert x7588)))
                                                       (g7587
                                                        (letrec ((x7589
                                                                  (<= x y)))
                                                          (not x7589))))
                                                g7587)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7590
                                                        (letrec ((x7594
                                                                  (list? l)))
                                                          (assert x7594)))
                                                       (g7591
                                                        (letrec ((x7595
                                                                  (number?
                                                                   index)))
                                                          (assert x7595)))
                                                       (g7592
                                                        (letrec ((x7596
                                                                  (letrec ((x7597
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7597))))
                                                          (assert x7596)))
                                                       (g7593
                                                        (letrec ((x-cnd7598
                                                                  (= index 0)))
                                                          (if x-cnd7598
                                                            (car l)
                                                            (letrec ((x7600
                                                                      (cdr l))
                                                                     (x7599
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7600
                                                               x7599))))))
                                                g7593)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7601
                                                        (letrec ((x-cnd7602
                                                                  (= b 0)))
                                                          (if x-cnd7602
                                                            a
                                                            (letrec ((x7603
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7603))))))
                                                g7601)))
                                           (image
                                            (lambda ()
                                              (letrec ((g7604
                                                        (cons 'image '())))
                                                g7604)))
                                           (image?
                                            (lambda (image7079)
                                              (letrec ((g7605
                                                        (letrec ((x7606
                                                                  (car
                                                                   image7079)))
                                                          (eq? x7606 'image))))
                                                g7605)))
                                           (image/c
                                            (lambda (j6978 k6979 v6977)
                                              (letrec ((g7607
                                                        (cons image '())))
                                                g7607)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g7608 (image)))
                                                g7608)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g7609 (image)))
                                                g7609)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g7610 (image)))
                                                g7610)))
                                           (posn
                                            (lambda (x7081 y7082)
                                              (letrec ((g7611
                                                        (letrec ((x7612
                                                                  (letrec ((x7613
                                                                            (cons
                                                                             y7082
                                                                             '())))
                                                                    (cons
                                                                     x7081
                                                                     x7613))))
                                                          (cons 'posn x7612))))
                                                g7611)))
                                           (posn?
                                            (lambda (posn7080)
                                              (letrec ((g7614
                                                        (letrec ((x7615
                                                                  (car
                                                                   posn7080)))
                                                          (eq? x7615 'posn))))
                                                g7614)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g7616
                                                        (letrec ((x7617
                                                                  (cdr posn)))
                                                          (car x7617))))
                                                g7616)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g7618
                                                        (letrec ((x7619
                                                                  (letrec ((x7620
                                                                            (cdr
                                                                             posn)))
                                                                    (cdr
                                                                     x7620))))
                                                          (car x7619))))
                                                g7618)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g7621
                                                        (letrec ((x-cnd7622
                                                                  (letrec ((x7624
                                                                            (posn-x
                                                                             p1))
                                                                           (x7623
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x7624
                                                                     x7623))))
                                                          (if x-cnd7622
                                                            (letrec ((x7626
                                                                      (posn-y
                                                                       p1))
                                                                     (x7625
                                                                      (posn-y
                                                                       p2)))
                                                              (= x7626 x7625))
                                                            #f))))
                                                g7621)))
                                           (snake
                                            (lambda (dir7086 segs7087)
                                              (letrec ((g7627
                                                        (letrec ((x7628
                                                                  (letrec ((x7629
                                                                            (cons
                                                                             segs7087
                                                                             '())))
                                                                    (cons
                                                                     dir7086
                                                                     x7629))))
                                                          (cons
                                                           'snake
                                                           x7628))))
                                                g7627)))
                                           (snake?
                                            (lambda (snake7085)
                                              (letrec ((g7630
                                                        (letrec ((x7631
                                                                  (car
                                                                   snake7085)))
                                                          (eq? x7631 'snake))))
                                                g7630)))
                                           (snake-dir
                                            (lambda (snake)
                                              (letrec ((g7632
                                                        (letrec ((x7633
                                                                  (cdr snake)))
                                                          (car x7633))))
                                                g7632)))
                                           (snake-segs
                                            (lambda (snake)
                                              (letrec ((g7634
                                                        (letrec ((x7635
                                                                  (letrec ((x7636
                                                                            (cdr
                                                                             snake)))
                                                                    (cdr
                                                                     x7636))))
                                                          (car x7635))))
                                                g7634)))
                                           (world
                                            (lambda (snake7091 food7092)
                                              (letrec ((g7637
                                                        (letrec ((x7638
                                                                  (letrec ((x7639
                                                                            (cons
                                                                             food7092
                                                                             '())))
                                                                    (cons
                                                                     snake7091
                                                                     x7639))))
                                                          (cons
                                                           'world
                                                           x7638))))
                                                g7637)))
                                           (world?
                                            (lambda (world7090)
                                              (letrec ((g7640
                                                        (letrec ((x7641
                                                                  (car
                                                                   world7090)))
                                                          (eq? x7641 'world))))
                                                g7640)))
                                           (world-snake
                                            (lambda (world)
                                              (letrec ((g7642
                                                        (letrec ((x7643
                                                                  (cdr world)))
                                                          (car x7643))))
                                                g7642)))
                                           (world-food
                                            (lambda (world)
                                              (letrec ((g7644
                                                        (letrec ((x7645
                                                                  (letrec ((x7646
                                                                            (cdr
                                                                             world)))
                                                                    (cdr
                                                                     x7646))))
                                                          (car x7645))))
                                                g7644)))
                                           (DIR/C
                                            (lambda (g6984 g6985 g6986)
                                              (letrec ((g7647
                                                        (letrec ((x-cnd7648
                                                                  ((lambda (v6983)
                                                                     (letrec ((g7649
                                                                               (letrec ((x-cnd7650
                                                                                         (eq?
                                                                                          'up
                                                                                          v6983)))
                                                                                 (if x-cnd7650
                                                                                   #t
                                                                                   (letrec ((x-cnd7651
                                                                                             (eq?
                                                                                              'down
                                                                                              v6983)))
                                                                                     (if x-cnd7651
                                                                                       #t
                                                                                       (letrec ((x-cnd7652
                                                                                                 (eq?
                                                                                                  'left
                                                                                                  v6983)))
                                                                                         (if x-cnd7652
                                                                                           #t
                                                                                           (eq?
                                                                                            'right
                                                                                            v6983)))))))))
                                                                       g7649))
                                                                   g6986)))
                                                          (if x-cnd7648
                                                            g6986
                                                            (blame
                                                             g6984
                                                             '(lambda (v6983)
                                                                (if (eq?
                                                                     'up
                                                                     v6983)
                                                                  #t
                                                                  (if (eq?
                                                                       'down
                                                                       v6983)
                                                                    #t
                                                                    (if (eq?
                                                                         'left
                                                                         v6983)
                                                                      #t
                                                                      (eq?
                                                                       'right
                                                                       v6983))))))))))
                                                g7647)))
                                           (POSN/C
                                            (lambda (j6988 k6989 v6987)
                                              (letrec ((g7653
                                                        (letrec ((checked6990
                                                                  (letrec ((x7654
                                                                            (car
                                                                             v6987)))
                                                                    (real?/c
                                                                     'j6988
                                                                     'k6989
                                                                     x7654))))
                                                          (letrec ((g7655
                                                                    (letrec ((checked6991
                                                                              (letrec ((x7656
                                                                                        (letrec ((x7657
                                                                                                  (cdr
                                                                                                   v6987)))
                                                                                          (car
                                                                                           x7657))))
                                                                                (real?/c
                                                                                 'j6988
                                                                                 'k6989
                                                                                 x7656))))
                                                                      (letrec ((g7658
                                                                                (letrec ((x7659
                                                                                          (letrec ((x7660
                                                                                                    (cons
                                                                                                     checked6991
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked6990
                                                                                             x7660))))
                                                                                  (cons
                                                                                   posn
                                                                                   x7659))))
                                                                        g7658))))
                                                            g7655))))
                                                g7653)))
                                           (SNAKE/C
                                            (lambda (j6994 k6995 v6993)
                                              (letrec ((g7661
                                                        (letrec ((checked6996
                                                                  (letrec ((x7662
                                                                            (car
                                                                             v6993)))
                                                                    (DIR/C
                                                                     'j6994
                                                                     'k6995
                                                                     x7662))))
                                                          (letrec ((g7663
                                                                    (letrec ((checked6997
                                                                              (letrec ((x7666
                                                                                        (letrec ((x7667
                                                                                                  (listof
                                                                                                   POSN/C)))
                                                                                          (and/c
                                                                                           cons?/c
                                                                                           x7667)))
                                                                                       (x7664
                                                                                        (letrec ((x7665
                                                                                                  (cdr
                                                                                                   v6993)))
                                                                                          (car
                                                                                           x7665))))
                                                                                (x7666
                                                                                 'j6994
                                                                                 'k6995
                                                                                 x7664))))
                                                                      (letrec ((g7668
                                                                                (letrec ((x7669
                                                                                          (letrec ((x7670
                                                                                                    (cons
                                                                                                     checked6997
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked6996
                                                                                             x7670))))
                                                                                  (cons
                                                                                   snake
                                                                                   x7669))))
                                                                        g7668))))
                                                            g7663))))
                                                g7661)))
                                           (WORLD/C
                                            (lambda (j7000 k7001 v6999)
                                              (letrec ((g7671
                                                        (letrec ((checked7002
                                                                  (letrec ((x7672
                                                                            (car
                                                                             v6999)))
                                                                    (SNAKE/C
                                                                     'j7000
                                                                     'k7001
                                                                     x7672))))
                                                          (letrec ((g7673
                                                                    (letrec ((checked7003
                                                                              (letrec ((x7674
                                                                                        (letrec ((x7675
                                                                                                  (cdr
                                                                                                   v6999)))
                                                                                          (car
                                                                                           x7675))))
                                                                                (POSN/C
                                                                                 'j7000
                                                                                 'k7001
                                                                                 x7674))))
                                                                      (letrec ((g7676
                                                                                (letrec ((x7677
                                                                                          (letrec ((x7678
                                                                                                    (cons
                                                                                                     checked7003
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7002
                                                                                             x7678))))
                                                                                  (cons
                                                                                   world
                                                                                   x7677))))
                                                                        g7676))))
                                                            g7673))))
                                                g7671)))
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
                                            (letrec ((x7680
                                                      (letrec ((x7681
                                                                (letrec ((x7682
                                                                          (posn
                                                                           5
                                                                           3)))
                                                                  (cons
                                                                   x7682
                                                                   empty))))
                                                        (snake 'right x7681)))
                                                     (x7679 (posn 8 12)))
                                              (world x7680 x7679)))
                                           (snake-wall-collide?
                                            (lambda (snk)
                                              (letrec ((g7683
                                                        (letrec ((x7684
                                                                  (letrec ((x7685
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x7685))))
                                                          (head-collide?
                                                           x7684))))
                                                g7683)))
                                           (head-collide?
                                            (lambda (p)
                                              (letrec ((g7686
                                                        (letrec ((val6904
                                                                  (letrec ((x7687
                                                                            (posn-x
                                                                             p)))
                                                                    (<=
                                                                     x7687
                                                                     0))))
                                                          (letrec ((g7688
                                                                    (if val6904
                                                                      val6904
                                                                      (letrec ((val6905
                                                                                (letrec ((x7689
                                                                                          (posn-x
                                                                                           p)))
                                                                                  (>=
                                                                                   x7689
                                                                                   BOARD-WIDTH))))
                                                                        (letrec ((g7690
                                                                                  (if val6905
                                                                                    val6905
                                                                                    (letrec ((val6906
                                                                                              (letrec ((x7691
                                                                                                        (posn-y
                                                                                                         p)))
                                                                                                (<=
                                                                                                 x7691
                                                                                                 0))))
                                                                                      (letrec ((g7692
                                                                                                (if val6906
                                                                                                  val6906
                                                                                                  (letrec ((x7693
                                                                                                            (posn-y
                                                                                                             p)))
                                                                                                    (>=
                                                                                                     x7693
                                                                                                     BOARD-HEIGHT)))))
                                                                                        g7692)))))
                                                                          g7690)))))
                                                            g7688))))
                                                g7686)))
                                           (snake-self-collide?
                                            (lambda (snk)
                                              (letrec ((g7694
                                                        (letrec ((x7697
                                                                  (letrec ((x7698
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x7698)))
                                                                 (x7695
                                                                  (letrec ((x7696
                                                                            (snake-segs
                                                                             snk)))
                                                                    (cdr
                                                                     x7696))))
                                                          (segs-self-collide?
                                                           x7697
                                                           x7695))))
                                                g7694)))
                                           (segs-self-collide?
                                            (lambda (h segs)
                                              (letrec ((g7699
                                                        (if cnd
                                                          (letrec ((g7700 #f))
                                                            g7700)
                                                          (letrec ((g7701
                                                                    (letrec ((x7704
                                                                              (letrec ((x7705
                                                                                        (car
                                                                                         segs)))
                                                                                (posn=?
                                                                                 x7705
                                                                                 h)))
                                                                             (x7702
                                                                              (letrec ((x7703
                                                                                        (cdr
                                                                                         segs)))
                                                                                (segs-self-collide?
                                                                                 h
                                                                                 x7703))))
                                                                      (or x7704
                                                                          x7702))))
                                                            g7701))))
                                                g7699)))
                                           (cut-tail
                                            (lambda (segs)
                                              (letrec ((g7706
                                                        (letrec ((r
                                                                  (cdr segs)))
                                                          (letrec ((g7707
                                                                    (if cnd
                                                                      (letrec ((g7708
                                                                                empty))
                                                                        g7708)
                                                                      (letrec ((g7709
                                                                                (letrec ((x7711
                                                                                          (car
                                                                                           segs))
                                                                                         (x7710
                                                                                          (cut-tail
                                                                                           r)))
                                                                                  (cons
                                                                                   x7711
                                                                                   x7710))))
                                                                        g7709))))
                                                            g7707))))
                                                g7706)))
                                           (next-head
                                            (lambda (seg dir)
                                              (letrec ((g7712
                                                        (if cnd
                                                          (letrec ((g7713
                                                                    (letrec ((x7715
                                                                              (letrec ((x7716
                                                                                        (posn-x
                                                                                         seg)))
                                                                                (add1
                                                                                 x7716)))
                                                                             (x7714
                                                                              (posn-y
                                                                               seg)))
                                                                      (posn
                                                                       x7715
                                                                       x7714))))
                                                            g7713)
                                                          (if cnd
                                                            (letrec ((g7717
                                                                      (letrec ((x7719
                                                                                (letrec ((x7720
                                                                                          (posn-x
                                                                                           seg)))
                                                                                  (sub1
                                                                                   x7720)))
                                                                               (x7718
                                                                                (posn-y
                                                                                 seg)))
                                                                        (posn
                                                                         x7719
                                                                         x7718))))
                                                              g7717)
                                                            (if cnd
                                                              (letrec ((g7721
                                                                        (letrec ((x7724
                                                                                  (posn-x
                                                                                   seg))
                                                                                 (x7722
                                                                                  (letrec ((x7723
                                                                                            (posn-y
                                                                                             seg)))
                                                                                    (sub1
                                                                                     x7723))))
                                                                          (posn
                                                                           x7724
                                                                           x7722))))
                                                                g7721)
                                                              (letrec ((g7725
                                                                        (letrec ((x7728
                                                                                  (posn-x
                                                                                   seg))
                                                                                 (x7726
                                                                                  (letrec ((x7727
                                                                                            (posn-y
                                                                                             seg)))
                                                                                    (add1
                                                                                     x7727))))
                                                                          (posn
                                                                           x7728
                                                                           x7726))))
                                                                g7725))))))
                                                g7712)))
                                           (snake-slither
                                            (lambda (snk)
                                              (letrec ((g7729
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g7730
                                                                    (letrec ((x7731
                                                                              (letrec ((x7734
                                                                                        (letrec ((x7735
                                                                                                  (letrec ((x7736
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x7736))))
                                                                                          (next-head
                                                                                           x7735
                                                                                           d)))
                                                                                       (x7732
                                                                                        (letrec ((x7733
                                                                                                  (snake-segs
                                                                                                   snk)))
                                                                                          (cut-tail
                                                                                           x7733))))
                                                                                (cons
                                                                                 x7734
                                                                                 x7732))))
                                                                      (snake
                                                                       d
                                                                       x7731))))
                                                            g7730))))
                                                g7729)))
                                           (snake-grow
                                            (lambda (snk)
                                              (letrec ((g7737
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g7738
                                                                    (letrec ((x7739
                                                                              (letrec ((x7741
                                                                                        (letrec ((x7742
                                                                                                  (letrec ((x7743
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x7743))))
                                                                                          (next-head
                                                                                           x7742
                                                                                           d)))
                                                                                       (x7740
                                                                                        (snake-segs
                                                                                         snk)))
                                                                                (cons
                                                                                 x7741
                                                                                 x7740))))
                                                                      (snake
                                                                       d
                                                                       x7739))))
                                                            g7738))))
                                                g7737)))
                                           (world->world
                                            (lambda (w)
                                              (letrec ((g7744
                                                        (if cnd
                                                          (letrec ((g7745
                                                                    (snake-eat
                                                                     w)))
                                                            g7745)
                                                          (letrec ((g7746
                                                                    (letrec ((x7748
                                                                              (letrec ((x7749
                                                                                        (world-snake
                                                                                         w)))
                                                                                (snake-slither
                                                                                 x7749)))
                                                                             (x7747
                                                                              (world-food
                                                                               w)))
                                                                      (world
                                                                       x7748
                                                                       x7747))))
                                                            g7746))))
                                                g7744)))
                                           (eating?
                                            (lambda (w)
                                              (letrec ((g7750
                                                        (letrec ((x7754
                                                                  (world-food
                                                                   w))
                                                                 (x7751
                                                                  (letrec ((x7752
                                                                            (letrec ((x7753
                                                                                      (world-snake
                                                                                       w)))
                                                                              (snake-segs
                                                                               x7753))))
                                                                    (car
                                                                     x7752))))
                                                          (posn=?
                                                           x7754
                                                           x7751))))
                                                g7750)))
                                           (snake-change-direction
                                            (lambda (snk dir)
                                              (letrec ((g7755
                                                        (letrec ((x7756
                                                                  (snake-segs
                                                                   snk)))
                                                          (snake dir x7756))))
                                                g7755)))
                                           (world-change-dir
                                            (lambda (w dir)
                                              (letrec ((g7757
                                                        (letrec ((x7759
                                                                  (letrec ((x7760
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-change-direction
                                                                     x7760
                                                                     dir)))
                                                                 (x7758
                                                                  (world-food
                                                                   w)))
                                                          (world
                                                           x7759
                                                           x7758))))
                                                g7757)))
                                           (snake-eat
                                            (lambda (w)
                                              (letrec ((g7761
                                                        (letrec ((x7765
                                                                  (letrec ((x7766
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-grow
                                                                     x7766)))
                                                                 (x7762
                                                                  (letrec ((x7764
                                                                            (-
                                                                             BOARD-WIDTH
                                                                             1))
                                                                           (x7763
                                                                            (-
                                                                             BOARD-HEIGHT
                                                                             1)))
                                                                    (posn
                                                                     x7764
                                                                     x7763))))
                                                          (world
                                                           x7765
                                                           x7762))))
                                                g7761)))
                                           (handle-key
                                            (lambda (w ke)
                                              (letrec ((g7767
                                                        (if cnd
                                                          (letrec ((g7768
                                                                    (world-change-dir
                                                                     w
                                                                     'up)))
                                                            g7768)
                                                          (if cnd
                                                            (letrec ((g7769
                                                                      (world-change-dir
                                                                       w
                                                                       'down)))
                                                              g7769)
                                                            (if cnd
                                                              (letrec ((g7770
                                                                        (world-change-dir
                                                                         w
                                                                         'left)))
                                                                g7770)
                                                              (if cnd
                                                                (letrec ((g7771
                                                                          (world-change-dir
                                                                           w
                                                                           'right)))
                                                                  g7771)
                                                                (letrec ((g7772
                                                                          w))
                                                                  g7772)))))))
                                                g7767)))
                                           (game-over?
                                            (lambda (w)
                                              (letrec ((g7773
                                                        (letrec ((val6907
                                                                  (letrec ((x7774
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-wall-collide?
                                                                     x7774))))
                                                          (letrec ((g7775
                                                                    (if val6907
                                                                      val6907
                                                                      (letrec ((x7776
                                                                                (world-snake
                                                                                 w)))
                                                                        (snake-self-collide?
                                                                         x7776)))))
                                                            g7775))))
                                                g7773)))
                                           (world->scene
                                            (lambda (w)
                                              (letrec ((g7777
                                                        (letrec ((x7780
                                                                  (world-snake
                                                                   w))
                                                                 (x7778
                                                                  (letrec ((x7779
                                                                            (world-food
                                                                             w)))
                                                                    (food+scene
                                                                     x7779
                                                                     BACKGROUND))))
                                                          (snake+scene
                                                           x7780
                                                           x7778))))
                                                g7777)))
                                           (food+scene
                                            (lambda (f scn)
                                              (letrec ((g7781
                                                        (letrec ((x7783
                                                                  (posn-x f))
                                                                 (x7782
                                                                  (posn-y f)))
                                                          (place-image-on-grid
                                                           FOOD-IMAGE
                                                           x7783
                                                           x7782
                                                           scn))))
                                                g7781)))
                                           (place-image-on-grid
                                            (lambda (img x y scn)
                                              (letrec ((g7784
                                                        (letrec ((x7787
                                                                  (*
                                                                   GRID-SIZE
                                                                   x))
                                                                 (x7785
                                                                  (letrec ((x7786
                                                                            (*
                                                                             GRID-SIZE
                                                                             y)))
                                                                    (-
                                                                     BOARD-HEIGHT-PIXELS
                                                                     x7786))))
                                                          (place-image
                                                           img
                                                           x7787
                                                           x7785
                                                           scn))))
                                                g7784)))
                                           (snake+scene
                                            (lambda (snk scn)
                                              (letrec ((g7788
                                                        (letrec ((x7789
                                                                  (snake-segs
                                                                   snk)))
                                                          (segments+scene
                                                           x7789
                                                           scn))))
                                                g7788)))
                                           (segments+scene
                                            (lambda (segs scn)
                                              (letrec ((g7790
                                                        (if cnd
                                                          (letrec ((g7791 scn))
                                                            g7791)
                                                          (letrec ((g7792
                                                                    (letrec ((x7795
                                                                              (cdr
                                                                               segs))
                                                                             (x7793
                                                                              (letrec ((x7794
                                                                                        (car
                                                                                         segs)))
                                                                                (segment+scene
                                                                                 x7794
                                                                                 scn))))
                                                                      (segments+scene
                                                                       x7795
                                                                       x7793))))
                                                            g7792))))
                                                g7790)))
                                           (segment+scene
                                            (lambda (seg scn)
                                              (letrec ((g7796
                                                        (letrec ((x7798
                                                                  (posn-x seg))
                                                                 (x7797
                                                                  (posn-y
                                                                   seg)))
                                                          (place-image-on-grid
                                                           SEGMENT-IMAGE
                                                           x7798
                                                           x7797
                                                           scn))))
                                                g7796))))
                                    (letrec ((g7799
                                              (letrec ((x7833
                                                        ((lambda (j7007
                                                                  k7008
                                                                  f7009)
                                                           (letrec ((g7834
                                                                     (lambda (g7005
                                                                              g7006)
                                                                       (letrec ((g7835
                                                                                 (letrec ((x7836
                                                                                           (letrec ((x7838
                                                                                                     (POSN/C
                                                                                                      j7007
                                                                                                      k7008
                                                                                                      g7005))
                                                                                                    (x7837
                                                                                                     (POSN/C
                                                                                                      j7007
                                                                                                      k7008
                                                                                                      g7006)))
                                                                                             (f7009
                                                                                              x7838
                                                                                              x7837))))
                                                                                   (boolean?/c
                                                                                    j7007
                                                                                    k7008
                                                                                    x7836))))
                                                                         g7835))))
                                                             g7834))
                                                         'module
                                                         'importer
                                                         posn=?))
                                                       (x7828
                                                        (letrec ((x7829
                                                                  (letrec ((x7832
                                                                            (input))
                                                                           (x7830
                                                                            (letrec ((x7831
                                                                                      (input)))
                                                                              (cons
                                                                               x7831
                                                                               '()))))
                                                                    (cons
                                                                     x7832
                                                                     x7830))))
                                                          (cons 'posn x7829)))
                                                       (x7823
                                                        (letrec ((x7824
                                                                  (letrec ((x7827
                                                                            (input))
                                                                           (x7825
                                                                            (letrec ((x7826
                                                                                      (input)))
                                                                              (cons
                                                                               x7826
                                                                               '()))))
                                                                    (cons
                                                                     x7827
                                                                     x7825))))
                                                          (cons 'posn x7824))))
                                                (x7833 x7828 x7823)))
                                             (g7800
                                              (WORLD/C
                                               'module
                                               'importer
                                               WORLD))
                                             (g7801
                                              (image/c
                                               'module
                                               'importer
                                               BACKGROUND))
                                             (g7802
                                              (image/c
                                               'module
                                               'importer
                                               FOOD-IMAGE))
                                             (g7803
                                              (image/c
                                               'module
                                               'importer
                                               SEGMENT-IMAGE))
                                             (g7804
                                              (real?
                                               'module
                                               'importer
                                               GRID-SIZE))
                                             (g7805
                                              (real?
                                               'module
                                               'importer
                                               BOARD-HEIGHT-PIXELS))
                                             (g7806
                                              (real?
                                               'module
                                               'importer
                                               BOARD-WIDTH))
                                             (g7807
                                              (real?
                                               'module
                                               'importer
                                               BOARD-HEIGHT))
                                             (g7808
                                              (letrec ((x7844
                                                        ((lambda (j7011
                                                                  k7012
                                                                  f7013)
                                                           (letrec ((g7845
                                                                     (lambda (g7010)
                                                                       (letrec ((g7846
                                                                                 (letrec ((x7847
                                                                                           (letrec ((x7848
                                                                                                     (SNAKE/C
                                                                                                      j7011
                                                                                                      k7012
                                                                                                      g7010)))
                                                                                             (f7013
                                                                                              x7848))))
                                                                                   (boolean?/c
                                                                                    j7011
                                                                                    k7012
                                                                                    x7847))))
                                                                         g7846))))
                                                             g7845))
                                                         'module
                                                         'importer
                                                         snake-wall-collide?))
                                                       (x7839
                                                        (letrec ((x7840
                                                                  (letrec ((x7843
                                                                            (input))
                                                                           (x7841
                                                                            (letrec ((x7842
                                                                                      (input)))
                                                                              (cons
                                                                               x7842
                                                                               '()))))
                                                                    (cons
                                                                     x7843
                                                                     x7841))))
                                                          (cons
                                                           'snake
                                                           x7840))))
                                                (x7844 x7839)))
                                             (g7809
                                              (letrec ((x7854
                                                        ((lambda (j7015
                                                                  k7016
                                                                  f7017)
                                                           (letrec ((g7855
                                                                     (lambda (g7014)
                                                                       (letrec ((g7856
                                                                                 (letrec ((x7857
                                                                                           (letrec ((x7858
                                                                                                     (SNAKE/C
                                                                                                      j7015
                                                                                                      k7016
                                                                                                      g7014)))
                                                                                             (f7017
                                                                                              x7858))))
                                                                                   (boolean?/c
                                                                                    j7015
                                                                                    k7016
                                                                                    x7857))))
                                                                         g7856))))
                                                             g7855))
                                                         'module
                                                         'importer
                                                         snake-self-collide?))
                                                       (x7849
                                                        (letrec ((x7850
                                                                  (letrec ((x7853
                                                                            (input))
                                                                           (x7851
                                                                            (letrec ((x7852
                                                                                      (input)))
                                                                              (cons
                                                                               x7852
                                                                               '()))))
                                                                    (cons
                                                                     x7853
                                                                     x7851))))
                                                          (cons
                                                           'snake
                                                           x7850))))
                                                (x7854 x7849)))
                                             (g7810
                                              (letrec ((x7860
                                                        ((lambda (j7019
                                                                  k7020
                                                                  f7021)
                                                           (letrec ((g7861
                                                                     (lambda (g7018)
                                                                       (letrec ((g7862
                                                                                 (letrec ((x7867
                                                                                           (listof
                                                                                            POSN/C))
                                                                                          (x7863
                                                                                           (letrec ((x7864
                                                                                                     (letrec ((x7865
                                                                                                               (letrec ((x7866
                                                                                                                         (listof
                                                                                                                          POSN/C)))
                                                                                                                 (and/c
                                                                                                                  cons?/c
                                                                                                                  x7866))))
                                                                                                       (x7865
                                                                                                        j7019
                                                                                                        k7020
                                                                                                        g7018))))
                                                                                             (f7021
                                                                                              x7864))))
                                                                                   (x7867
                                                                                    j7019
                                                                                    k7020
                                                                                    x7863))))
                                                                         g7862))))
                                                             g7861))
                                                         'module
                                                         'importer
                                                         cut-tail))
                                                       (x7859 (input)))
                                                (x7860 x7859)))
                                             (g7811
                                              (letrec ((x7873
                                                        ((lambda (j7023
                                                                  k7024
                                                                  f7025)
                                                           (letrec ((g7874
                                                                     (lambda (g7022)
                                                                       (letrec ((g7875
                                                                                 (letrec ((x7876
                                                                                           (letrec ((x7877
                                                                                                     (SNAKE/C
                                                                                                      j7023
                                                                                                      k7024
                                                                                                      g7022)))
                                                                                             (f7025
                                                                                              x7877))))
                                                                                   (SNAKE/C
                                                                                    j7023
                                                                                    k7024
                                                                                    x7876))))
                                                                         g7875))))
                                                             g7874))
                                                         'module
                                                         'importer
                                                         snake-slither))
                                                       (x7868
                                                        (letrec ((x7869
                                                                  (letrec ((x7872
                                                                            (input))
                                                                           (x7870
                                                                            (letrec ((x7871
                                                                                      (input)))
                                                                              (cons
                                                                               x7871
                                                                               '()))))
                                                                    (cons
                                                                     x7872
                                                                     x7870))))
                                                          (cons
                                                           'snake
                                                           x7869))))
                                                (x7873 x7868)))
                                             (g7812
                                              (letrec ((x7883
                                                        ((lambda (j7027
                                                                  k7028
                                                                  f7029)
                                                           (letrec ((g7884
                                                                     (lambda (g7026)
                                                                       (letrec ((g7885
                                                                                 (letrec ((x7886
                                                                                           (letrec ((x7887
                                                                                                     (SNAKE/C
                                                                                                      j7027
                                                                                                      k7028
                                                                                                      g7026)))
                                                                                             (f7029
                                                                                              x7887))))
                                                                                   (SNAKE/C
                                                                                    j7027
                                                                                    k7028
                                                                                    x7886))))
                                                                         g7885))))
                                                             g7884))
                                                         'module
                                                         'importer
                                                         snake-grow))
                                                       (x7878
                                                        (letrec ((x7879
                                                                  (letrec ((x7882
                                                                            (input))
                                                                           (x7880
                                                                            (letrec ((x7881
                                                                                      (input)))
                                                                              (cons
                                                                               x7881
                                                                               '()))))
                                                                    (cons
                                                                     x7882
                                                                     x7880))))
                                                          (cons
                                                           'snake
                                                           x7879))))
                                                (x7883 x7878)))
                                             (g7813
                                              (letrec ((x7902
                                                        ((lambda (j7032
                                                                  k7033
                                                                  f7034)
                                                           (letrec ((g7903
                                                                     (lambda (g7030
                                                                              g7031)
                                                                       (letrec ((g7904
                                                                                 (letrec ((x7905
                                                                                           (letrec ((x7907
                                                                                                     (WORLD/C
                                                                                                      j7032
                                                                                                      k7033
                                                                                                      g7030))
                                                                                                    (x7906
                                                                                                     (DIR/C
                                                                                                      j7032
                                                                                                      k7033
                                                                                                      g7031)))
                                                                                             (f7034
                                                                                              x7907
                                                                                              x7906))))
                                                                                   (WORLD/C
                                                                                    j7032
                                                                                    k7033
                                                                                    x7905))))
                                                                         g7904))))
                                                             g7903))
                                                         'module
                                                         'importer
                                                         world-change-dir))
                                                       (x7889
                                                        (letrec ((x7890
                                                                  (letrec ((x7897
                                                                            (letrec ((x7898
                                                                                      (letrec ((x7901
                                                                                                (input))
                                                                                               (x7899
                                                                                                (letrec ((x7900
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x7900
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x7901
                                                                                         x7899))))
                                                                              (cons
                                                                               'snake
                                                                               x7898)))
                                                                           (x7891
                                                                            (letrec ((x7892
                                                                                      (letrec ((x7893
                                                                                                (letrec ((x7896
                                                                                                          (input))
                                                                                                         (x7894
                                                                                                          (letrec ((x7895
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x7895
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x7896
                                                                                                   x7894))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x7893))))
                                                                              (cons
                                                                               x7892
                                                                               '()))))
                                                                    (cons
                                                                     x7897
                                                                     x7891))))
                                                          (cons 'world x7890)))
                                                       (x7888 (input)))
                                                (x7902 x7889 x7888)))
                                             (g7814
                                              (letrec ((x7921
                                                        ((lambda (j7036
                                                                  k7037
                                                                  f7038)
                                                           (letrec ((g7922
                                                                     (lambda (g7035)
                                                                       (letrec ((g7923
                                                                                 (letrec ((x7924
                                                                                           (letrec ((x7925
                                                                                                     (WORLD/C
                                                                                                      j7036
                                                                                                      k7037
                                                                                                      g7035)))
                                                                                             (f7038
                                                                                              x7925))))
                                                                                   (WORLD/C
                                                                                    j7036
                                                                                    k7037
                                                                                    x7924))))
                                                                         g7923))))
                                                             g7922))
                                                         'module
                                                         'importer
                                                         world->world))
                                                       (x7908
                                                        (letrec ((x7909
                                                                  (letrec ((x7916
                                                                            (letrec ((x7917
                                                                                      (letrec ((x7920
                                                                                                (input))
                                                                                               (x7918
                                                                                                (letrec ((x7919
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x7919
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x7920
                                                                                         x7918))))
                                                                              (cons
                                                                               'snake
                                                                               x7917)))
                                                                           (x7910
                                                                            (letrec ((x7911
                                                                                      (letrec ((x7912
                                                                                                (letrec ((x7915
                                                                                                          (input))
                                                                                                         (x7913
                                                                                                          (letrec ((x7914
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x7914
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x7915
                                                                                                   x7913))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x7912))))
                                                                              (cons
                                                                               x7911
                                                                               '()))))
                                                                    (cons
                                                                     x7916
                                                                     x7910))))
                                                          (cons
                                                           'world
                                                           x7909))))
                                                (x7921 x7908)))
                                             (g7815
                                              (letrec ((x7940
                                                        ((lambda (j7041
                                                                  k7042
                                                                  f7043)
                                                           (letrec ((g7941
                                                                     (lambda (g7039
                                                                              g7040)
                                                                       (letrec ((g7942
                                                                                 (letrec ((x7943
                                                                                           (letrec ((x7945
                                                                                                     (WORLD/C
                                                                                                      j7041
                                                                                                      k7042
                                                                                                      g7039))
                                                                                                    (x7944
                                                                                                     (string?/c
                                                                                                      j7041
                                                                                                      k7042
                                                                                                      g7040)))
                                                                                             (f7043
                                                                                              x7945
                                                                                              x7944))))
                                                                                   (WORLD/C
                                                                                    j7041
                                                                                    k7042
                                                                                    x7943))))
                                                                         g7942))))
                                                             g7941))
                                                         'module
                                                         'importer
                                                         handle-key))
                                                       (x7927
                                                        (letrec ((x7928
                                                                  (letrec ((x7935
                                                                            (letrec ((x7936
                                                                                      (letrec ((x7939
                                                                                                (input))
                                                                                               (x7937
                                                                                                (letrec ((x7938
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x7938
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x7939
                                                                                         x7937))))
                                                                              (cons
                                                                               'snake
                                                                               x7936)))
                                                                           (x7929
                                                                            (letrec ((x7930
                                                                                      (letrec ((x7931
                                                                                                (letrec ((x7934
                                                                                                          (input))
                                                                                                         (x7932
                                                                                                          (letrec ((x7933
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x7933
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x7934
                                                                                                   x7932))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x7931))))
                                                                              (cons
                                                                               x7930
                                                                               '()))))
                                                                    (cons
                                                                     x7935
                                                                     x7929))))
                                                          (cons 'world x7928)))
                                                       (x7926 (input)))
                                                (x7940 x7927 x7926)))
                                             (g7816
                                              (letrec ((x7959
                                                        ((lambda (j7045
                                                                  k7046
                                                                  f7047)
                                                           (letrec ((g7960
                                                                     (lambda (g7044)
                                                                       (letrec ((g7961
                                                                                 (letrec ((x7962
                                                                                           (letrec ((x7963
                                                                                                     (WORLD/C
                                                                                                      j7045
                                                                                                      k7046
                                                                                                      g7044)))
                                                                                             (f7047
                                                                                              x7963))))
                                                                                   (boolean?/c
                                                                                    j7045
                                                                                    k7046
                                                                                    x7962))))
                                                                         g7961))))
                                                             g7960))
                                                         'module
                                                         'importer
                                                         game-over?))
                                                       (x7946
                                                        (letrec ((x7947
                                                                  (letrec ((x7954
                                                                            (letrec ((x7955
                                                                                      (letrec ((x7958
                                                                                                (input))
                                                                                               (x7956
                                                                                                (letrec ((x7957
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x7957
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x7958
                                                                                         x7956))))
                                                                              (cons
                                                                               'snake
                                                                               x7955)))
                                                                           (x7948
                                                                            (letrec ((x7949
                                                                                      (letrec ((x7950
                                                                                                (letrec ((x7953
                                                                                                          (input))
                                                                                                         (x7951
                                                                                                          (letrec ((x7952
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x7952
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x7953
                                                                                                   x7951))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x7950))))
                                                                              (cons
                                                                               x7949
                                                                               '()))))
                                                                    (cons
                                                                     x7954
                                                                     x7948))))
                                                          (cons
                                                           'world
                                                           x7947))))
                                                (x7959 x7946)))
                                             (g7817
                                              (letrec ((x7977
                                                        ((lambda (j7049
                                                                  k7050
                                                                  f7051)
                                                           (letrec ((g7978
                                                                     (lambda (g7048)
                                                                       (letrec ((g7979
                                                                                 (letrec ((x7980
                                                                                           (letrec ((x7981
                                                                                                     (WORLD/C
                                                                                                      j7049
                                                                                                      k7050
                                                                                                      g7048)))
                                                                                             (f7051
                                                                                              x7981))))
                                                                                   (image/c
                                                                                    j7049
                                                                                    k7050
                                                                                    x7980))))
                                                                         g7979))))
                                                             g7978))
                                                         'module
                                                         'importer
                                                         world->scene))
                                                       (x7964
                                                        (letrec ((x7965
                                                                  (letrec ((x7972
                                                                            (letrec ((x7973
                                                                                      (letrec ((x7976
                                                                                                (input))
                                                                                               (x7974
                                                                                                (letrec ((x7975
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x7975
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x7976
                                                                                         x7974))))
                                                                              (cons
                                                                               'snake
                                                                               x7973)))
                                                                           (x7966
                                                                            (letrec ((x7967
                                                                                      (letrec ((x7968
                                                                                                (letrec ((x7971
                                                                                                          (input))
                                                                                                         (x7969
                                                                                                          (letrec ((x7970
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x7970
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x7971
                                                                                                   x7969))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x7968))))
                                                                              (cons
                                                                               x7967
                                                                               '()))))
                                                                    (cons
                                                                     x7972
                                                                     x7966))))
                                                          (cons
                                                           'world
                                                           x7965))))
                                                (x7977 x7964)))
                                             (g7818
                                              (letrec ((x7988
                                                        ((lambda (j7054
                                                                  k7055
                                                                  f7056)
                                                           (letrec ((g7989
                                                                     (lambda (g7052
                                                                              g7053)
                                                                       (letrec ((g7990
                                                                                 (letrec ((x7991
                                                                                           (letrec ((x7993
                                                                                                     (POSN/C
                                                                                                      j7054
                                                                                                      k7055
                                                                                                      g7052))
                                                                                                    (x7992
                                                                                                     (image/c
                                                                                                      j7054
                                                                                                      k7055
                                                                                                      g7053)))
                                                                                             (f7056
                                                                                              x7993
                                                                                              x7992))))
                                                                                   (image/c
                                                                                    j7054
                                                                                    k7055
                                                                                    x7991))))
                                                                         g7990))))
                                                             g7989))
                                                         'module
                                                         'importer
                                                         food+scene))
                                                       (x7983
                                                        (letrec ((x7984
                                                                  (letrec ((x7987
                                                                            (input))
                                                                           (x7985
                                                                            (letrec ((x7986
                                                                                      (input)))
                                                                              (cons
                                                                               x7986
                                                                               '()))))
                                                                    (cons
                                                                     x7987
                                                                     x7985))))
                                                          (cons 'posn x7984)))
                                                       (x7982
                                                        (cons 'image '())))
                                                (x7988 x7983 x7982)))
                                             (g7819
                                              (letrec ((x7998
                                                        ((lambda (j7061
                                                                  k7062
                                                                  f7063)
                                                           (letrec ((g7999
                                                                     (lambda (g7057
                                                                              g7058
                                                                              g7059
                                                                              g7060)
                                                                       (letrec ((g8000
                                                                                 (letrec ((x8001
                                                                                           (letrec ((x8005
                                                                                                     (image/c
                                                                                                      j7061
                                                                                                      k7062
                                                                                                      g7057))
                                                                                                    (x8004
                                                                                                     (real?/c
                                                                                                      j7061
                                                                                                      k7062
                                                                                                      g7058))
                                                                                                    (x8003
                                                                                                     (real?/c
                                                                                                      j7061
                                                                                                      k7062
                                                                                                      g7059))
                                                                                                    (x8002
                                                                                                     (image/c
                                                                                                      j7061
                                                                                                      k7062
                                                                                                      g7060)))
                                                                                             (f7063
                                                                                              x8005
                                                                                              x8004
                                                                                              x8003
                                                                                              x8002))))
                                                                                   (image/c
                                                                                    j7061
                                                                                    k7062
                                                                                    x8001))))
                                                                         g8000))))
                                                             g7999))
                                                         'module
                                                         'importer
                                                         place-image-on-grid))
                                                       (x7997
                                                        (cons 'image '()))
                                                       (x7996 (input))
                                                       (x7995 (input))
                                                       (x7994
                                                        (cons 'image '())))
                                                (x7998
                                                 x7997
                                                 x7996
                                                 x7995
                                                 x7994)))
                                             (g7820
                                              (letrec ((x8012
                                                        ((lambda (j7066
                                                                  k7067
                                                                  f7068)
                                                           (letrec ((g8013
                                                                     (lambda (g7064
                                                                              g7065)
                                                                       (letrec ((g8014
                                                                                 (letrec ((x8015
                                                                                           (letrec ((x8017
                                                                                                     (SNAKE/C
                                                                                                      j7066
                                                                                                      k7067
                                                                                                      g7064))
                                                                                                    (x8016
                                                                                                     (image/c
                                                                                                      j7066
                                                                                                      k7067
                                                                                                      g7065)))
                                                                                             (f7068
                                                                                              x8017
                                                                                              x8016))))
                                                                                   (image/c
                                                                                    j7066
                                                                                    k7067
                                                                                    x8015))))
                                                                         g8014))))
                                                             g8013))
                                                         'module
                                                         'importer
                                                         snake+scene))
                                                       (x8007
                                                        (letrec ((x8008
                                                                  (letrec ((x8011
                                                                            (input))
                                                                           (x8009
                                                                            (letrec ((x8010
                                                                                      (input)))
                                                                              (cons
                                                                               x8010
                                                                               '()))))
                                                                    (cons
                                                                     x8011
                                                                     x8009))))
                                                          (cons 'snake x8008)))
                                                       (x8006
                                                        (cons 'image '())))
                                                (x8012 x8007 x8006)))
                                             (g7821
                                              (letrec ((x8020
                                                        ((lambda (j7071
                                                                  k7072
                                                                  f7073)
                                                           (letrec ((g8021
                                                                     (lambda (g7069
                                                                              g7070)
                                                                       (letrec ((g8022
                                                                                 (letrec ((x8023
                                                                                           (letrec ((x8025
                                                                                                     (letrec ((x8026
                                                                                                               (listof
                                                                                                                POSN/C)))
                                                                                                       (x8026
                                                                                                        j7071
                                                                                                        k7072
                                                                                                        g7069)))
                                                                                                    (x8024
                                                                                                     (image/c
                                                                                                      j7071
                                                                                                      k7072
                                                                                                      g7070)))
                                                                                             (f7073
                                                                                              x8025
                                                                                              x8024))))
                                                                                   (image/c
                                                                                    j7071
                                                                                    k7072
                                                                                    x8023))))
                                                                         g8022))))
                                                             g8021))
                                                         'module
                                                         'importer
                                                         segments+scene))
                                                       (x8019 (input))
                                                       (x8018
                                                        (cons 'image '())))
                                                (x8020 x8019 x8018)))
                                             (g7822
                                              (letrec ((x8033
                                                        ((lambda (j7076
                                                                  k7077
                                                                  f7078)
                                                           (letrec ((g8034
                                                                     (lambda (g7074
                                                                              g7075)
                                                                       (letrec ((g8035
                                                                                 (letrec ((x8036
                                                                                           (letrec ((x8038
                                                                                                     (POSN/C
                                                                                                      j7076
                                                                                                      k7077
                                                                                                      g7074))
                                                                                                    (x8037
                                                                                                     (image/c
                                                                                                      j7076
                                                                                                      k7077
                                                                                                      g7075)))
                                                                                             (f7078
                                                                                              x8038
                                                                                              x8037))))
                                                                                   (image/c
                                                                                    j7076
                                                                                    k7077
                                                                                    x8036))))
                                                                         g8035))))
                                                             g8034))
                                                         'module
                                                         'importer
                                                         segment+scene))
                                                       (x8028
                                                        (letrec ((x8029
                                                                  (letrec ((x8032
                                                                            (input))
                                                                           (x8030
                                                                            (letrec ((x8031
                                                                                      (input)))
                                                                              (cons
                                                                               x8031
                                                                               '()))))
                                                                    (cons
                                                                     x8032
                                                                     x8030))))
                                                          (cons 'posn x8029)))
                                                       (x8027
                                                        (cons 'image '())))
                                                (x8033 x8028 x8027))))
                                      g7822))))
                          g7108))))
              g7106)))
    g7105))
