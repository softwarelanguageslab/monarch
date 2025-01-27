(letrec ((any? (lambda (v) (letrec ((g6990 #t)) g6990)))
         (meta (lambda (v) (letrec ((g6991 v)) g6991)))
         (member
          (lambda (v lst)
            (letrec ((g6992
                      (letrec ((g6993
                                (letrec ((x-e6994 lst))
                                  (match
                                   x-e6994
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd6995 (eq? v v1)))
                                       (if x-cnd6995 #t (member v vs)))))))))
                        g6993)))
              g6992)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g6996 (lambda (v) (letrec ((g6997 v)) g6997)))) g6996)))
         (nonzero?
          (lambda (v)
            (letrec ((g6998 (letrec ((x6999 (= v 0))) (not x6999)))) g6998))))
  (letrec ((g7000
            (letrec ((g7001
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7002 '())
                                 (g7003
                                  (letrec ((real/c
                                            (lambda (g6906 g6907 g6908)
                                              (letrec ((g7004
                                                        (letrec ((x-cnd7005
                                                                  (real?
                                                                   g6908)))
                                                          (if x-cnd7005
                                                            g6908
                                                            (blame
                                                             g6906
                                                             'real?)))))
                                                g7004)))
                                           (boolean?/c
                                            (lambda (g6909 g6910 g6911)
                                              (letrec ((g7006
                                                        (letrec ((x-cnd7007
                                                                  (boolean?
                                                                   g6911)))
                                                          (if x-cnd7007
                                                            g6911
                                                            (blame
                                                             g6909
                                                             'boolean?)))))
                                                g7006)))
                                           (number?/c
                                            (lambda (g6912 g6913 g6914)
                                              (letrec ((g7008
                                                        (letrec ((x-cnd7009
                                                                  (number?
                                                                   g6914)))
                                                          (if x-cnd7009
                                                            g6914
                                                            (blame
                                                             g6912
                                                             'number?)))))
                                                g7008)))
                                           (any/c
                                            (lambda (g6915 g6916 g6917)
                                              (letrec ((g7010
                                                        (letrec ((x-cnd7011
                                                                  ((lambda (v)
                                                                     (letrec ((g7012
                                                                               #t))
                                                                       g7012))
                                                                   g6917)))
                                                          (if x-cnd7011
                                                            g6917
                                                            (blame
                                                             g6915
                                                             '(lambda (v)
                                                                #t))))))
                                                g7010)))
                                           (any?/c
                                            (lambda (g6918 g6919 g6920)
                                              (letrec ((g7013
                                                        (letrec ((x-cnd7014
                                                                  ((lambda (v)
                                                                     (letrec ((g7015
                                                                               #t))
                                                                       g7015))
                                                                   g6920)))
                                                          (if x-cnd7014
                                                            g6920
                                                            (blame
                                                             g6918
                                                             '(lambda (v)
                                                                #t))))))
                                                g7013)))
                                           (cons?/c
                                            (lambda (g6921 g6922 g6923)
                                              (letrec ((g7016
                                                        (letrec ((x-cnd7017
                                                                  (pair?
                                                                   g6923)))
                                                          (if x-cnd7017
                                                            g6923
                                                            (blame
                                                             g6921
                                                             'pair?)))))
                                                g7016)))
                                           (pair?/c
                                            (lambda (g6924 g6925 g6926)
                                              (letrec ((g7018
                                                        (letrec ((x-cnd7019
                                                                  (pair?
                                                                   g6926)))
                                                          (if x-cnd7019
                                                            g6926
                                                            (blame
                                                             g6924
                                                             'pair?)))))
                                                g7018)))
                                           (integer?/c
                                            (lambda (g6927 g6928 g6929)
                                              (letrec ((g7020
                                                        (letrec ((x-cnd7021
                                                                  (integer?
                                                                   g6929)))
                                                          (if x-cnd7021
                                                            g6929
                                                            (blame
                                                             g6927
                                                             'integer?)))))
                                                g7020)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7022
                                                        (lambda (k j v)
                                                          (letrec ((g7023
                                                                    (letrec ((x-cnd7024
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7024
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7023))))
                                                g7022)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7025
                                                        (lambda (k j v)
                                                          (letrec ((g7026
                                                                    (letrec ((x-cnd7027
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7027
                                                                        '()
                                                                        (letrec ((x7031
                                                                                  (letrec ((x7032
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7032)))
                                                                                 (x7028
                                                                                  (letrec ((x7030
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7029
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7030
                                                                                     k
                                                                                     j
                                                                                     x7029))))
                                                                          (cons
                                                                           x7031
                                                                           x7028))))))
                                                            g7026))))
                                                g7025)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7033 #t)) g7033)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7034
                                                        (letrec ((x7035
                                                                  (= v 0)))
                                                          (not x7035))))
                                                g7034)))
                                           (nonzero?/c
                                            (lambda (g6930 g6931 g6932)
                                              (letrec ((g7036
                                                        (letrec ((x-cnd7037
                                                                  ((lambda (v)
                                                                     (letrec ((g7038
                                                                               (letrec ((x7039
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7039))))
                                                                       g7038))
                                                                   g6932)))
                                                          (if x-cnd7037
                                                            g6932
                                                            (blame
                                                             g6930
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7036)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7040 v)) g7040)))
                                           (+
                                            ((lambda (j6935 k6936 f6937)
                                               (letrec ((g7042
                                                         (lambda (g6933 g6934)
                                                           (letrec ((g7043
                                                                     (letrec ((x7044
                                                                               (letrec ((x7046
                                                                                         (number?/c
                                                                                          j6935
                                                                                          k6936
                                                                                          g6933))
                                                                                        (x7045
                                                                                         (number?/c
                                                                                          j6935
                                                                                          k6936
                                                                                          g6934)))
                                                                                 (f6937
                                                                                  x7046
                                                                                  x7045))))
                                                                       (number?/c
                                                                        j6935
                                                                        k6936
                                                                        x7044))))
                                                             g7043))))
                                                 g7042))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7041 (orig-+ a b)))
                                                 g7041))))
                                           (-
                                            ((lambda (j6940 k6941 f6942)
                                               (letrec ((g7048
                                                         (lambda (g6938 g6939)
                                                           (letrec ((g7049
                                                                     (letrec ((x7050
                                                                               (letrec ((x7052
                                                                                         (number?/c
                                                                                          j6940
                                                                                          k6941
                                                                                          g6938))
                                                                                        (x7051
                                                                                         (number?/c
                                                                                          j6940
                                                                                          k6941
                                                                                          g6939)))
                                                                                 (f6942
                                                                                  x7052
                                                                                  x7051))))
                                                                       (number?/c
                                                                        j6940
                                                                        k6941
                                                                        x7050))))
                                                             g7049))))
                                                 g7048))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7047 (orig-- a b)))
                                                 g7047))))
                                           (*
                                            ((lambda (j6945 k6946 f6947)
                                               (letrec ((g7054
                                                         (lambda (g6943 g6944)
                                                           (letrec ((g7055
                                                                     (letrec ((x7056
                                                                               (letrec ((x7058
                                                                                         (number?/c
                                                                                          j6945
                                                                                          k6946
                                                                                          g6943))
                                                                                        (x7057
                                                                                         (number?/c
                                                                                          j6945
                                                                                          k6946
                                                                                          g6944)))
                                                                                 (f6947
                                                                                  x7058
                                                                                  x7057))))
                                                                       (number?/c
                                                                        j6945
                                                                        k6946
                                                                        x7056))))
                                                             g7055))))
                                                 g7054))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7053 (orig-* a b)))
                                                 g7053))))
                                           (/
                                            ((lambda (j6950 k6951 f6952)
                                               (letrec ((g7060
                                                         (lambda (g6948 g6949)
                                                           (letrec ((g7061
                                                                     (letrec ((x7062
                                                                               (letrec ((x7064
                                                                                         (number?/c
                                                                                          j6950
                                                                                          k6951
                                                                                          g6948))
                                                                                        (x7063
                                                                                         (number?/c
                                                                                          j6950
                                                                                          k6951
                                                                                          g6949)))
                                                                                 (f6952
                                                                                  x7064
                                                                                  x7063))))
                                                                       (number?/c
                                                                        j6950
                                                                        k6951
                                                                        x7062))))
                                                             g7061))))
                                                 g7060))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7059 (orig-/ a b)))
                                                 g7059))))
                                           (car
                                            ((lambda (j6954 k6955 f6956)
                                               (letrec ((g7066
                                                         (lambda (g6953)
                                                           (letrec ((g7067
                                                                     (letrec ((x7068
                                                                               (letrec ((x7069
                                                                                         (pair?/c
                                                                                          j6954
                                                                                          k6955
                                                                                          g6953)))
                                                                                 (f6956
                                                                                  x7069))))
                                                                       (any/c
                                                                        j6954
                                                                        k6955
                                                                        x7068))))
                                                             g7067))))
                                                 g7066))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7065 (orig-car p)))
                                                 g7065))))
                                           (cdr
                                            ((lambda (j6958 k6959 f6960)
                                               (letrec ((g7071
                                                         (lambda (g6957)
                                                           (letrec ((g7072
                                                                     (letrec ((x7073
                                                                               (letrec ((x7074
                                                                                         (pair?/c
                                                                                          j6958
                                                                                          k6959
                                                                                          g6957)))
                                                                                 (f6960
                                                                                  x7074))))
                                                                       (any/c
                                                                        j6958
                                                                        k6959
                                                                        x7073))))
                                                             g7072))))
                                                 g7071))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7070 (orig-cdr p)))
                                                 g7070))))
                                           (cons
                                            ((lambda (j6963 k6964 f6965)
                                               (letrec ((g7076
                                                         (lambda (g6961 g6962)
                                                           (letrec ((g7077
                                                                     (letrec ((x7078
                                                                               (letrec ((x7080
                                                                                         (any/c
                                                                                          j6963
                                                                                          k6964
                                                                                          g6961))
                                                                                        (x7079
                                                                                         (any/c
                                                                                          j6963
                                                                                          k6964
                                                                                          g6962)))
                                                                                 (f6965
                                                                                  x7080
                                                                                  x7079))))
                                                                       (pair?/c
                                                                        j6963
                                                                        k6964
                                                                        x7078))))
                                                             g7077))))
                                                 g7076))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7075 (cons a b)))
                                                 g7075))))
                                           (vector-ref
                                            ((lambda (j6967 k6968 f6969)
                                               (letrec ((g7082
                                                         (lambda (g6966)
                                                           (letrec ((g7083
                                                                     (letrec ((x7084
                                                                               (letrec ((x7085
                                                                                         (vector?/c
                                                                                          j6967
                                                                                          k6968
                                                                                          g6966)))
                                                                                 (f6969
                                                                                  x7085))))
                                                                       (integer?/c
                                                                        j6967
                                                                        k6968
                                                                        x7084))))
                                                             g7083))))
                                                 g7082))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7081
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7081))))
                                           (vector-set!
                                            ((lambda (j6972 k6973 f6974)
                                               (letrec ((g7087
                                                         (lambda (g6970 g6971)
                                                           (letrec ((g7088
                                                                     (letrec ((x7089
                                                                               (letrec ((x7091
                                                                                         (vector?/c
                                                                                          j6972
                                                                                          k6973
                                                                                          g6970))
                                                                                        (x7090
                                                                                         (integer?/c
                                                                                          j6972
                                                                                          k6973
                                                                                          g6971)))
                                                                                 (f6974
                                                                                  x7091
                                                                                  x7090))))
                                                                       (any/c
                                                                        j6972
                                                                        k6973
                                                                        x7089))))
                                                             g7088))))
                                                 g7087))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7086
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7086))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7092 #t)) g7092)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7093
                                                        (letrec ((x7094
                                                                  (letrec ((x7095
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7095))))
                                                          (cdr x7094))))
                                                g7093)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7096
                                                        (letrec ((x7099
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7099)))
                                                       (g7097
                                                        (letrec ((x7100
                                                                  (list? l)))
                                                          (assert x7100)))
                                                       (g7098
                                                        (letrec ((x-cnd7101
                                                                  (null? l)))
                                                          (if x-cnd7101
                                                            '()
                                                            (letrec ((x7104
                                                                      (letrec ((x7105
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7105)))
                                                                     (x7102
                                                                      (letrec ((x7103
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7103))))
                                                              (cons
                                                               x7104
                                                               x7102))))))
                                                g7098)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7106
                                                        (letrec ((x7107
                                                                  (car x)))
                                                          (cdr x7107))))
                                                g7106)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7108
                                                        (letrec ((x7109
                                                                  (letrec ((x7110
                                                                            (letrec ((x7111
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7111))))
                                                                    (cdr
                                                                     x7110))))
                                                          (car x7109))))
                                                g7108)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7112
                                                        (letrec ((x7113
                                                                  (letrec ((x7114
                                                                            (letrec ((x7115
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7115))))
                                                                    (car
                                                                     x7114))))
                                                          (cdr x7113))))
                                                g7112)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7116
                                                        (letrec ((x7119
                                                                  (string?
                                                                   filename)))
                                                          (assert x7119)))
                                                       (g7117
                                                        (letrec ((x7120
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7120)))
                                                       (g7118
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7121
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7122 res))
                                                            g7122))))
                                                g7118)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7123
                                                        (letrec ((x7124
                                                                  (letrec ((x7125
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7125))))
                                                          (car x7124))))
                                                g7123)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7126
                                                        (letrec ((x7127
                                                                  (letrec ((x7128
                                                                            (letrec ((x7129
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7129))))
                                                                    (car
                                                                     x7128))))
                                                          (cdr x7127))))
                                                g7126)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7130
                                                        (letrec ((x7132
                                                                  (list? l)))
                                                          (assert x7132)))
                                                       (g7131
                                                        (letrec ((x-cnd7133
                                                                  (null? l)))
                                                          (if x-cnd7133
                                                            #f
                                                            (letrec ((x-cnd7134
                                                                      (letrec ((x7135
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7135
                                                                         k))))
                                                              (if x-cnd7134
                                                                (car l)
                                                                (letrec ((x7136
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7136))))))))
                                                g7131)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7137
                                                        (letrec ((x7138
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7138))))
                                                g7137)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7139
                                                        (letrec ((x7141
                                                                  (list? l)))
                                                          (assert x7141)))
                                                       (g7140
                                                        (letrec ((x-cnd7142
                                                                  (null? l)))
                                                          (if x-cnd7142
                                                            ""
                                                            (letrec ((x7145
                                                                      (letrec ((x7146
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7146)))
                                                                     (x7143
                                                                      (letrec ((x7144
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7144))))
                                                              (string-append
                                                               x7145
                                                               x7143))))))
                                                g7140)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7147
                                                        (letrec ((x7150
                                                                  (char? c1)))
                                                          (assert x7150)))
                                                       (g7148
                                                        (letrec ((x7151
                                                                  (char? c2)))
                                                          (assert x7151)))
                                                       (g7149
                                                        (letrec ((val6887
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7152
                                                                    (if val6887
                                                                      val6887
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7152))))
                                                g7149)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7153
                                                        (letrec ((x7154
                                                                  (letrec ((x7155
                                                                            (letrec ((x7156
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7156))))
                                                                    (cdr
                                                                     x7155))))
                                                          (cdr x7154))))
                                                g7153)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7157
                                                        (letrec ((x7160
                                                                  (list? l)))
                                                          (assert x7160)))
                                                       (g7158
                                                        (letrec ((x7161
                                                                  (numer?)))
                                                          (assert x7161)))
                                                       (g7159
                                                        (letrec ((x-cnd7162
                                                                  (zero? k)))
                                                          (if x-cnd7162
                                                            x
                                                            (letrec ((x7164
                                                                      (cdr x))
                                                                     (x7163
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7164
                                                               x7163))))))
                                                g7159)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7165 '())) g7165)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7166
                                                        (letrec ((x-cnd7167
                                                                  (letrec ((x7168
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7168))))
                                                          (if x-cnd7167
                                                            (letrec ((x7169
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7169))
                                                            #f))))
                                                g7166)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7170
                                                        (letrec ((x7172
                                                                  (number? x)))
                                                          (assert x7172)))
                                                       (g7171
                                                        (letrec ((val6888
                                                                  (< x y)))
                                                          (letrec ((g7173
                                                                    (if val6888
                                                                      val6888
                                                                      (letrec ((val6889
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7174
                                                                                  (if val6889
                                                                                    val6889
                                                                                    #f)))
                                                                          g7174)))))
                                                            g7173))))
                                                g7171)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7175
                                                        (letrec ((val6890
                                                                  (letrec ((x7176
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7176
                                                                     9))))
                                                          (letrec ((g7177
                                                                    (if val6890
                                                                      val6890
                                                                      (letrec ((val6891
                                                                                (letrec ((x7178
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7178
                                                                                   10))))
                                                                        (letrec ((g7179
                                                                                  (if val6891
                                                                                    val6891
                                                                                    (letrec ((x7180
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7180
                                                                                       32)))))
                                                                          g7179)))))
                                                            g7177))))
                                                g7175)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7181
                                                        (letrec ((x7182
                                                                  (letrec ((x7183
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7183))))
                                                          (cdr x7182))))
                                                g7181)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7184
                                                        (letrec ((x7186
                                                                  (number? x)))
                                                          (assert x7186)))
                                                       (g7185 (> x 0)))
                                                g7185)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7187 #f)) g7187)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7188
                                                        (letrec ((x7189
                                                                  (cdr x)))
                                                          (cdr x7189))))
                                                g7188)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7190
                                                        (letrec ((x7192
                                                                  (number? x)))
                                                          (assert x7192)))
                                                       (g7191
                                                        (letrec ((x-cnd7193
                                                                  (< x 0)))
                                                          (if x-cnd7193
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7191)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7194
                                                        (letrec ((val6892
                                                                  (eq? a b)))
                                                          (letrec ((g7195
                                                                    (if val6892
                                                                      val6892
                                                                      (letrec ((val6893
                                                                                (letrec ((x7197
                                                                                          (null?
                                                                                           a))
                                                                                         (x7196
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7197
                                                                                       x7196))))
                                                                        (letrec ((g7198
                                                                                  (if val6893
                                                                                    val6893
                                                                                    (letrec ((val6894
                                                                                              (letrec ((x7201
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7200
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7199
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7201
                                                                                                     x7200
                                                                                                     x7199))))
                                                                                      (letrec ((g7202
                                                                                                (if val6894
                                                                                                  val6894
                                                                                                  (letrec ((val6895
                                                                                                            (letrec ((x7210
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7209
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7206
                                                                                                                      (letrec ((x7208
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7207
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7208
                                                                                                                         x7207)))
                                                                                                                     (x7203
                                                                                                                      (letrec ((x7205
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7204
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7205
                                                                                                                         x7204))))
                                                                                                              (and x7210
                                                                                                                   x7209
                                                                                                                   x7206
                                                                                                                   x7203))))
                                                                                                    (letrec ((g7211
                                                                                                              (if val6895
                                                                                                                val6895
                                                                                                                (letrec ((x7227
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7226
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7212
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7213
                                                                                                                                      (letrec ((x7224
                                                                                                                                                (letrec ((x7225
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7225
                                                                                                                                                   n)))
                                                                                                                                               (x7214
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7215
                                                                                                                                                                      (letrec ((x7222
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7216
                                                                                                                                                                                (letrec ((x7219
                                                                                                                                                                                          (letrec ((x7221
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7220
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7221
                                                                                                                                                                                             x7220)))
                                                                                                                                                                                         (x7217
                                                                                                                                                                                          (letrec ((x7218
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7218))))
                                                                                                                                                                                  (and x7219
                                                                                                                                                                                       x7217))))
                                                                                                                                                                        (or x7222
                                                                                                                                                                            x7216))))
                                                                                                                                                              g7215))))
                                                                                                                                                  (letrec ((g7223
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7223))))
                                                                                                                                        (and x7224
                                                                                                                                             x7214))))
                                                                                                                              g7213))))
                                                                                                                  (and x7227
                                                                                                                       x7226
                                                                                                                       x7212)))))
                                                                                                      g7211)))))
                                                                                        g7202)))))
                                                                          g7198)))))
                                                            g7195))))
                                                g7194)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7228
                                                        (letrec ((x7229
                                                                  (letrec ((x7230
                                                                            (letrec ((x7231
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7231))))
                                                                    (car
                                                                     x7230))))
                                                          (cdr x7229))))
                                                g7228)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7232
                                                        (letrec ((x7233
                                                                  (letrec ((x7234
                                                                            (letrec ((x7235
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7235))))
                                                                    (car
                                                                     x7234))))
                                                          (car x7233))))
                                                g7232)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7236 (eq? x y)))
                                                g7236)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7237
                                                        (letrec ((x7239
                                                                  (number? x)))
                                                          (assert x7239)))
                                                       (g7238
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7240
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7241
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7241)))))
                                                            g7240))))
                                                g7238)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7242
                                                        (letrec ((x7245
                                                                  (string?
                                                                   filename)))
                                                          (assert x7245)))
                                                       (g7243
                                                        (letrec ((x7246
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7246)))
                                                       (g7244
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7247
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7248 res))
                                                            g7248))))
                                                g7244)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7249 (cons x '())))
                                                g7249)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7250
                                                        (letrec ((x7253
                                                                  (char? c1)))
                                                          (assert x7253)))
                                                       (g7251
                                                        (letrec ((x7254
                                                                  (char? c2)))
                                                          (assert x7254)))
                                                       (g7252
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7255
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7255))))
                                                g7252)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7256
                                                        (letrec ((x7257
                                                                  (letrec ((x7258
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7258))))
                                                          (cdr x7257))))
                                                g7256)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7259
                                                        (letrec ((x7260
                                                                  (letrec ((x7261
                                                                            (letrec ((x7262
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7262))))
                                                                    (car
                                                                     x7261))))
                                                          (cdr x7260))))
                                                g7259)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7263
                                                        (letrec ((x7264
                                                                  (letrec ((x7265
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7265))))
                                                          (car x7264))))
                                                g7263)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7266
                                                        (letrec ((x7267
                                                                  (letrec ((x7268
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7268))))
                                                          (car x7267))))
                                                g7266)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7269
                                                        (letrec ((x7272
                                                                  (char? c1)))
                                                          (assert x7272)))
                                                       (g7270
                                                        (letrec ((x7273
                                                                  (char? c2)))
                                                          (assert x7273)))
                                                       (g7271
                                                        (letrec ((x7274
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7274))))
                                                g7271)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7275
                                                        (letrec ((x7276
                                                                  (letrec ((x7277
                                                                            (letrec ((x7278
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7278))))
                                                                    (car
                                                                     x7277))))
                                                          (car x7276))))
                                                g7275)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7279
                                                        (letrec ((x7281
                                                                  (number? x)))
                                                          (assert x7281)))
                                                       (g7280 (< x 0)))
                                                g7280)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7282 (memq e l)))
                                                g7282)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7283
                                                        (letrec ((x7284
                                                                  (letrec ((x7285
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7285))))
                                                          (car x7284))))
                                                g7283)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7286 '())) g7286)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7287
                                                        (letrec ((x7289
                                                                  (list? l)))
                                                          (assert x7289)))
                                                       (g7288
                                                        (letrec ((x-cnd7290
                                                                  (null? l)))
                                                          (if x-cnd7290
                                                            '()
                                                            (letrec ((x7293
                                                                      (letrec ((x7294
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7294)))
                                                                     (x7291
                                                                      (letrec ((x7292
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7292))))
                                                              (append
                                                               x7293
                                                               x7291))))))
                                                g7288)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7295
                                                        (letrec ((x7296
                                                                  (letrec ((x7297
                                                                            (letrec ((x7298
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7298))))
                                                                    (car
                                                                     x7297))))
                                                          (car x7296))))
                                                g7295)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7299
                                                        (letrec ((x7300
                                                                  (letrec ((x7301
                                                                            (letrec ((x7302
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7302))))
                                                                    (cdr
                                                                     x7301))))
                                                          (cdr x7300))))
                                                g7299)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7303
                                                        (letrec ((x7305
                                                                  (number? x)))
                                                          (assert x7305)))
                                                       (g7304
                                                        (letrec ((x7306
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7306))))
                                                g7304)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7307
                                                        (letrec ((x7308
                                                                  (letrec ((x7309
                                                                            (letrec ((x7310
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7310))))
                                                                    (car
                                                                     x7309))))
                                                          (car x7308))))
                                                g7307)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7311
                                                        (letrec ((x7314
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7314)))
                                                       (g7312
                                                        (letrec ((x7315
                                                                  (list?
                                                                   args)))
                                                          (assert x7315)))
                                                       (g7313
                                                        (if cnd
                                                          (letrec ((g7316
                                                                    (proc)))
                                                            g7316)
                                                          (if cnd
                                                            (letrec ((g7317
                                                                      (letrec ((x7318
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7318))))
                                                              g7317)
                                                            (if cnd
                                                              (letrec ((g7319
                                                                        (letrec ((x7321
                                                                                  (car
                                                                                   args))
                                                                                 (x7320
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7321
                                                                           x7320))))
                                                                g7319)
                                                              (if cnd
                                                                (letrec ((g7322
                                                                          (letrec ((x7325
                                                                                    (car
                                                                                     args))
                                                                                   (x7324
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7323
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7325
                                                                             x7324
                                                                             x7323))))
                                                                  g7322)
                                                                (if cnd
                                                                  (letrec ((g7326
                                                                            (letrec ((x7330
                                                                                      (car
                                                                                       args))
                                                                                     (x7329
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7328
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7327
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7330
                                                                               x7329
                                                                               x7328
                                                                               x7327))))
                                                                    g7326)
                                                                  (if cnd
                                                                    (letrec ((g7331
                                                                              (letrec ((x7337
                                                                                        (car
                                                                                         args))
                                                                                       (x7336
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7335
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7334
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7332
                                                                                        (letrec ((x7333
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7333))))
                                                                                (proc
                                                                                 x7337
                                                                                 x7336
                                                                                 x7335
                                                                                 x7334
                                                                                 x7332))))
                                                                      g7331)
                                                                    (if cnd
                                                                      (letrec ((g7338
                                                                                (letrec ((x7346
                                                                                          (car
                                                                                           args))
                                                                                         (x7345
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7344
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7343
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7341
                                                                                          (letrec ((x7342
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7342)))
                                                                                         (x7339
                                                                                          (letrec ((x7340
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7340))))
                                                                                  (proc
                                                                                   x7346
                                                                                   x7345
                                                                                   x7344
                                                                                   x7343
                                                                                   x7341
                                                                                   x7339))))
                                                                        g7338)
                                                                      (if cnd
                                                                        (letrec ((g7347
                                                                                  (letrec ((x7357
                                                                                            (car
                                                                                             args))
                                                                                           (x7356
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7355
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7354
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7352
                                                                                            (letrec ((x7353
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7353)))
                                                                                           (x7350
                                                                                            (letrec ((x7351
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7351)))
                                                                                           (x7348
                                                                                            (letrec ((x7349
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7349))))
                                                                                    (proc
                                                                                     x7357
                                                                                     x7356
                                                                                     x7355
                                                                                     x7354
                                                                                     x7352
                                                                                     x7350
                                                                                     x7348))))
                                                                          g7347)
                                                                        (letrec ((g7358
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7358)))))))))))
                                                g7313)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7359
                                                        (letrec ((x7361
                                                                  (list? l)))
                                                          (assert x7361)))
                                                       (g7360
                                                        (letrec ((x-cnd7362
                                                                  (null? l)))
                                                          (if x-cnd7362
                                                            #f
                                                            (letrec ((x-cnd7363
                                                                      (letrec ((x7364
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7364
                                                                         e))))
                                                              (if x-cnd7363
                                                                l
                                                                (letrec ((x7365
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7365))))))))
                                                g7360)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7366
                                                        (letrec ((x7367
                                                                  (letrec ((x7368
                                                                            (letrec ((x7369
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7369))))
                                                                    (cdr
                                                                     x7368))))
                                                          (cdr x7367))))
                                                g7366)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7370
                                                        (letrec ((x7371
                                                                  (letrec ((x7372
                                                                            (letrec ((x7373
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7373))))
                                                                    (cdr
                                                                     x7372))))
                                                          (car x7371))))
                                                g7370)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7374 (random 42)))
                                                g7374)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7375
                                                        (letrec ((x7377
                                                                  (number? x)))
                                                          (assert x7377)))
                                                       (g7376 (= x 0)))
                                                g7376)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7378
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7379
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7379))))
                                                g7378)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7380
                                                        (letrec ((x7381
                                                                  (cdr x)))
                                                          (car x7381))))
                                                g7380)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7382
                                                        (letrec ((val6900
                                                                  (letrec ((x7385
                                                                            (pair?
                                                                             l))
                                                                           (x7383
                                                                            (letrec ((x7384
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7384))))
                                                                    (and x7385
                                                                         x7383))))
                                                          (letrec ((g7386
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7386))))
                                                g7382)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7387
                                                        (letrec ((x7388
                                                                  (letrec ((x7389
                                                                            (letrec ((x7390
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7390))))
                                                                    (cdr
                                                                     x7389))))
                                                          (cdr x7388))))
                                                g7387)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7391
                                                        (letrec ((x-cnd7392
                                                                  (letrec ((x7393
                                                                            #\0))
                                                                    (char<=?
                                                                     x7393
                                                                     c))))
                                                          (if x-cnd7392
                                                            (letrec ((x7394
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7394))
                                                            #f))))
                                                g7391)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7395
                                                        (letrec ((x7397
                                                                  (list? l)))
                                                          (assert x7397)))
                                                       (g7396
                                                        (letrec ((x-cnd7398
                                                                  (null? l)))
                                                          (if x-cnd7398
                                                            #f
                                                            (letrec ((x-cnd7399
                                                                      (letrec ((x7400
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7400
                                                                         k))))
                                                              (if x-cnd7399
                                                                (car l)
                                                                (letrec ((x7401
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7401))))))))
                                                g7396)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7402 (if x #f #t)))
                                                g7402)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7403 (append l1 l2)))
                                                g7403)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7404
                                                        (letrec ((x7406
                                                                  (list? l)))
                                                          (assert x7406)))
                                                       (g7405
                                                        (letrec ((x-cnd7407
                                                                  (null? l)))
                                                          (if x-cnd7407
                                                            #f
                                                            (letrec ((x-cnd7408
                                                                      (letrec ((x7409
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7409
                                                                         e))))
                                                              (if x-cnd7408
                                                                l
                                                                (letrec ((x7410
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7410))))))))
                                                g7405)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7411
                                                        (letrec ((x7412
                                                                  (letrec ((x7413
                                                                            (letrec ((x7414
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7414))))
                                                                    (cdr
                                                                     x7413))))
                                                          (car x7412))))
                                                g7411)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7415
                                                        (letrec ((x7417
                                                                  (list? l)))
                                                          (assert x7417)))
                                                       (g7416
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7418
                                                                              (letrec ((x-cnd7419
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7419
                                                                                  0
                                                                                  (letrec ((x7420
                                                                                            (letrec ((x7421
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7421))))
                                                                                    (+
                                                                                     1
                                                                                     x7420))))))
                                                                      g7418))))
                                                          (letrec ((g7422
                                                                    (rec l)))
                                                            g7422))))
                                                g7416)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7423
                                                        (letrec ((x7426
                                                                  (char? c1)))
                                                          (assert x7426)))
                                                       (g7424
                                                        (letrec ((x7427
                                                                  (char? c2)))
                                                          (assert x7427)))
                                                       (g7425
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7428
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7428))))
                                                g7425)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7429
                                                        (letrec ((x7430
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7430))))
                                                g7429)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7431
                                                        (letrec ((x7432
                                                                  (letrec ((x7433
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7433))))
                                                          (cdr x7432))))
                                                g7431)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7434
                                                        (letrec ((x7436
                                                                  (list? l)))
                                                          (assert x7436)))
                                                       (g7435
                                                        (letrec ((x-cnd7437
                                                                  (null? l)))
                                                          (if x-cnd7437
                                                            #f
                                                            (letrec ((x-cnd7438
                                                                      (letrec ((x7439
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7439
                                                                         k))))
                                                              (if x-cnd7438
                                                                (car l)
                                                                (letrec ((x7440
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7440))))))))
                                                g7435)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7441
                                                        (letrec ((x7442
                                                                  (car x)))
                                                          (car x7442))))
                                                g7441)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7443
                                                        (letrec ((x7446
                                                                  (char? c1)))
                                                          (assert x7446)))
                                                       (g7444
                                                        (letrec ((x7447
                                                                  (char? c2)))
                                                          (assert x7447)))
                                                       (g7445
                                                        (letrec ((x7448
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7448))))
                                                g7445)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7449
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7450
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7450))))
                                                g7449)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7451
                                                        (letrec ((x7454
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7454)))
                                                       (g7452
                                                        (letrec ((x7455
                                                                  (list? l)))
                                                          (assert x7455)))
                                                       (g7453
                                                        (letrec ((x-cnd7456
                                                                  (null? l)))
                                                          (if x-cnd7456
                                                            #t
                                                            (letrec ((x-cnd7457
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7457
                                                                (letrec ((g7458
                                                                          (letrec ((x7460
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7460)))
                                                                         (g7459
                                                                          (letrec ((x7461
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7461))))
                                                                  g7459)
                                                                '()))))))
                                                g7453)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7462
                                                        (letrec ((x7464
                                                                  (number? x)))
                                                          (assert x7464)))
                                                       (g7463
                                                        (letrec ((x-cnd7465
                                                                  (< x 0)))
                                                          (if x-cnd7465
                                                            (- 0 x)
                                                            x))))
                                                g7463)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7466
                                                        (letrec ((x7469
                                                                  (char? c1)))
                                                          (assert x7469)))
                                                       (g7467
                                                        (letrec ((x7470
                                                                  (char? c2)))
                                                          (assert x7470)))
                                                       (g7468
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7471
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7471))))
                                                g7468)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7472
                                                        (letrec ((x7473
                                                                  (letrec ((x7474
                                                                            (letrec ((x7475
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7475))))
                                                                    (cdr
                                                                     x7474))))
                                                          (car x7473))))
                                                g7472)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7476 #f)) g7476)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7477
                                                        (letrec ((x7479
                                                                  (letrec ((x7480
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7480)))
                                                                 (x7478
                                                                  (gcd m n)))
                                                          (/ x7479 x7478))))
                                                g7477)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7481
                                                        (letrec ((x7483
                                                                  (number? x)))
                                                          (assert x7483)))
                                                       (g7482
                                                        (letrec ((x7484
                                                                  (<= x y)))
                                                          (not x7484))))
                                                g7482)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7485
                                                        (letrec ((x7489
                                                                  (list? l)))
                                                          (assert x7489)))
                                                       (g7486
                                                        (letrec ((x7490
                                                                  (number?
                                                                   index)))
                                                          (assert x7490)))
                                                       (g7487
                                                        (letrec ((x7491
                                                                  (letrec ((x7492
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7492))))
                                                          (assert x7491)))
                                                       (g7488
                                                        (letrec ((x-cnd7493
                                                                  (= index 0)))
                                                          (if x-cnd7493
                                                            (car l)
                                                            (letrec ((x7495
                                                                      (cdr l))
                                                                     (x7494
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7495
                                                               x7494))))))
                                                g7488)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7496
                                                        (letrec ((x-cnd7497
                                                                  (= b 0)))
                                                          (if x-cnd7497
                                                            a
                                                            (letrec ((x7498
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7498))))))
                                                g7496)))
                                           (mk-list
                                            (lambda (n x)
                                              (letrec ((g7499
                                                        (letrec ((x-cnd7500
                                                                  (< n 0)))
                                                          (if x-cnd7500
                                                            empty
                                                            (letrec ((x7501
                                                                      (letrec ((x7502
                                                                                (-
                                                                                 n
                                                                                 1)))
                                                                        (mk-list
                                                                         x7502
                                                                         x))))
                                                              (cons
                                                               x
                                                               x7501))))))
                                                g7499)))
                                           (mem
                                            (lambda (x xs)
                                              (letrec ((g7503
                                                        (letrec ((x-cnd7504
                                                                  (empty? xs)))
                                                          (if x-cnd7504
                                                            #f
                                                            (letrec ((val6904
                                                                      (letrec ((x7505
                                                                                (car
                                                                                 xs)))
                                                                        (=
                                                                         x
                                                                         x7505))))
                                                              (letrec ((g7506
                                                                        (if val6904
                                                                          val6904
                                                                          (letrec ((x7507
                                                                                    (cdr
                                                                                     xs)))
                                                                            (mem
                                                                             x
                                                                             x7507)))))
                                                                g7506))))))
                                                g7503))))
                                    (letrec ((g7508
                                              ((lambda (j6977 k6978 f6979)
                                                 (letrec ((g7510
                                                           (lambda (g6975
                                                                    g6976)
                                                             (letrec ((g7511
                                                                       (letrec ((x6980
                                                                                 (integer?/c
                                                                                  j6977
                                                                                  k6978
                                                                                  g6975))
                                                                                (x6981
                                                                                 (integer?/c
                                                                                  j6977
                                                                                  k6978
                                                                                  g6976)))
                                                                         (letrec ((g7512
                                                                                   (letrec ((x7514
                                                                                             ((lambda (_
                                                                                                       x)
                                                                                                (letrec ((g7515
                                                                                                          (letrec ((x7520
                                                                                                                    (listof
                                                                                                                     integer?/c)))
                                                                                                            (and/c
                                                                                                             x7520
                                                                                                             (lambda (g6982
                                                                                                                      g6983
                                                                                                                      g6984)
                                                                                                               (letrec ((g7516
                                                                                                                         (letrec ((x-cnd7517
                                                                                                                                   ((lambda (l)
                                                                                                                                      (letrec ((g7518
                                                                                                                                                (letrec ((val6905
                                                                                                                                                          (empty?
                                                                                                                                                           l)))
                                                                                                                                                  (letrec ((g7519
                                                                                                                                                            (if val6905
                                                                                                                                                              val6905
                                                                                                                                                              (member
                                                                                                                                                               x
                                                                                                                                                               l))))
                                                                                                                                                    g7519))))
                                                                                                                                        g7518))
                                                                                                                                    g6984)))
                                                                                                                           (if x-cnd7517
                                                                                                                             g6984
                                                                                                                             (blame
                                                                                                                              g6982
                                                                                                                              '(lambda (l)
                                                                                                                                 (letrec ((val6905
                                                                                                                                           (empty?
                                                                                                                                            l)))
                                                                                                                                   (if val6905
                                                                                                                                     val6905
                                                                                                                                     (member
                                                                                                                                      x
                                                                                                                                      l)))))))))
                                                                                                                 g7516))))))
                                                                                                  g7515))
                                                                                              x6980
                                                                                              x6981))
                                                                                            (x7513
                                                                                             (f6979
                                                                                              x6980
                                                                                              x6981)))
                                                                                     (x7514
                                                                                      j6977
                                                                                      k6978
                                                                                      x7513))))
                                                                           g7512))))
                                                               g7511))))
                                                   g7510))
                                               'module
                                               'importer
                                               mk-list))
                                             (g7509
                                              (letrec ((x7523
                                                        ((lambda (j6987
                                                                  k6988
                                                                  f6989)
                                                           (letrec ((g7524
                                                                     (lambda (g6985
                                                                              g6986)
                                                                       (letrec ((g7525
                                                                                 (letrec ((x7526
                                                                                           (letrec ((x7529
                                                                                                     (integer?/c
                                                                                                      j6987
                                                                                                      k6988
                                                                                                      g6985))
                                                                                                    (x7527
                                                                                                     (letrec ((x7528
                                                                                                               (listof
                                                                                                                integer?/c)))
                                                                                                       (x7528
                                                                                                        j6987
                                                                                                        k6988
                                                                                                        g6986))))
                                                                                             (f6989
                                                                                              x7529
                                                                                              x7527))))
                                                                                   (boolean?/c
                                                                                    j6987
                                                                                    k6988
                                                                                    x7526))))
                                                                         g7525))))
                                                             g7524))
                                                         'module
                                                         'importer
                                                         mem))
                                                       (x7522 (input))
                                                       (x7521 (input)))
                                                (x7523 x7522 x7521))))
                                      g7509))))
                          g7003))))
              g7001)))
    g7000))
