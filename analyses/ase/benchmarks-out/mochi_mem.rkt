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
                                                                                                                (letrec ((x7230
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7229
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7212
                                                                                                                          (letrec ((x7226
                                                                                                                                    (letrec ((x7227
                                                                                                                                              (letrec ((x7228
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7228))))
                                                                                                                                      (x7227)))
                                                                                                                                   (x7213
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
                                                                                                                            (let x7226 x7213))))
                                                                                                                  (and x7230
                                                                                                                       x7229
                                                                                                                       x7212)))))
                                                                                                      g7211)))))
                                                                                        g7202)))))
                                                                          g7198)))))
                                                            g7195))))
                                                g7194)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7231
                                                        (letrec ((x7232
                                                                  (letrec ((x7233
                                                                            (letrec ((x7234
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7234))))
                                                                    (car
                                                                     x7233))))
                                                          (cdr x7232))))
                                                g7231)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7235
                                                        (letrec ((x7236
                                                                  (letrec ((x7237
                                                                            (letrec ((x7238
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7238))))
                                                                    (car
                                                                     x7237))))
                                                          (car x7236))))
                                                g7235)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7239 (eq? x y)))
                                                g7239)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7240
                                                        (letrec ((x7242
                                                                  (number? x)))
                                                          (assert x7242)))
                                                       (g7241
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7243
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7244
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7244)))))
                                                            g7243))))
                                                g7241)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7245
                                                        (letrec ((x7248
                                                                  (string?
                                                                   filename)))
                                                          (assert x7248)))
                                                       (g7246
                                                        (letrec ((x7249
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7249)))
                                                       (g7247
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7250
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7251 res))
                                                            g7251))))
                                                g7247)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7252 (cons x '())))
                                                g7252)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7253
                                                        (letrec ((x7256
                                                                  (char? c1)))
                                                          (assert x7256)))
                                                       (g7254
                                                        (letrec ((x7257
                                                                  (char? c2)))
                                                          (assert x7257)))
                                                       (g7255
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7258
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7258))))
                                                g7255)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7259
                                                        (letrec ((x7260
                                                                  (letrec ((x7261
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7261))))
                                                          (cdr x7260))))
                                                g7259)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7262
                                                        (letrec ((x7263
                                                                  (letrec ((x7264
                                                                            (letrec ((x7265
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7265))))
                                                                    (car
                                                                     x7264))))
                                                          (cdr x7263))))
                                                g7262)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7266
                                                        (letrec ((x7267
                                                                  (letrec ((x7268
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7268))))
                                                          (car x7267))))
                                                g7266)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7269
                                                        (letrec ((x7270
                                                                  (letrec ((x7271
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7271))))
                                                          (car x7270))))
                                                g7269)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7272
                                                        (letrec ((x7275
                                                                  (char? c1)))
                                                          (assert x7275)))
                                                       (g7273
                                                        (letrec ((x7276
                                                                  (char? c2)))
                                                          (assert x7276)))
                                                       (g7274
                                                        (letrec ((x7277
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7277))))
                                                g7274)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7278
                                                        (letrec ((x7279
                                                                  (letrec ((x7280
                                                                            (letrec ((x7281
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7281))))
                                                                    (car
                                                                     x7280))))
                                                          (car x7279))))
                                                g7278)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7282
                                                        (letrec ((x7284
                                                                  (number? x)))
                                                          (assert x7284)))
                                                       (g7283 (< x 0)))
                                                g7283)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7285 (memq e l)))
                                                g7285)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7286
                                                        (letrec ((x7287
                                                                  (letrec ((x7288
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7288))))
                                                          (car x7287))))
                                                g7286)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7289 '())) g7289)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7290
                                                        (letrec ((x7292
                                                                  (list? l)))
                                                          (assert x7292)))
                                                       (g7291
                                                        (letrec ((x-cnd7293
                                                                  (null? l)))
                                                          (if x-cnd7293
                                                            '()
                                                            (letrec ((x7296
                                                                      (letrec ((x7297
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7297)))
                                                                     (x7294
                                                                      (letrec ((x7295
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7295))))
                                                              (append
                                                               x7296
                                                               x7294))))))
                                                g7291)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7298
                                                        (letrec ((x7299
                                                                  (letrec ((x7300
                                                                            (letrec ((x7301
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7301))))
                                                                    (car
                                                                     x7300))))
                                                          (car x7299))))
                                                g7298)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7302
                                                        (letrec ((x7303
                                                                  (letrec ((x7304
                                                                            (letrec ((x7305
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7305))))
                                                                    (cdr
                                                                     x7304))))
                                                          (cdr x7303))))
                                                g7302)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7306
                                                        (letrec ((x7308
                                                                  (number? x)))
                                                          (assert x7308)))
                                                       (g7307
                                                        (letrec ((x7309
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7309))))
                                                g7307)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7310
                                                        (letrec ((x7311
                                                                  (letrec ((x7312
                                                                            (letrec ((x7313
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7313))))
                                                                    (car
                                                                     x7312))))
                                                          (car x7311))))
                                                g7310)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7314
                                                        (letrec ((x7317
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7317)))
                                                       (g7315
                                                        (letrec ((x7318
                                                                  (list?
                                                                   args)))
                                                          (assert x7318)))
                                                       (g7316
                                                        (if cnd
                                                          (letrec ((g7319
                                                                    (proc)))
                                                            g7319)
                                                          (if cnd
                                                            (letrec ((g7320
                                                                      (letrec ((x7321
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7321))))
                                                              g7320)
                                                            (if cnd
                                                              (letrec ((g7322
                                                                        (letrec ((x7324
                                                                                  (car
                                                                                   args))
                                                                                 (x7323
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7324
                                                                           x7323))))
                                                                g7322)
                                                              (if cnd
                                                                (letrec ((g7325
                                                                          (letrec ((x7328
                                                                                    (car
                                                                                     args))
                                                                                   (x7327
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7326
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7328
                                                                             x7327
                                                                             x7326))))
                                                                  g7325)
                                                                (if cnd
                                                                  (letrec ((g7329
                                                                            (letrec ((x7333
                                                                                      (car
                                                                                       args))
                                                                                     (x7332
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7331
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7330
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7333
                                                                               x7332
                                                                               x7331
                                                                               x7330))))
                                                                    g7329)
                                                                  (if cnd
                                                                    (letrec ((g7334
                                                                              (letrec ((x7340
                                                                                        (car
                                                                                         args))
                                                                                       (x7339
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7338
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7337
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7335
                                                                                        (letrec ((x7336
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7336))))
                                                                                (proc
                                                                                 x7340
                                                                                 x7339
                                                                                 x7338
                                                                                 x7337
                                                                                 x7335))))
                                                                      g7334)
                                                                    (if cnd
                                                                      (letrec ((g7341
                                                                                (letrec ((x7349
                                                                                          (car
                                                                                           args))
                                                                                         (x7348
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7347
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7346
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7344
                                                                                          (letrec ((x7345
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7345)))
                                                                                         (x7342
                                                                                          (letrec ((x7343
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7343))))
                                                                                  (proc
                                                                                   x7349
                                                                                   x7348
                                                                                   x7347
                                                                                   x7346
                                                                                   x7344
                                                                                   x7342))))
                                                                        g7341)
                                                                      (if cnd
                                                                        (letrec ((g7350
                                                                                  (letrec ((x7360
                                                                                            (car
                                                                                             args))
                                                                                           (x7359
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7358
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7357
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7355
                                                                                            (letrec ((x7356
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7356)))
                                                                                           (x7353
                                                                                            (letrec ((x7354
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7354)))
                                                                                           (x7351
                                                                                            (letrec ((x7352
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7352))))
                                                                                    (proc
                                                                                     x7360
                                                                                     x7359
                                                                                     x7358
                                                                                     x7357
                                                                                     x7355
                                                                                     x7353
                                                                                     x7351))))
                                                                          g7350)
                                                                        (letrec ((g7361
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7361)))))))))))
                                                g7316)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7362
                                                        (letrec ((x7364
                                                                  (list? l)))
                                                          (assert x7364)))
                                                       (g7363
                                                        (letrec ((x-cnd7365
                                                                  (null? l)))
                                                          (if x-cnd7365
                                                            #f
                                                            (letrec ((x-cnd7366
                                                                      (letrec ((x7367
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7367
                                                                         e))))
                                                              (if x-cnd7366
                                                                l
                                                                (letrec ((x7368
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7368))))))))
                                                g7363)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7369
                                                        (letrec ((x7370
                                                                  (letrec ((x7371
                                                                            (letrec ((x7372
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7372))))
                                                                    (cdr
                                                                     x7371))))
                                                          (cdr x7370))))
                                                g7369)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7373
                                                        (letrec ((x7374
                                                                  (letrec ((x7375
                                                                            (letrec ((x7376
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7376))))
                                                                    (cdr
                                                                     x7375))))
                                                          (car x7374))))
                                                g7373)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7377 (random 42)))
                                                g7377)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7378
                                                        (letrec ((x7380
                                                                  (number? x)))
                                                          (assert x7380)))
                                                       (g7379 (= x 0)))
                                                g7379)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7381
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7382
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7382))))
                                                g7381)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7383
                                                        (letrec ((x7384
                                                                  (cdr x)))
                                                          (car x7384))))
                                                g7383)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7385
                                                        (letrec ((val6900
                                                                  (letrec ((x7388
                                                                            (pair?
                                                                             l))
                                                                           (x7386
                                                                            (letrec ((x7387
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7387))))
                                                                    (and x7388
                                                                         x7386))))
                                                          (letrec ((g7389
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7389))))
                                                g7385)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7390
                                                        (letrec ((x7391
                                                                  (letrec ((x7392
                                                                            (letrec ((x7393
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7393))))
                                                                    (cdr
                                                                     x7392))))
                                                          (cdr x7391))))
                                                g7390)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7394
                                                        (letrec ((x-cnd7395
                                                                  (letrec ((x7396
                                                                            #\0))
                                                                    (char<=?
                                                                     x7396
                                                                     c))))
                                                          (if x-cnd7395
                                                            (letrec ((x7397
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7397))
                                                            #f))))
                                                g7394)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7398
                                                        (letrec ((x7400
                                                                  (list? l)))
                                                          (assert x7400)))
                                                       (g7399
                                                        (letrec ((x-cnd7401
                                                                  (null? l)))
                                                          (if x-cnd7401
                                                            #f
                                                            (letrec ((x-cnd7402
                                                                      (letrec ((x7403
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7403
                                                                         k))))
                                                              (if x-cnd7402
                                                                (car l)
                                                                (letrec ((x7404
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7404))))))))
                                                g7399)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7405 (if x #f #t)))
                                                g7405)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7406 (append l1 l2)))
                                                g7406)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7407
                                                        (letrec ((x7409
                                                                  (list? l)))
                                                          (assert x7409)))
                                                       (g7408
                                                        (letrec ((x-cnd7410
                                                                  (null? l)))
                                                          (if x-cnd7410
                                                            #f
                                                            (letrec ((x-cnd7411
                                                                      (letrec ((x7412
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7412
                                                                         e))))
                                                              (if x-cnd7411
                                                                l
                                                                (letrec ((x7413
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7413))))))))
                                                g7408)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7414
                                                        (letrec ((x7415
                                                                  (letrec ((x7416
                                                                            (letrec ((x7417
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7417))))
                                                                    (cdr
                                                                     x7416))))
                                                          (car x7415))))
                                                g7414)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7418
                                                        (letrec ((x7420
                                                                  (list? l)))
                                                          (assert x7420)))
                                                       (g7419
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7421
                                                                              (letrec ((x-cnd7422
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7422
                                                                                  0
                                                                                  (letrec ((x7423
                                                                                            (letrec ((x7424
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7424))))
                                                                                    (+
                                                                                     1
                                                                                     x7423))))))
                                                                      g7421))))
                                                          (letrec ((g7425
                                                                    (rec l)))
                                                            g7425))))
                                                g7419)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7426
                                                        (letrec ((x7429
                                                                  (char? c1)))
                                                          (assert x7429)))
                                                       (g7427
                                                        (letrec ((x7430
                                                                  (char? c2)))
                                                          (assert x7430)))
                                                       (g7428
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7431
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7431))))
                                                g7428)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7432
                                                        (letrec ((x7433
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7433))))
                                                g7432)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7434
                                                        (letrec ((x7435
                                                                  (letrec ((x7436
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7436))))
                                                          (cdr x7435))))
                                                g7434)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7437
                                                        (letrec ((x7439
                                                                  (list? l)))
                                                          (assert x7439)))
                                                       (g7438
                                                        (letrec ((x-cnd7440
                                                                  (null? l)))
                                                          (if x-cnd7440
                                                            #f
                                                            (letrec ((x-cnd7441
                                                                      (letrec ((x7442
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7442
                                                                         k))))
                                                              (if x-cnd7441
                                                                (car l)
                                                                (letrec ((x7443
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7443))))))))
                                                g7438)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7444
                                                        (letrec ((x7445
                                                                  (car x)))
                                                          (car x7445))))
                                                g7444)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7446
                                                        (letrec ((x7449
                                                                  (char? c1)))
                                                          (assert x7449)))
                                                       (g7447
                                                        (letrec ((x7450
                                                                  (char? c2)))
                                                          (assert x7450)))
                                                       (g7448
                                                        (letrec ((x7451
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7451))))
                                                g7448)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7452
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7453
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7453))))
                                                g7452)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7454
                                                        (letrec ((x7457
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7457)))
                                                       (g7455
                                                        (letrec ((x7458
                                                                  (list? l)))
                                                          (assert x7458)))
                                                       (g7456
                                                        (letrec ((x-cnd7459
                                                                  (null? l)))
                                                          (if x-cnd7459
                                                            #t
                                                            (letrec ((x-cnd7460
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7460
                                                                (letrec ((g7461
                                                                          (letrec ((x7463
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7463)))
                                                                         (g7462
                                                                          (letrec ((x7464
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7464))))
                                                                  g7462)
                                                                '()))))))
                                                g7456)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7465
                                                        (letrec ((x7467
                                                                  (number? x)))
                                                          (assert x7467)))
                                                       (g7466
                                                        (letrec ((x-cnd7468
                                                                  (< x 0)))
                                                          (if x-cnd7468
                                                            (- 0 x)
                                                            x))))
                                                g7466)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7469
                                                        (letrec ((x7472
                                                                  (char? c1)))
                                                          (assert x7472)))
                                                       (g7470
                                                        (letrec ((x7473
                                                                  (char? c2)))
                                                          (assert x7473)))
                                                       (g7471
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7474
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7474))))
                                                g7471)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7475
                                                        (letrec ((x7476
                                                                  (letrec ((x7477
                                                                            (letrec ((x7478
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7478))))
                                                                    (cdr
                                                                     x7477))))
                                                          (car x7476))))
                                                g7475)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7479 #f)) g7479)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7480
                                                        (letrec ((x7482
                                                                  (letrec ((x7483
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7483)))
                                                                 (x7481
                                                                  (gcd m n)))
                                                          (/ x7482 x7481))))
                                                g7480)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7484
                                                        (letrec ((x7486
                                                                  (number? x)))
                                                          (assert x7486)))
                                                       (g7485
                                                        (letrec ((x7487
                                                                  (<= x y)))
                                                          (not x7487))))
                                                g7485)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7488
                                                        (letrec ((x7492
                                                                  (list? l)))
                                                          (assert x7492)))
                                                       (g7489
                                                        (letrec ((x7493
                                                                  (number?
                                                                   index)))
                                                          (assert x7493)))
                                                       (g7490
                                                        (letrec ((x7494
                                                                  (letrec ((x7495
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7495))))
                                                          (assert x7494)))
                                                       (g7491
                                                        (letrec ((x-cnd7496
                                                                  (= index 0)))
                                                          (if x-cnd7496
                                                            (car l)
                                                            (letrec ((x7498
                                                                      (cdr l))
                                                                     (x7497
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7498
                                                               x7497))))))
                                                g7491)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7499
                                                        (letrec ((x-cnd7500
                                                                  (= b 0)))
                                                          (if x-cnd7500
                                                            a
                                                            (letrec ((x7501
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7501))))))
                                                g7499)))
                                           (mk-list
                                            (lambda (n x)
                                              (letrec ((g7502
                                                        (letrec ((x-cnd7503
                                                                  (< n 0)))
                                                          (if x-cnd7503
                                                            empty
                                                            (letrec ((x7504
                                                                      (letrec ((x7505
                                                                                (-
                                                                                 n
                                                                                 1)))
                                                                        (mk-list
                                                                         x7505
                                                                         x))))
                                                              (cons
                                                               x
                                                               x7504))))))
                                                g7502)))
                                           (mem
                                            (lambda (x xs)
                                              (letrec ((g7506
                                                        (letrec ((x-cnd7507
                                                                  (empty? xs)))
                                                          (if x-cnd7507
                                                            #f
                                                            (letrec ((val6904
                                                                      (letrec ((x7508
                                                                                (car
                                                                                 xs)))
                                                                        (=
                                                                         x
                                                                         x7508))))
                                                              (letrec ((g7509
                                                                        (if val6904
                                                                          val6904
                                                                          (letrec ((x7510
                                                                                    (cdr
                                                                                     xs)))
                                                                            (mem
                                                                             x
                                                                             x7510)))))
                                                                g7509))))))
                                                g7506))))
                                    (letrec ((g7511
                                              ((lambda (j6977 k6978 f6979)
                                                 (letrec ((g7513
                                                           (lambda (g6975
                                                                    g6976)
                                                             (letrec ((g7514
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
                                                                         (letrec ((g7515
                                                                                   (letrec ((x7517
                                                                                             ((lambda (_
                                                                                                       x)
                                                                                                (letrec ((g7518
                                                                                                          (letrec ((x7523
                                                                                                                    (listof
                                                                                                                     integer?/c)))
                                                                                                            (and/c
                                                                                                             x7523
                                                                                                             (lambda (g6982
                                                                                                                      g6983
                                                                                                                      g6984)
                                                                                                               (letrec ((g7519
                                                                                                                         (letrec ((x-cnd7520
                                                                                                                                   ((lambda (l)
                                                                                                                                      (letrec ((g7521
                                                                                                                                                (letrec ((val6905
                                                                                                                                                          (empty?
                                                                                                                                                           l)))
                                                                                                                                                  (letrec ((g7522
                                                                                                                                                            (if val6905
                                                                                                                                                              val6905
                                                                                                                                                              (member
                                                                                                                                                               x
                                                                                                                                                               l))))
                                                                                                                                                    g7522))))
                                                                                                                                        g7521))
                                                                                                                                    g6984)))
                                                                                                                           (if x-cnd7520
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
                                                                                                                 g7519))))))
                                                                                                  g7518))
                                                                                              x6980
                                                                                              x6981))
                                                                                            (x7516
                                                                                             (f6979
                                                                                              x6980
                                                                                              x6981)))
                                                                                     (x7517
                                                                                      j6977
                                                                                      k6978
                                                                                      x7516))))
                                                                           g7515))))
                                                               g7514))))
                                                   g7513))
                                               'module
                                               'importer
                                               mk-list))
                                             (g7512
                                              (letrec ((x7526
                                                        ((lambda (j6987
                                                                  k6988
                                                                  f6989)
                                                           (letrec ((g7527
                                                                     (lambda (g6985
                                                                              g6986)
                                                                       (letrec ((g7528
                                                                                 (letrec ((x7529
                                                                                           (letrec ((x7532
                                                                                                     (integer?/c
                                                                                                      j6987
                                                                                                      k6988
                                                                                                      g6985))
                                                                                                    (x7530
                                                                                                     (letrec ((x7531
                                                                                                               (listof
                                                                                                                integer?/c)))
                                                                                                       (x7531
                                                                                                        j6987
                                                                                                        k6988
                                                                                                        g6986))))
                                                                                             (f6989
                                                                                              x7532
                                                                                              x7530))))
                                                                                   (boolean?/c
                                                                                    j6987
                                                                                    k6988
                                                                                    x7529))))
                                                                         g7528))))
                                                             g7527))
                                                         'module
                                                         'importer
                                                         mem))
                                                       (x7525 (input))
                                                       (x7524 (input)))
                                                (x7526 x7525 x7524))))
                                      g7512))))
                          g7003))))
              g7001)))
    g7000))
