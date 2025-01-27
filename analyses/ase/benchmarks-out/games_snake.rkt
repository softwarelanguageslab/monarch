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
                                                                                                                (letrec ((x7335
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7334
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7317
                                                                                                                          (letrec ((x7331
                                                                                                                                    (letrec ((x7332
                                                                                                                                              (letrec ((x7333
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7333))))
                                                                                                                                      (x7332)))
                                                                                                                                   (x7318
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
                                                                                                                            (let x7331 x7318))))
                                                                                                                  (and x7335
                                                                                                                       x7334
                                                                                                                       x7317)))))
                                                                                                      g7316)))))
                                                                                        g7307)))))
                                                                          g7303)))))
                                                            g7300))))
                                                g7299)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7336
                                                        (letrec ((x7337
                                                                  (letrec ((x7338
                                                                            (letrec ((x7339
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7339))))
                                                                    (car
                                                                     x7338))))
                                                          (cdr x7337))))
                                                g7336)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7340
                                                        (letrec ((x7341
                                                                  (letrec ((x7342
                                                                            (letrec ((x7343
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7343))))
                                                                    (car
                                                                     x7342))))
                                                          (car x7341))))
                                                g7340)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7344 (eq? x y)))
                                                g7344)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7345
                                                        (letrec ((x7347
                                                                  (number? x)))
                                                          (assert x7347)))
                                                       (g7346
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7348
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7349
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7349)))))
                                                            g7348))))
                                                g7346)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7350
                                                        (letrec ((x7353
                                                                  (string?
                                                                   filename)))
                                                          (assert x7353)))
                                                       (g7351
                                                        (letrec ((x7354
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7354)))
                                                       (g7352
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7355
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7356 res))
                                                            g7356))))
                                                g7352)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7357 (cons x '())))
                                                g7357)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7358
                                                        (letrec ((x7361
                                                                  (char? c1)))
                                                          (assert x7361)))
                                                       (g7359
                                                        (letrec ((x7362
                                                                  (char? c2)))
                                                          (assert x7362)))
                                                       (g7360
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7363
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7363))))
                                                g7360)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7364
                                                        (letrec ((x7365
                                                                  (letrec ((x7366
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7366))))
                                                          (cdr x7365))))
                                                g7364)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7367
                                                        (letrec ((x7368
                                                                  (letrec ((x7369
                                                                            (letrec ((x7370
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7370))))
                                                                    (car
                                                                     x7369))))
                                                          (cdr x7368))))
                                                g7367)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7371
                                                        (letrec ((x7372
                                                                  (letrec ((x7373
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7373))))
                                                          (car x7372))))
                                                g7371)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7374
                                                        (letrec ((x7375
                                                                  (letrec ((x7376
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7376))))
                                                          (car x7375))))
                                                g7374)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7377
                                                        (letrec ((x7380
                                                                  (char? c1)))
                                                          (assert x7380)))
                                                       (g7378
                                                        (letrec ((x7381
                                                                  (char? c2)))
                                                          (assert x7381)))
                                                       (g7379
                                                        (letrec ((x7382
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7382))))
                                                g7379)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7383
                                                        (letrec ((x7384
                                                                  (letrec ((x7385
                                                                            (letrec ((x7386
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7386))))
                                                                    (car
                                                                     x7385))))
                                                          (car x7384))))
                                                g7383)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7387
                                                        (letrec ((x7389
                                                                  (number? x)))
                                                          (assert x7389)))
                                                       (g7388 (< x 0)))
                                                g7388)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7390 (memq e l)))
                                                g7390)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7391
                                                        (letrec ((x7392
                                                                  (letrec ((x7393
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7393))))
                                                          (car x7392))))
                                                g7391)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7394 '())) g7394)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7395
                                                        (letrec ((x7397
                                                                  (list? l)))
                                                          (assert x7397)))
                                                       (g7396
                                                        (letrec ((x-cnd7398
                                                                  (null? l)))
                                                          (if x-cnd7398
                                                            '()
                                                            (letrec ((x7401
                                                                      (letrec ((x7402
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7402)))
                                                                     (x7399
                                                                      (letrec ((x7400
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7400))))
                                                              (append
                                                               x7401
                                                               x7399))))))
                                                g7396)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7403
                                                        (letrec ((x7404
                                                                  (letrec ((x7405
                                                                            (letrec ((x7406
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7406))))
                                                                    (car
                                                                     x7405))))
                                                          (car x7404))))
                                                g7403)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7407
                                                        (letrec ((x7408
                                                                  (letrec ((x7409
                                                                            (letrec ((x7410
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7410))))
                                                                    (cdr
                                                                     x7409))))
                                                          (cdr x7408))))
                                                g7407)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7411
                                                        (letrec ((x7413
                                                                  (number? x)))
                                                          (assert x7413)))
                                                       (g7412
                                                        (letrec ((x7414
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7414))))
                                                g7412)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7415
                                                        (letrec ((x7416
                                                                  (letrec ((x7417
                                                                            (letrec ((x7418
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7418))))
                                                                    (car
                                                                     x7417))))
                                                          (car x7416))))
                                                g7415)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7419
                                                        (letrec ((x7422
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7422)))
                                                       (g7420
                                                        (letrec ((x7423
                                                                  (list?
                                                                   args)))
                                                          (assert x7423)))
                                                       (g7421
                                                        (if cnd
                                                          (letrec ((g7424
                                                                    (proc)))
                                                            g7424)
                                                          (if cnd
                                                            (letrec ((g7425
                                                                      (letrec ((x7426
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7426))))
                                                              g7425)
                                                            (if cnd
                                                              (letrec ((g7427
                                                                        (letrec ((x7429
                                                                                  (car
                                                                                   args))
                                                                                 (x7428
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7429
                                                                           x7428))))
                                                                g7427)
                                                              (if cnd
                                                                (letrec ((g7430
                                                                          (letrec ((x7433
                                                                                    (car
                                                                                     args))
                                                                                   (x7432
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7431
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7433
                                                                             x7432
                                                                             x7431))))
                                                                  g7430)
                                                                (if cnd
                                                                  (letrec ((g7434
                                                                            (letrec ((x7438
                                                                                      (car
                                                                                       args))
                                                                                     (x7437
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7436
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7435
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7438
                                                                               x7437
                                                                               x7436
                                                                               x7435))))
                                                                    g7434)
                                                                  (if cnd
                                                                    (letrec ((g7439
                                                                              (letrec ((x7445
                                                                                        (car
                                                                                         args))
                                                                                       (x7444
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7443
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7442
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7440
                                                                                        (letrec ((x7441
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7441))))
                                                                                (proc
                                                                                 x7445
                                                                                 x7444
                                                                                 x7443
                                                                                 x7442
                                                                                 x7440))))
                                                                      g7439)
                                                                    (if cnd
                                                                      (letrec ((g7446
                                                                                (letrec ((x7454
                                                                                          (car
                                                                                           args))
                                                                                         (x7453
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7452
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7451
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7449
                                                                                          (letrec ((x7450
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7450)))
                                                                                         (x7447
                                                                                          (letrec ((x7448
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7448))))
                                                                                  (proc
                                                                                   x7454
                                                                                   x7453
                                                                                   x7452
                                                                                   x7451
                                                                                   x7449
                                                                                   x7447))))
                                                                        g7446)
                                                                      (if cnd
                                                                        (letrec ((g7455
                                                                                  (letrec ((x7465
                                                                                            (car
                                                                                             args))
                                                                                           (x7464
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7463
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7462
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7460
                                                                                            (letrec ((x7461
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7461)))
                                                                                           (x7458
                                                                                            (letrec ((x7459
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7459)))
                                                                                           (x7456
                                                                                            (letrec ((x7457
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7457))))
                                                                                    (proc
                                                                                     x7465
                                                                                     x7464
                                                                                     x7463
                                                                                     x7462
                                                                                     x7460
                                                                                     x7458
                                                                                     x7456))))
                                                                          g7455)
                                                                        (letrec ((g7466
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7466)))))))))))
                                                g7421)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7467
                                                        (letrec ((x7469
                                                                  (list? l)))
                                                          (assert x7469)))
                                                       (g7468
                                                        (letrec ((x-cnd7470
                                                                  (null? l)))
                                                          (if x-cnd7470
                                                            #f
                                                            (letrec ((x-cnd7471
                                                                      (letrec ((x7472
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7472
                                                                         e))))
                                                              (if x-cnd7471
                                                                l
                                                                (letrec ((x7473
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7473))))))))
                                                g7468)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7474
                                                        (letrec ((x7475
                                                                  (letrec ((x7476
                                                                            (letrec ((x7477
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7477))))
                                                                    (cdr
                                                                     x7476))))
                                                          (cdr x7475))))
                                                g7474)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7478
                                                        (letrec ((x7479
                                                                  (letrec ((x7480
                                                                            (letrec ((x7481
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7481))))
                                                                    (cdr
                                                                     x7480))))
                                                          (car x7479))))
                                                g7478)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7482 (random 42)))
                                                g7482)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7483
                                                        (letrec ((x7485
                                                                  (number? x)))
                                                          (assert x7485)))
                                                       (g7484 (= x 0)))
                                                g7484)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7486
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7487
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7487))))
                                                g7486)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7488
                                                        (letrec ((x7489
                                                                  (cdr x)))
                                                          (car x7489))))
                                                g7488)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7490
                                                        (letrec ((val6900
                                                                  (letrec ((x7493
                                                                            (pair?
                                                                             l))
                                                                           (x7491
                                                                            (letrec ((x7492
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7492))))
                                                                    (and x7493
                                                                         x7491))))
                                                          (letrec ((g7494
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7494))))
                                                g7490)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7495
                                                        (letrec ((x7496
                                                                  (letrec ((x7497
                                                                            (letrec ((x7498
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7498))))
                                                                    (cdr
                                                                     x7497))))
                                                          (cdr x7496))))
                                                g7495)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7499
                                                        (letrec ((x-cnd7500
                                                                  (letrec ((x7501
                                                                            #\0))
                                                                    (char<=?
                                                                     x7501
                                                                     c))))
                                                          (if x-cnd7500
                                                            (letrec ((x7502
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7502))
                                                            #f))))
                                                g7499)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7503
                                                        (letrec ((x7505
                                                                  (list? l)))
                                                          (assert x7505)))
                                                       (g7504
                                                        (letrec ((x-cnd7506
                                                                  (null? l)))
                                                          (if x-cnd7506
                                                            #f
                                                            (letrec ((x-cnd7507
                                                                      (letrec ((x7508
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7508
                                                                         k))))
                                                              (if x-cnd7507
                                                                (car l)
                                                                (letrec ((x7509
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7509))))))))
                                                g7504)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7510 (if x #f #t)))
                                                g7510)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7511 (append l1 l2)))
                                                g7511)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7512
                                                        (letrec ((x7514
                                                                  (list? l)))
                                                          (assert x7514)))
                                                       (g7513
                                                        (letrec ((x-cnd7515
                                                                  (null? l)))
                                                          (if x-cnd7515
                                                            #f
                                                            (letrec ((x-cnd7516
                                                                      (letrec ((x7517
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7517
                                                                         e))))
                                                              (if x-cnd7516
                                                                l
                                                                (letrec ((x7518
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7518))))))))
                                                g7513)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7519
                                                        (letrec ((x7520
                                                                  (letrec ((x7521
                                                                            (letrec ((x7522
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7522))))
                                                                    (cdr
                                                                     x7521))))
                                                          (car x7520))))
                                                g7519)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7523
                                                        (letrec ((x7525
                                                                  (list? l)))
                                                          (assert x7525)))
                                                       (g7524
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7526
                                                                              (letrec ((x-cnd7527
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7527
                                                                                  0
                                                                                  (letrec ((x7528
                                                                                            (letrec ((x7529
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7529))))
                                                                                    (+
                                                                                     1
                                                                                     x7528))))))
                                                                      g7526))))
                                                          (letrec ((g7530
                                                                    (rec l)))
                                                            g7530))))
                                                g7524)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7531
                                                        (letrec ((x7534
                                                                  (char? c1)))
                                                          (assert x7534)))
                                                       (g7532
                                                        (letrec ((x7535
                                                                  (char? c2)))
                                                          (assert x7535)))
                                                       (g7533
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7536
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7536))))
                                                g7533)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7537
                                                        (letrec ((x7538
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7538))))
                                                g7537)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7539
                                                        (letrec ((x7540
                                                                  (letrec ((x7541
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7541))))
                                                          (cdr x7540))))
                                                g7539)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7542
                                                        (letrec ((x7544
                                                                  (list? l)))
                                                          (assert x7544)))
                                                       (g7543
                                                        (letrec ((x-cnd7545
                                                                  (null? l)))
                                                          (if x-cnd7545
                                                            #f
                                                            (letrec ((x-cnd7546
                                                                      (letrec ((x7547
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7547
                                                                         k))))
                                                              (if x-cnd7546
                                                                (car l)
                                                                (letrec ((x7548
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7548))))))))
                                                g7543)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7549
                                                        (letrec ((x7550
                                                                  (car x)))
                                                          (car x7550))))
                                                g7549)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7551
                                                        (letrec ((x7554
                                                                  (char? c1)))
                                                          (assert x7554)))
                                                       (g7552
                                                        (letrec ((x7555
                                                                  (char? c2)))
                                                          (assert x7555)))
                                                       (g7553
                                                        (letrec ((x7556
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7556))))
                                                g7553)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7557
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7558
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7558))))
                                                g7557)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7559
                                                        (letrec ((x7562
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7562)))
                                                       (g7560
                                                        (letrec ((x7563
                                                                  (list? l)))
                                                          (assert x7563)))
                                                       (g7561
                                                        (letrec ((x-cnd7564
                                                                  (null? l)))
                                                          (if x-cnd7564
                                                            #t
                                                            (letrec ((x-cnd7565
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7565
                                                                (letrec ((g7566
                                                                          (letrec ((x7568
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7568)))
                                                                         (g7567
                                                                          (letrec ((x7569
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7569))))
                                                                  g7567)
                                                                '()))))))
                                                g7561)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7570
                                                        (letrec ((x7572
                                                                  (number? x)))
                                                          (assert x7572)))
                                                       (g7571
                                                        (letrec ((x-cnd7573
                                                                  (< x 0)))
                                                          (if x-cnd7573
                                                            (- 0 x)
                                                            x))))
                                                g7571)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7574
                                                        (letrec ((x7577
                                                                  (char? c1)))
                                                          (assert x7577)))
                                                       (g7575
                                                        (letrec ((x7578
                                                                  (char? c2)))
                                                          (assert x7578)))
                                                       (g7576
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7579
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7579))))
                                                g7576)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7580
                                                        (letrec ((x7581
                                                                  (letrec ((x7582
                                                                            (letrec ((x7583
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7583))))
                                                                    (cdr
                                                                     x7582))))
                                                          (car x7581))))
                                                g7580)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7584 #f)) g7584)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7585
                                                        (letrec ((x7587
                                                                  (letrec ((x7588
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7588)))
                                                                 (x7586
                                                                  (gcd m n)))
                                                          (/ x7587 x7586))))
                                                g7585)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7589
                                                        (letrec ((x7591
                                                                  (number? x)))
                                                          (assert x7591)))
                                                       (g7590
                                                        (letrec ((x7592
                                                                  (<= x y)))
                                                          (not x7592))))
                                                g7590)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7593
                                                        (letrec ((x7597
                                                                  (list? l)))
                                                          (assert x7597)))
                                                       (g7594
                                                        (letrec ((x7598
                                                                  (number?
                                                                   index)))
                                                          (assert x7598)))
                                                       (g7595
                                                        (letrec ((x7599
                                                                  (letrec ((x7600
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7600))))
                                                          (assert x7599)))
                                                       (g7596
                                                        (letrec ((x-cnd7601
                                                                  (= index 0)))
                                                          (if x-cnd7601
                                                            (car l)
                                                            (letrec ((x7603
                                                                      (cdr l))
                                                                     (x7602
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7603
                                                               x7602))))))
                                                g7596)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7604
                                                        (letrec ((x-cnd7605
                                                                  (= b 0)))
                                                          (if x-cnd7605
                                                            a
                                                            (letrec ((x7606
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7606))))))
                                                g7604)))
                                           (image
                                            (lambda ()
                                              (letrec ((g7607
                                                        (cons 'image '())))
                                                g7607)))
                                           (image?
                                            (lambda (image7079)
                                              (letrec ((g7608
                                                        (letrec ((x7609
                                                                  (car
                                                                   image7079)))
                                                          (eq? x7609 'image))))
                                                g7608)))
                                           (image/c
                                            (lambda (j6978 k6979 v6977)
                                              (letrec ((g7610
                                                        (cons image '())))
                                                g7610)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g7611 (image)))
                                                g7611)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g7612 (image)))
                                                g7612)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g7613 (image)))
                                                g7613)))
                                           (posn
                                            (lambda (x7081 y7082)
                                              (letrec ((g7614
                                                        (letrec ((x7615
                                                                  (letrec ((x7616
                                                                            (cons
                                                                             y7082
                                                                             '())))
                                                                    (cons
                                                                     x7081
                                                                     x7616))))
                                                          (cons 'posn x7615))))
                                                g7614)))
                                           (posn?
                                            (lambda (posn7080)
                                              (letrec ((g7617
                                                        (letrec ((x7618
                                                                  (car
                                                                   posn7080)))
                                                          (eq? x7618 'posn))))
                                                g7617)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g7619
                                                        (letrec ((x7620
                                                                  (cdr posn)))
                                                          (car x7620))))
                                                g7619)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g7621
                                                        (letrec ((x7622
                                                                  (letrec ((x7623
                                                                            (cdr
                                                                             posn)))
                                                                    (cdr
                                                                     x7623))))
                                                          (car x7622))))
                                                g7621)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g7624
                                                        (letrec ((x-cnd7625
                                                                  (letrec ((x7627
                                                                            (posn-x
                                                                             p1))
                                                                           (x7626
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x7627
                                                                     x7626))))
                                                          (if x-cnd7625
                                                            (letrec ((x7629
                                                                      (posn-y
                                                                       p1))
                                                                     (x7628
                                                                      (posn-y
                                                                       p2)))
                                                              (= x7629 x7628))
                                                            #f))))
                                                g7624)))
                                           (snake
                                            (lambda (dir7086 segs7087)
                                              (letrec ((g7630
                                                        (letrec ((x7631
                                                                  (letrec ((x7632
                                                                            (cons
                                                                             segs7087
                                                                             '())))
                                                                    (cons
                                                                     dir7086
                                                                     x7632))))
                                                          (cons
                                                           'snake
                                                           x7631))))
                                                g7630)))
                                           (snake?
                                            (lambda (snake7085)
                                              (letrec ((g7633
                                                        (letrec ((x7634
                                                                  (car
                                                                   snake7085)))
                                                          (eq? x7634 'snake))))
                                                g7633)))
                                           (snake-dir
                                            (lambda (snake)
                                              (letrec ((g7635
                                                        (letrec ((x7636
                                                                  (cdr snake)))
                                                          (car x7636))))
                                                g7635)))
                                           (snake-segs
                                            (lambda (snake)
                                              (letrec ((g7637
                                                        (letrec ((x7638
                                                                  (letrec ((x7639
                                                                            (cdr
                                                                             snake)))
                                                                    (cdr
                                                                     x7639))))
                                                          (car x7638))))
                                                g7637)))
                                           (world
                                            (lambda (snake7091 food7092)
                                              (letrec ((g7640
                                                        (letrec ((x7641
                                                                  (letrec ((x7642
                                                                            (cons
                                                                             food7092
                                                                             '())))
                                                                    (cons
                                                                     snake7091
                                                                     x7642))))
                                                          (cons
                                                           'world
                                                           x7641))))
                                                g7640)))
                                           (world?
                                            (lambda (world7090)
                                              (letrec ((g7643
                                                        (letrec ((x7644
                                                                  (car
                                                                   world7090)))
                                                          (eq? x7644 'world))))
                                                g7643)))
                                           (world-snake
                                            (lambda (world)
                                              (letrec ((g7645
                                                        (letrec ((x7646
                                                                  (cdr world)))
                                                          (car x7646))))
                                                g7645)))
                                           (world-food
                                            (lambda (world)
                                              (letrec ((g7647
                                                        (letrec ((x7648
                                                                  (letrec ((x7649
                                                                            (cdr
                                                                             world)))
                                                                    (cdr
                                                                     x7649))))
                                                          (car x7648))))
                                                g7647)))
                                           (DIR/C
                                            (lambda (g6984 g6985 g6986)
                                              (letrec ((g7650
                                                        (letrec ((x-cnd7651
                                                                  ((lambda (v6983)
                                                                     (letrec ((g7652
                                                                               (letrec ((x-cnd7653
                                                                                         (eq?
                                                                                          'up
                                                                                          v6983)))
                                                                                 (if x-cnd7653
                                                                                   #t
                                                                                   (letrec ((x-cnd7654
                                                                                             (eq?
                                                                                              'down
                                                                                              v6983)))
                                                                                     (if x-cnd7654
                                                                                       #t
                                                                                       (letrec ((x-cnd7655
                                                                                                 (eq?
                                                                                                  'left
                                                                                                  v6983)))
                                                                                         (if x-cnd7655
                                                                                           #t
                                                                                           (eq?
                                                                                            'right
                                                                                            v6983)))))))))
                                                                       g7652))
                                                                   g6986)))
                                                          (if x-cnd7651
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
                                                g7650)))
                                           (POSN/C
                                            (lambda (j6988 k6989 v6987)
                                              (letrec ((g7656
                                                        (letrec ((checked6990
                                                                  (letrec ((x7657
                                                                            (car
                                                                             v6987)))
                                                                    (real?/c
                                                                     'j6988
                                                                     'k6989
                                                                     x7657))))
                                                          (letrec ((g7658
                                                                    (letrec ((checked6991
                                                                              (letrec ((x7659
                                                                                        (letrec ((x7660
                                                                                                  (cdr
                                                                                                   v6987)))
                                                                                          (car
                                                                                           x7660))))
                                                                                (real?/c
                                                                                 'j6988
                                                                                 'k6989
                                                                                 x7659))))
                                                                      (letrec ((g7661
                                                                                (letrec ((x7662
                                                                                          (letrec ((x7663
                                                                                                    (cons
                                                                                                     checked6991
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked6990
                                                                                             x7663))))
                                                                                  (cons
                                                                                   posn
                                                                                   x7662))))
                                                                        g7661))))
                                                            g7658))))
                                                g7656)))
                                           (SNAKE/C
                                            (lambda (j6994 k6995 v6993)
                                              (letrec ((g7664
                                                        (letrec ((checked6996
                                                                  (letrec ((x7665
                                                                            (car
                                                                             v6993)))
                                                                    (DIR/C
                                                                     'j6994
                                                                     'k6995
                                                                     x7665))))
                                                          (letrec ((g7666
                                                                    (letrec ((checked6997
                                                                              (letrec ((x7669
                                                                                        (letrec ((x7670
                                                                                                  (listof
                                                                                                   POSN/C)))
                                                                                          (and/c
                                                                                           cons?/c
                                                                                           x7670)))
                                                                                       (x7667
                                                                                        (letrec ((x7668
                                                                                                  (cdr
                                                                                                   v6993)))
                                                                                          (car
                                                                                           x7668))))
                                                                                (x7669
                                                                                 'j6994
                                                                                 'k6995
                                                                                 x7667))))
                                                                      (letrec ((g7671
                                                                                (letrec ((x7672
                                                                                          (letrec ((x7673
                                                                                                    (cons
                                                                                                     checked6997
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked6996
                                                                                             x7673))))
                                                                                  (cons
                                                                                   snake
                                                                                   x7672))))
                                                                        g7671))))
                                                            g7666))))
                                                g7664)))
                                           (WORLD/C
                                            (lambda (j7000 k7001 v6999)
                                              (letrec ((g7674
                                                        (letrec ((checked7002
                                                                  (letrec ((x7675
                                                                            (car
                                                                             v6999)))
                                                                    (SNAKE/C
                                                                     'j7000
                                                                     'k7001
                                                                     x7675))))
                                                          (letrec ((g7676
                                                                    (letrec ((checked7003
                                                                              (letrec ((x7677
                                                                                        (letrec ((x7678
                                                                                                  (cdr
                                                                                                   v6999)))
                                                                                          (car
                                                                                           x7678))))
                                                                                (POSN/C
                                                                                 'j7000
                                                                                 'k7001
                                                                                 x7677))))
                                                                      (letrec ((g7679
                                                                                (letrec ((x7680
                                                                                          (letrec ((x7681
                                                                                                    (cons
                                                                                                     checked7003
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7002
                                                                                             x7681))))
                                                                                  (cons
                                                                                   world
                                                                                   x7680))))
                                                                        g7679))))
                                                            g7676))))
                                                g7674)))
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
                                            (letrec ((x7683
                                                      (letrec ((x7684
                                                                (letrec ((x7685
                                                                          (posn
                                                                           5
                                                                           3)))
                                                                  (cons
                                                                   x7685
                                                                   empty))))
                                                        (snake 'right x7684)))
                                                     (x7682 (posn 8 12)))
                                              (world x7683 x7682)))
                                           (snake-wall-collide?
                                            (lambda (snk)
                                              (letrec ((g7686
                                                        (letrec ((x7687
                                                                  (letrec ((x7688
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x7688))))
                                                          (head-collide?
                                                           x7687))))
                                                g7686)))
                                           (head-collide?
                                            (lambda (p)
                                              (letrec ((g7689
                                                        (letrec ((val6904
                                                                  (letrec ((x7690
                                                                            (posn-x
                                                                             p)))
                                                                    (<=
                                                                     x7690
                                                                     0))))
                                                          (letrec ((g7691
                                                                    (if val6904
                                                                      val6904
                                                                      (letrec ((val6905
                                                                                (letrec ((x7692
                                                                                          (posn-x
                                                                                           p)))
                                                                                  (>=
                                                                                   x7692
                                                                                   BOARD-WIDTH))))
                                                                        (letrec ((g7693
                                                                                  (if val6905
                                                                                    val6905
                                                                                    (letrec ((val6906
                                                                                              (letrec ((x7694
                                                                                                        (posn-y
                                                                                                         p)))
                                                                                                (<=
                                                                                                 x7694
                                                                                                 0))))
                                                                                      (letrec ((g7695
                                                                                                (if val6906
                                                                                                  val6906
                                                                                                  (letrec ((x7696
                                                                                                            (posn-y
                                                                                                             p)))
                                                                                                    (>=
                                                                                                     x7696
                                                                                                     BOARD-HEIGHT)))))
                                                                                        g7695)))))
                                                                          g7693)))))
                                                            g7691))))
                                                g7689)))
                                           (snake-self-collide?
                                            (lambda (snk)
                                              (letrec ((g7697
                                                        (letrec ((x7700
                                                                  (letrec ((x7701
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x7701)))
                                                                 (x7698
                                                                  (letrec ((x7699
                                                                            (snake-segs
                                                                             snk)))
                                                                    (cdr
                                                                     x7699))))
                                                          (segs-self-collide?
                                                           x7700
                                                           x7698))))
                                                g7697)))
                                           (segs-self-collide?
                                            (lambda (h segs)
                                              (letrec ((g7702
                                                        (if cnd
                                                          (letrec ((g7703 #f))
                                                            g7703)
                                                          (letrec ((g7704
                                                                    (letrec ((x7707
                                                                              (letrec ((x7708
                                                                                        (car
                                                                                         segs)))
                                                                                (posn=?
                                                                                 x7708
                                                                                 h)))
                                                                             (x7705
                                                                              (letrec ((x7706
                                                                                        (cdr
                                                                                         segs)))
                                                                                (segs-self-collide?
                                                                                 h
                                                                                 x7706))))
                                                                      (or x7707
                                                                          x7705))))
                                                            g7704))))
                                                g7702)))
                                           (cut-tail
                                            (lambda (segs)
                                              (letrec ((g7709
                                                        (letrec ((r
                                                                  (cdr segs)))
                                                          (letrec ((g7710
                                                                    (if cnd
                                                                      (letrec ((g7711
                                                                                empty))
                                                                        g7711)
                                                                      (letrec ((g7712
                                                                                (letrec ((x7714
                                                                                          (car
                                                                                           segs))
                                                                                         (x7713
                                                                                          (cut-tail
                                                                                           r)))
                                                                                  (cons
                                                                                   x7714
                                                                                   x7713))))
                                                                        g7712))))
                                                            g7710))))
                                                g7709)))
                                           (next-head
                                            (lambda (seg dir)
                                              (letrec ((g7715
                                                        (if cnd
                                                          (letrec ((g7716
                                                                    (letrec ((x7718
                                                                              (letrec ((x7719
                                                                                        (posn-x
                                                                                         seg)))
                                                                                (add1
                                                                                 x7719)))
                                                                             (x7717
                                                                              (posn-y
                                                                               seg)))
                                                                      (posn
                                                                       x7718
                                                                       x7717))))
                                                            g7716)
                                                          (if cnd
                                                            (letrec ((g7720
                                                                      (letrec ((x7722
                                                                                (letrec ((x7723
                                                                                          (posn-x
                                                                                           seg)))
                                                                                  (sub1
                                                                                   x7723)))
                                                                               (x7721
                                                                                (posn-y
                                                                                 seg)))
                                                                        (posn
                                                                         x7722
                                                                         x7721))))
                                                              g7720)
                                                            (if cnd
                                                              (letrec ((g7724
                                                                        (letrec ((x7727
                                                                                  (posn-x
                                                                                   seg))
                                                                                 (x7725
                                                                                  (letrec ((x7726
                                                                                            (posn-y
                                                                                             seg)))
                                                                                    (sub1
                                                                                     x7726))))
                                                                          (posn
                                                                           x7727
                                                                           x7725))))
                                                                g7724)
                                                              (letrec ((g7728
                                                                        (letrec ((x7731
                                                                                  (posn-x
                                                                                   seg))
                                                                                 (x7729
                                                                                  (letrec ((x7730
                                                                                            (posn-y
                                                                                             seg)))
                                                                                    (add1
                                                                                     x7730))))
                                                                          (posn
                                                                           x7731
                                                                           x7729))))
                                                                g7728))))))
                                                g7715)))
                                           (snake-slither
                                            (lambda (snk)
                                              (letrec ((g7732
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g7733
                                                                    (letrec ((x7734
                                                                              (letrec ((x7737
                                                                                        (letrec ((x7738
                                                                                                  (letrec ((x7739
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x7739))))
                                                                                          (next-head
                                                                                           x7738
                                                                                           d)))
                                                                                       (x7735
                                                                                        (letrec ((x7736
                                                                                                  (snake-segs
                                                                                                   snk)))
                                                                                          (cut-tail
                                                                                           x7736))))
                                                                                (cons
                                                                                 x7737
                                                                                 x7735))))
                                                                      (snake
                                                                       d
                                                                       x7734))))
                                                            g7733))))
                                                g7732)))
                                           (snake-grow
                                            (lambda (snk)
                                              (letrec ((g7740
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g7741
                                                                    (letrec ((x7742
                                                                              (letrec ((x7744
                                                                                        (letrec ((x7745
                                                                                                  (letrec ((x7746
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x7746))))
                                                                                          (next-head
                                                                                           x7745
                                                                                           d)))
                                                                                       (x7743
                                                                                        (snake-segs
                                                                                         snk)))
                                                                                (cons
                                                                                 x7744
                                                                                 x7743))))
                                                                      (snake
                                                                       d
                                                                       x7742))))
                                                            g7741))))
                                                g7740)))
                                           (world->world
                                            (lambda (w)
                                              (letrec ((g7747
                                                        (if cnd
                                                          (letrec ((g7748
                                                                    (snake-eat
                                                                     w)))
                                                            g7748)
                                                          (letrec ((g7749
                                                                    (letrec ((x7751
                                                                              (letrec ((x7752
                                                                                        (world-snake
                                                                                         w)))
                                                                                (snake-slither
                                                                                 x7752)))
                                                                             (x7750
                                                                              (world-food
                                                                               w)))
                                                                      (world
                                                                       x7751
                                                                       x7750))))
                                                            g7749))))
                                                g7747)))
                                           (eating?
                                            (lambda (w)
                                              (letrec ((g7753
                                                        (letrec ((x7757
                                                                  (world-food
                                                                   w))
                                                                 (x7754
                                                                  (letrec ((x7755
                                                                            (letrec ((x7756
                                                                                      (world-snake
                                                                                       w)))
                                                                              (snake-segs
                                                                               x7756))))
                                                                    (car
                                                                     x7755))))
                                                          (posn=?
                                                           x7757
                                                           x7754))))
                                                g7753)))
                                           (snake-change-direction
                                            (lambda (snk dir)
                                              (letrec ((g7758
                                                        (letrec ((x7759
                                                                  (snake-segs
                                                                   snk)))
                                                          (snake dir x7759))))
                                                g7758)))
                                           (world-change-dir
                                            (lambda (w dir)
                                              (letrec ((g7760
                                                        (letrec ((x7762
                                                                  (letrec ((x7763
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-change-direction
                                                                     x7763
                                                                     dir)))
                                                                 (x7761
                                                                  (world-food
                                                                   w)))
                                                          (world
                                                           x7762
                                                           x7761))))
                                                g7760)))
                                           (snake-eat
                                            (lambda (w)
                                              (letrec ((g7764
                                                        (letrec ((x7768
                                                                  (letrec ((x7769
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-grow
                                                                     x7769)))
                                                                 (x7765
                                                                  (letrec ((x7767
                                                                            (-
                                                                             BOARD-WIDTH
                                                                             1))
                                                                           (x7766
                                                                            (-
                                                                             BOARD-HEIGHT
                                                                             1)))
                                                                    (posn
                                                                     x7767
                                                                     x7766))))
                                                          (world
                                                           x7768
                                                           x7765))))
                                                g7764)))
                                           (handle-key
                                            (lambda (w ke)
                                              (letrec ((g7770
                                                        (if cnd
                                                          (letrec ((g7771
                                                                    (world-change-dir
                                                                     w
                                                                     'up)))
                                                            g7771)
                                                          (if cnd
                                                            (letrec ((g7772
                                                                      (world-change-dir
                                                                       w
                                                                       'down)))
                                                              g7772)
                                                            (if cnd
                                                              (letrec ((g7773
                                                                        (world-change-dir
                                                                         w
                                                                         'left)))
                                                                g7773)
                                                              (if cnd
                                                                (letrec ((g7774
                                                                          (world-change-dir
                                                                           w
                                                                           'right)))
                                                                  g7774)
                                                                (letrec ((g7775
                                                                          w))
                                                                  g7775)))))))
                                                g7770)))
                                           (game-over?
                                            (lambda (w)
                                              (letrec ((g7776
                                                        (letrec ((val6907
                                                                  (letrec ((x7777
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-wall-collide?
                                                                     x7777))))
                                                          (letrec ((g7778
                                                                    (if val6907
                                                                      val6907
                                                                      (letrec ((x7779
                                                                                (world-snake
                                                                                 w)))
                                                                        (snake-self-collide?
                                                                         x7779)))))
                                                            g7778))))
                                                g7776)))
                                           (world->scene
                                            (lambda (w)
                                              (letrec ((g7780
                                                        (letrec ((x7783
                                                                  (world-snake
                                                                   w))
                                                                 (x7781
                                                                  (letrec ((x7782
                                                                            (world-food
                                                                             w)))
                                                                    (food+scene
                                                                     x7782
                                                                     BACKGROUND))))
                                                          (snake+scene
                                                           x7783
                                                           x7781))))
                                                g7780)))
                                           (food+scene
                                            (lambda (f scn)
                                              (letrec ((g7784
                                                        (letrec ((x7786
                                                                  (posn-x f))
                                                                 (x7785
                                                                  (posn-y f)))
                                                          (place-image-on-grid
                                                           FOOD-IMAGE
                                                           x7786
                                                           x7785
                                                           scn))))
                                                g7784)))
                                           (place-image-on-grid
                                            (lambda (img x y scn)
                                              (letrec ((g7787
                                                        (letrec ((x7790
                                                                  (*
                                                                   GRID-SIZE
                                                                   x))
                                                                 (x7788
                                                                  (letrec ((x7789
                                                                            (*
                                                                             GRID-SIZE
                                                                             y)))
                                                                    (-
                                                                     BOARD-HEIGHT-PIXELS
                                                                     x7789))))
                                                          (place-image
                                                           img
                                                           x7790
                                                           x7788
                                                           scn))))
                                                g7787)))
                                           (snake+scene
                                            (lambda (snk scn)
                                              (letrec ((g7791
                                                        (letrec ((x7792
                                                                  (snake-segs
                                                                   snk)))
                                                          (segments+scene
                                                           x7792
                                                           scn))))
                                                g7791)))
                                           (segments+scene
                                            (lambda (segs scn)
                                              (letrec ((g7793
                                                        (if cnd
                                                          (letrec ((g7794 scn))
                                                            g7794)
                                                          (letrec ((g7795
                                                                    (letrec ((x7798
                                                                              (cdr
                                                                               segs))
                                                                             (x7796
                                                                              (letrec ((x7797
                                                                                        (car
                                                                                         segs)))
                                                                                (segment+scene
                                                                                 x7797
                                                                                 scn))))
                                                                      (segments+scene
                                                                       x7798
                                                                       x7796))))
                                                            g7795))))
                                                g7793)))
                                           (segment+scene
                                            (lambda (seg scn)
                                              (letrec ((g7799
                                                        (letrec ((x7801
                                                                  (posn-x seg))
                                                                 (x7800
                                                                  (posn-y
                                                                   seg)))
                                                          (place-image-on-grid
                                                           SEGMENT-IMAGE
                                                           x7801
                                                           x7800
                                                           scn))))
                                                g7799))))
                                    (letrec ((g7802
                                              (letrec ((x7836
                                                        ((lambda (j7007
                                                                  k7008
                                                                  f7009)
                                                           (letrec ((g7837
                                                                     (lambda (g7005
                                                                              g7006)
                                                                       (letrec ((g7838
                                                                                 (letrec ((x7839
                                                                                           (letrec ((x7841
                                                                                                     (POSN/C
                                                                                                      j7007
                                                                                                      k7008
                                                                                                      g7005))
                                                                                                    (x7840
                                                                                                     (POSN/C
                                                                                                      j7007
                                                                                                      k7008
                                                                                                      g7006)))
                                                                                             (f7009
                                                                                              x7841
                                                                                              x7840))))
                                                                                   (boolean?/c
                                                                                    j7007
                                                                                    k7008
                                                                                    x7839))))
                                                                         g7838))))
                                                             g7837))
                                                         'module
                                                         'importer
                                                         posn=?))
                                                       (x7831
                                                        (letrec ((x7832
                                                                  (letrec ((x7835
                                                                            (input))
                                                                           (x7833
                                                                            (letrec ((x7834
                                                                                      (input)))
                                                                              (cons
                                                                               x7834
                                                                               '()))))
                                                                    (cons
                                                                     x7835
                                                                     x7833))))
                                                          (cons 'posn x7832)))
                                                       (x7826
                                                        (letrec ((x7827
                                                                  (letrec ((x7830
                                                                            (input))
                                                                           (x7828
                                                                            (letrec ((x7829
                                                                                      (input)))
                                                                              (cons
                                                                               x7829
                                                                               '()))))
                                                                    (cons
                                                                     x7830
                                                                     x7828))))
                                                          (cons 'posn x7827))))
                                                (x7836 x7831 x7826)))
                                             (g7803
                                              (WORLD/C
                                               'module
                                               'importer
                                               WORLD))
                                             (g7804
                                              (image/c
                                               'module
                                               'importer
                                               BACKGROUND))
                                             (g7805
                                              (image/c
                                               'module
                                               'importer
                                               FOOD-IMAGE))
                                             (g7806
                                              (image/c
                                               'module
                                               'importer
                                               SEGMENT-IMAGE))
                                             (g7807
                                              (real?
                                               'module
                                               'importer
                                               GRID-SIZE))
                                             (g7808
                                              (real?
                                               'module
                                               'importer
                                               BOARD-HEIGHT-PIXELS))
                                             (g7809
                                              (real?
                                               'module
                                               'importer
                                               BOARD-WIDTH))
                                             (g7810
                                              (real?
                                               'module
                                               'importer
                                               BOARD-HEIGHT))
                                             (g7811
                                              (letrec ((x7847
                                                        ((lambda (j7011
                                                                  k7012
                                                                  f7013)
                                                           (letrec ((g7848
                                                                     (lambda (g7010)
                                                                       (letrec ((g7849
                                                                                 (letrec ((x7850
                                                                                           (letrec ((x7851
                                                                                                     (SNAKE/C
                                                                                                      j7011
                                                                                                      k7012
                                                                                                      g7010)))
                                                                                             (f7013
                                                                                              x7851))))
                                                                                   (boolean?/c
                                                                                    j7011
                                                                                    k7012
                                                                                    x7850))))
                                                                         g7849))))
                                                             g7848))
                                                         'module
                                                         'importer
                                                         snake-wall-collide?))
                                                       (x7842
                                                        (letrec ((x7843
                                                                  (letrec ((x7846
                                                                            (input))
                                                                           (x7844
                                                                            (letrec ((x7845
                                                                                      (input)))
                                                                              (cons
                                                                               x7845
                                                                               '()))))
                                                                    (cons
                                                                     x7846
                                                                     x7844))))
                                                          (cons
                                                           'snake
                                                           x7843))))
                                                (x7847 x7842)))
                                             (g7812
                                              (letrec ((x7857
                                                        ((lambda (j7015
                                                                  k7016
                                                                  f7017)
                                                           (letrec ((g7858
                                                                     (lambda (g7014)
                                                                       (letrec ((g7859
                                                                                 (letrec ((x7860
                                                                                           (letrec ((x7861
                                                                                                     (SNAKE/C
                                                                                                      j7015
                                                                                                      k7016
                                                                                                      g7014)))
                                                                                             (f7017
                                                                                              x7861))))
                                                                                   (boolean?/c
                                                                                    j7015
                                                                                    k7016
                                                                                    x7860))))
                                                                         g7859))))
                                                             g7858))
                                                         'module
                                                         'importer
                                                         snake-self-collide?))
                                                       (x7852
                                                        (letrec ((x7853
                                                                  (letrec ((x7856
                                                                            (input))
                                                                           (x7854
                                                                            (letrec ((x7855
                                                                                      (input)))
                                                                              (cons
                                                                               x7855
                                                                               '()))))
                                                                    (cons
                                                                     x7856
                                                                     x7854))))
                                                          (cons
                                                           'snake
                                                           x7853))))
                                                (x7857 x7852)))
                                             (g7813
                                              (letrec ((x7863
                                                        ((lambda (j7019
                                                                  k7020
                                                                  f7021)
                                                           (letrec ((g7864
                                                                     (lambda (g7018)
                                                                       (letrec ((g7865
                                                                                 (letrec ((x7870
                                                                                           (listof
                                                                                            POSN/C))
                                                                                          (x7866
                                                                                           (letrec ((x7867
                                                                                                     (letrec ((x7868
                                                                                                               (letrec ((x7869
                                                                                                                         (listof
                                                                                                                          POSN/C)))
                                                                                                                 (and/c
                                                                                                                  cons?/c
                                                                                                                  x7869))))
                                                                                                       (x7868
                                                                                                        j7019
                                                                                                        k7020
                                                                                                        g7018))))
                                                                                             (f7021
                                                                                              x7867))))
                                                                                   (x7870
                                                                                    j7019
                                                                                    k7020
                                                                                    x7866))))
                                                                         g7865))))
                                                             g7864))
                                                         'module
                                                         'importer
                                                         cut-tail))
                                                       (x7862 (input)))
                                                (x7863 x7862)))
                                             (g7814
                                              (letrec ((x7876
                                                        ((lambda (j7023
                                                                  k7024
                                                                  f7025)
                                                           (letrec ((g7877
                                                                     (lambda (g7022)
                                                                       (letrec ((g7878
                                                                                 (letrec ((x7879
                                                                                           (letrec ((x7880
                                                                                                     (SNAKE/C
                                                                                                      j7023
                                                                                                      k7024
                                                                                                      g7022)))
                                                                                             (f7025
                                                                                              x7880))))
                                                                                   (SNAKE/C
                                                                                    j7023
                                                                                    k7024
                                                                                    x7879))))
                                                                         g7878))))
                                                             g7877))
                                                         'module
                                                         'importer
                                                         snake-slither))
                                                       (x7871
                                                        (letrec ((x7872
                                                                  (letrec ((x7875
                                                                            (input))
                                                                           (x7873
                                                                            (letrec ((x7874
                                                                                      (input)))
                                                                              (cons
                                                                               x7874
                                                                               '()))))
                                                                    (cons
                                                                     x7875
                                                                     x7873))))
                                                          (cons
                                                           'snake
                                                           x7872))))
                                                (x7876 x7871)))
                                             (g7815
                                              (letrec ((x7886
                                                        ((lambda (j7027
                                                                  k7028
                                                                  f7029)
                                                           (letrec ((g7887
                                                                     (lambda (g7026)
                                                                       (letrec ((g7888
                                                                                 (letrec ((x7889
                                                                                           (letrec ((x7890
                                                                                                     (SNAKE/C
                                                                                                      j7027
                                                                                                      k7028
                                                                                                      g7026)))
                                                                                             (f7029
                                                                                              x7890))))
                                                                                   (SNAKE/C
                                                                                    j7027
                                                                                    k7028
                                                                                    x7889))))
                                                                         g7888))))
                                                             g7887))
                                                         'module
                                                         'importer
                                                         snake-grow))
                                                       (x7881
                                                        (letrec ((x7882
                                                                  (letrec ((x7885
                                                                            (input))
                                                                           (x7883
                                                                            (letrec ((x7884
                                                                                      (input)))
                                                                              (cons
                                                                               x7884
                                                                               '()))))
                                                                    (cons
                                                                     x7885
                                                                     x7883))))
                                                          (cons
                                                           'snake
                                                           x7882))))
                                                (x7886 x7881)))
                                             (g7816
                                              (letrec ((x7905
                                                        ((lambda (j7032
                                                                  k7033
                                                                  f7034)
                                                           (letrec ((g7906
                                                                     (lambda (g7030
                                                                              g7031)
                                                                       (letrec ((g7907
                                                                                 (letrec ((x7908
                                                                                           (letrec ((x7910
                                                                                                     (WORLD/C
                                                                                                      j7032
                                                                                                      k7033
                                                                                                      g7030))
                                                                                                    (x7909
                                                                                                     (DIR/C
                                                                                                      j7032
                                                                                                      k7033
                                                                                                      g7031)))
                                                                                             (f7034
                                                                                              x7910
                                                                                              x7909))))
                                                                                   (WORLD/C
                                                                                    j7032
                                                                                    k7033
                                                                                    x7908))))
                                                                         g7907))))
                                                             g7906))
                                                         'module
                                                         'importer
                                                         world-change-dir))
                                                       (x7892
                                                        (letrec ((x7893
                                                                  (letrec ((x7900
                                                                            (letrec ((x7901
                                                                                      (letrec ((x7904
                                                                                                (input))
                                                                                               (x7902
                                                                                                (letrec ((x7903
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x7903
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x7904
                                                                                         x7902))))
                                                                              (cons
                                                                               'snake
                                                                               x7901)))
                                                                           (x7894
                                                                            (letrec ((x7895
                                                                                      (letrec ((x7896
                                                                                                (letrec ((x7899
                                                                                                          (input))
                                                                                                         (x7897
                                                                                                          (letrec ((x7898
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x7898
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x7899
                                                                                                   x7897))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x7896))))
                                                                              (cons
                                                                               x7895
                                                                               '()))))
                                                                    (cons
                                                                     x7900
                                                                     x7894))))
                                                          (cons 'world x7893)))
                                                       (x7891 (input)))
                                                (x7905 x7892 x7891)))
                                             (g7817
                                              (letrec ((x7924
                                                        ((lambda (j7036
                                                                  k7037
                                                                  f7038)
                                                           (letrec ((g7925
                                                                     (lambda (g7035)
                                                                       (letrec ((g7926
                                                                                 (letrec ((x7927
                                                                                           (letrec ((x7928
                                                                                                     (WORLD/C
                                                                                                      j7036
                                                                                                      k7037
                                                                                                      g7035)))
                                                                                             (f7038
                                                                                              x7928))))
                                                                                   (WORLD/C
                                                                                    j7036
                                                                                    k7037
                                                                                    x7927))))
                                                                         g7926))))
                                                             g7925))
                                                         'module
                                                         'importer
                                                         world->world))
                                                       (x7911
                                                        (letrec ((x7912
                                                                  (letrec ((x7919
                                                                            (letrec ((x7920
                                                                                      (letrec ((x7923
                                                                                                (input))
                                                                                               (x7921
                                                                                                (letrec ((x7922
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x7922
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x7923
                                                                                         x7921))))
                                                                              (cons
                                                                               'snake
                                                                               x7920)))
                                                                           (x7913
                                                                            (letrec ((x7914
                                                                                      (letrec ((x7915
                                                                                                (letrec ((x7918
                                                                                                          (input))
                                                                                                         (x7916
                                                                                                          (letrec ((x7917
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x7917
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x7918
                                                                                                   x7916))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x7915))))
                                                                              (cons
                                                                               x7914
                                                                               '()))))
                                                                    (cons
                                                                     x7919
                                                                     x7913))))
                                                          (cons
                                                           'world
                                                           x7912))))
                                                (x7924 x7911)))
                                             (g7818
                                              (letrec ((x7943
                                                        ((lambda (j7041
                                                                  k7042
                                                                  f7043)
                                                           (letrec ((g7944
                                                                     (lambda (g7039
                                                                              g7040)
                                                                       (letrec ((g7945
                                                                                 (letrec ((x7946
                                                                                           (letrec ((x7948
                                                                                                     (WORLD/C
                                                                                                      j7041
                                                                                                      k7042
                                                                                                      g7039))
                                                                                                    (x7947
                                                                                                     (string?/c
                                                                                                      j7041
                                                                                                      k7042
                                                                                                      g7040)))
                                                                                             (f7043
                                                                                              x7948
                                                                                              x7947))))
                                                                                   (WORLD/C
                                                                                    j7041
                                                                                    k7042
                                                                                    x7946))))
                                                                         g7945))))
                                                             g7944))
                                                         'module
                                                         'importer
                                                         handle-key))
                                                       (x7930
                                                        (letrec ((x7931
                                                                  (letrec ((x7938
                                                                            (letrec ((x7939
                                                                                      (letrec ((x7942
                                                                                                (input))
                                                                                               (x7940
                                                                                                (letrec ((x7941
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x7941
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x7942
                                                                                         x7940))))
                                                                              (cons
                                                                               'snake
                                                                               x7939)))
                                                                           (x7932
                                                                            (letrec ((x7933
                                                                                      (letrec ((x7934
                                                                                                (letrec ((x7937
                                                                                                          (input))
                                                                                                         (x7935
                                                                                                          (letrec ((x7936
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x7936
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x7937
                                                                                                   x7935))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x7934))))
                                                                              (cons
                                                                               x7933
                                                                               '()))))
                                                                    (cons
                                                                     x7938
                                                                     x7932))))
                                                          (cons 'world x7931)))
                                                       (x7929 (input)))
                                                (x7943 x7930 x7929)))
                                             (g7819
                                              (letrec ((x7962
                                                        ((lambda (j7045
                                                                  k7046
                                                                  f7047)
                                                           (letrec ((g7963
                                                                     (lambda (g7044)
                                                                       (letrec ((g7964
                                                                                 (letrec ((x7965
                                                                                           (letrec ((x7966
                                                                                                     (WORLD/C
                                                                                                      j7045
                                                                                                      k7046
                                                                                                      g7044)))
                                                                                             (f7047
                                                                                              x7966))))
                                                                                   (boolean?/c
                                                                                    j7045
                                                                                    k7046
                                                                                    x7965))))
                                                                         g7964))))
                                                             g7963))
                                                         'module
                                                         'importer
                                                         game-over?))
                                                       (x7949
                                                        (letrec ((x7950
                                                                  (letrec ((x7957
                                                                            (letrec ((x7958
                                                                                      (letrec ((x7961
                                                                                                (input))
                                                                                               (x7959
                                                                                                (letrec ((x7960
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x7960
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x7961
                                                                                         x7959))))
                                                                              (cons
                                                                               'snake
                                                                               x7958)))
                                                                           (x7951
                                                                            (letrec ((x7952
                                                                                      (letrec ((x7953
                                                                                                (letrec ((x7956
                                                                                                          (input))
                                                                                                         (x7954
                                                                                                          (letrec ((x7955
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x7955
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x7956
                                                                                                   x7954))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x7953))))
                                                                              (cons
                                                                               x7952
                                                                               '()))))
                                                                    (cons
                                                                     x7957
                                                                     x7951))))
                                                          (cons
                                                           'world
                                                           x7950))))
                                                (x7962 x7949)))
                                             (g7820
                                              (letrec ((x7980
                                                        ((lambda (j7049
                                                                  k7050
                                                                  f7051)
                                                           (letrec ((g7981
                                                                     (lambda (g7048)
                                                                       (letrec ((g7982
                                                                                 (letrec ((x7983
                                                                                           (letrec ((x7984
                                                                                                     (WORLD/C
                                                                                                      j7049
                                                                                                      k7050
                                                                                                      g7048)))
                                                                                             (f7051
                                                                                              x7984))))
                                                                                   (image/c
                                                                                    j7049
                                                                                    k7050
                                                                                    x7983))))
                                                                         g7982))))
                                                             g7981))
                                                         'module
                                                         'importer
                                                         world->scene))
                                                       (x7967
                                                        (letrec ((x7968
                                                                  (letrec ((x7975
                                                                            (letrec ((x7976
                                                                                      (letrec ((x7979
                                                                                                (input))
                                                                                               (x7977
                                                                                                (letrec ((x7978
                                                                                                          (input)))
                                                                                                  (cons
                                                                                                   x7978
                                                                                                   '()))))
                                                                                        (cons
                                                                                         x7979
                                                                                         x7977))))
                                                                              (cons
                                                                               'snake
                                                                               x7976)))
                                                                           (x7969
                                                                            (letrec ((x7970
                                                                                      (letrec ((x7971
                                                                                                (letrec ((x7974
                                                                                                          (input))
                                                                                                         (x7972
                                                                                                          (letrec ((x7973
                                                                                                                    (input)))
                                                                                                            (cons
                                                                                                             x7973
                                                                                                             '()))))
                                                                                                  (cons
                                                                                                   x7974
                                                                                                   x7972))))
                                                                                        (cons
                                                                                         'posn
                                                                                         x7971))))
                                                                              (cons
                                                                               x7970
                                                                               '()))))
                                                                    (cons
                                                                     x7975
                                                                     x7969))))
                                                          (cons
                                                           'world
                                                           x7968))))
                                                (x7980 x7967)))
                                             (g7821
                                              (letrec ((x7991
                                                        ((lambda (j7054
                                                                  k7055
                                                                  f7056)
                                                           (letrec ((g7992
                                                                     (lambda (g7052
                                                                              g7053)
                                                                       (letrec ((g7993
                                                                                 (letrec ((x7994
                                                                                           (letrec ((x7996
                                                                                                     (POSN/C
                                                                                                      j7054
                                                                                                      k7055
                                                                                                      g7052))
                                                                                                    (x7995
                                                                                                     (image/c
                                                                                                      j7054
                                                                                                      k7055
                                                                                                      g7053)))
                                                                                             (f7056
                                                                                              x7996
                                                                                              x7995))))
                                                                                   (image/c
                                                                                    j7054
                                                                                    k7055
                                                                                    x7994))))
                                                                         g7993))))
                                                             g7992))
                                                         'module
                                                         'importer
                                                         food+scene))
                                                       (x7986
                                                        (letrec ((x7987
                                                                  (letrec ((x7990
                                                                            (input))
                                                                           (x7988
                                                                            (letrec ((x7989
                                                                                      (input)))
                                                                              (cons
                                                                               x7989
                                                                               '()))))
                                                                    (cons
                                                                     x7990
                                                                     x7988))))
                                                          (cons 'posn x7987)))
                                                       (x7985
                                                        (cons 'image '())))
                                                (x7991 x7986 x7985)))
                                             (g7822
                                              (letrec ((x8001
                                                        ((lambda (j7061
                                                                  k7062
                                                                  f7063)
                                                           (letrec ((g8002
                                                                     (lambda (g7057
                                                                              g7058
                                                                              g7059
                                                                              g7060)
                                                                       (letrec ((g8003
                                                                                 (letrec ((x8004
                                                                                           (letrec ((x8008
                                                                                                     (image/c
                                                                                                      j7061
                                                                                                      k7062
                                                                                                      g7057))
                                                                                                    (x8007
                                                                                                     (real?/c
                                                                                                      j7061
                                                                                                      k7062
                                                                                                      g7058))
                                                                                                    (x8006
                                                                                                     (real?/c
                                                                                                      j7061
                                                                                                      k7062
                                                                                                      g7059))
                                                                                                    (x8005
                                                                                                     (image/c
                                                                                                      j7061
                                                                                                      k7062
                                                                                                      g7060)))
                                                                                             (f7063
                                                                                              x8008
                                                                                              x8007
                                                                                              x8006
                                                                                              x8005))))
                                                                                   (image/c
                                                                                    j7061
                                                                                    k7062
                                                                                    x8004))))
                                                                         g8003))))
                                                             g8002))
                                                         'module
                                                         'importer
                                                         place-image-on-grid))
                                                       (x8000
                                                        (cons 'image '()))
                                                       (x7999 (input))
                                                       (x7998 (input))
                                                       (x7997
                                                        (cons 'image '())))
                                                (x8001
                                                 x8000
                                                 x7999
                                                 x7998
                                                 x7997)))
                                             (g7823
                                              (letrec ((x8015
                                                        ((lambda (j7066
                                                                  k7067
                                                                  f7068)
                                                           (letrec ((g8016
                                                                     (lambda (g7064
                                                                              g7065)
                                                                       (letrec ((g8017
                                                                                 (letrec ((x8018
                                                                                           (letrec ((x8020
                                                                                                     (SNAKE/C
                                                                                                      j7066
                                                                                                      k7067
                                                                                                      g7064))
                                                                                                    (x8019
                                                                                                     (image/c
                                                                                                      j7066
                                                                                                      k7067
                                                                                                      g7065)))
                                                                                             (f7068
                                                                                              x8020
                                                                                              x8019))))
                                                                                   (image/c
                                                                                    j7066
                                                                                    k7067
                                                                                    x8018))))
                                                                         g8017))))
                                                             g8016))
                                                         'module
                                                         'importer
                                                         snake+scene))
                                                       (x8010
                                                        (letrec ((x8011
                                                                  (letrec ((x8014
                                                                            (input))
                                                                           (x8012
                                                                            (letrec ((x8013
                                                                                      (input)))
                                                                              (cons
                                                                               x8013
                                                                               '()))))
                                                                    (cons
                                                                     x8014
                                                                     x8012))))
                                                          (cons 'snake x8011)))
                                                       (x8009
                                                        (cons 'image '())))
                                                (x8015 x8010 x8009)))
                                             (g7824
                                              (letrec ((x8023
                                                        ((lambda (j7071
                                                                  k7072
                                                                  f7073)
                                                           (letrec ((g8024
                                                                     (lambda (g7069
                                                                              g7070)
                                                                       (letrec ((g8025
                                                                                 (letrec ((x8026
                                                                                           (letrec ((x8028
                                                                                                     (letrec ((x8029
                                                                                                               (listof
                                                                                                                POSN/C)))
                                                                                                       (x8029
                                                                                                        j7071
                                                                                                        k7072
                                                                                                        g7069)))
                                                                                                    (x8027
                                                                                                     (image/c
                                                                                                      j7071
                                                                                                      k7072
                                                                                                      g7070)))
                                                                                             (f7073
                                                                                              x8028
                                                                                              x8027))))
                                                                                   (image/c
                                                                                    j7071
                                                                                    k7072
                                                                                    x8026))))
                                                                         g8025))))
                                                             g8024))
                                                         'module
                                                         'importer
                                                         segments+scene))
                                                       (x8022 (input))
                                                       (x8021
                                                        (cons 'image '())))
                                                (x8023 x8022 x8021)))
                                             (g7825
                                              (letrec ((x8036
                                                        ((lambda (j7076
                                                                  k7077
                                                                  f7078)
                                                           (letrec ((g8037
                                                                     (lambda (g7074
                                                                              g7075)
                                                                       (letrec ((g8038
                                                                                 (letrec ((x8039
                                                                                           (letrec ((x8041
                                                                                                     (POSN/C
                                                                                                      j7076
                                                                                                      k7077
                                                                                                      g7074))
                                                                                                    (x8040
                                                                                                     (image/c
                                                                                                      j7076
                                                                                                      k7077
                                                                                                      g7075)))
                                                                                             (f7078
                                                                                              x8041
                                                                                              x8040))))
                                                                                   (image/c
                                                                                    j7076
                                                                                    k7077
                                                                                    x8039))))
                                                                         g8038))))
                                                             g8037))
                                                         'module
                                                         'importer
                                                         segment+scene))
                                                       (x8031
                                                        (letrec ((x8032
                                                                  (letrec ((x8035
                                                                            (input))
                                                                           (x8033
                                                                            (letrec ((x8034
                                                                                      (input)))
                                                                              (cons
                                                                               x8034
                                                                               '()))))
                                                                    (cons
                                                                     x8035
                                                                     x8033))))
                                                          (cons 'posn x8032)))
                                                       (x8030
                                                        (cons 'image '())))
                                                (x8036 x8031 x8030))))
                                      g7825))))
                          g7108))))
              g7106)))
    g7105))
