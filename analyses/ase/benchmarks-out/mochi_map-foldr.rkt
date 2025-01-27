(letrec ((any? (lambda (v) (letrec ((g6993 #t)) g6993)))
         (meta (lambda (v) (letrec ((g6994 v)) g6994)))
         (member
          (lambda (v lst)
            (letrec ((g6995
                      (letrec ((g6996
                                (letrec ((x-e6997 lst))
                                  (match
                                   x-e6997
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd6998 (eq? v v1)))
                                       (if x-cnd6998 #t (member v vs)))))))))
                        g6996)))
              g6995)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g6999 (lambda (v) (letrec ((g7000 v)) g7000)))) g6999)))
         (nonzero?
          (lambda (v)
            (letrec ((g7001 (letrec ((x7002 (= v 0))) (not x7002)))) g7001))))
  (letrec ((g7003
            (letrec ((g7004
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7005 '())
                                 (g7006
                                  (letrec ((real/c
                                            (lambda (g6904 g6905 g6906)
                                              (letrec ((g7007
                                                        (letrec ((x-cnd7008
                                                                  (real?
                                                                   g6906)))
                                                          (if x-cnd7008
                                                            g6906
                                                            (blame
                                                             g6904
                                                             'real?)))))
                                                g7007)))
                                           (boolean?/c
                                            (lambda (g6907 g6908 g6909)
                                              (letrec ((g7009
                                                        (letrec ((x-cnd7010
                                                                  (boolean?
                                                                   g6909)))
                                                          (if x-cnd7010
                                                            g6909
                                                            (blame
                                                             g6907
                                                             'boolean?)))))
                                                g7009)))
                                           (number?/c
                                            (lambda (g6910 g6911 g6912)
                                              (letrec ((g7011
                                                        (letrec ((x-cnd7012
                                                                  (number?
                                                                   g6912)))
                                                          (if x-cnd7012
                                                            g6912
                                                            (blame
                                                             g6910
                                                             'number?)))))
                                                g7011)))
                                           (any/c
                                            (lambda (g6913 g6914 g6915)
                                              (letrec ((g7013
                                                        (letrec ((x-cnd7014
                                                                  ((lambda (v)
                                                                     (letrec ((g7015
                                                                               #t))
                                                                       g7015))
                                                                   g6915)))
                                                          (if x-cnd7014
                                                            g6915
                                                            (blame
                                                             g6913
                                                             '(lambda (v)
                                                                #t))))))
                                                g7013)))
                                           (any?/c
                                            (lambda (g6916 g6917 g6918)
                                              (letrec ((g7016
                                                        (letrec ((x-cnd7017
                                                                  ((lambda (v)
                                                                     (letrec ((g7018
                                                                               #t))
                                                                       g7018))
                                                                   g6918)))
                                                          (if x-cnd7017
                                                            g6918
                                                            (blame
                                                             g6916
                                                             '(lambda (v)
                                                                #t))))))
                                                g7016)))
                                           (cons?/c
                                            (lambda (g6919 g6920 g6921)
                                              (letrec ((g7019
                                                        (letrec ((x-cnd7020
                                                                  (pair?
                                                                   g6921)))
                                                          (if x-cnd7020
                                                            g6921
                                                            (blame
                                                             g6919
                                                             'pair?)))))
                                                g7019)))
                                           (pair?/c
                                            (lambda (g6922 g6923 g6924)
                                              (letrec ((g7021
                                                        (letrec ((x-cnd7022
                                                                  (pair?
                                                                   g6924)))
                                                          (if x-cnd7022
                                                            g6924
                                                            (blame
                                                             g6922
                                                             'pair?)))))
                                                g7021)))
                                           (integer?/c
                                            (lambda (g6925 g6926 g6927)
                                              (letrec ((g7023
                                                        (letrec ((x-cnd7024
                                                                  (integer?
                                                                   g6927)))
                                                          (if x-cnd7024
                                                            g6927
                                                            (blame
                                                             g6925
                                                             'integer?)))))
                                                g7023)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7025
                                                        (lambda (k j v)
                                                          (letrec ((g7026
                                                                    (letrec ((x-cnd7027
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7027
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7026))))
                                                g7025)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7028
                                                        (lambda (k j v)
                                                          (letrec ((g7029
                                                                    (letrec ((x-cnd7030
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7030
                                                                        '()
                                                                        (letrec ((x7034
                                                                                  (letrec ((x7035
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7035)))
                                                                                 (x7031
                                                                                  (letrec ((x7033
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7032
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7033
                                                                                     k
                                                                                     j
                                                                                     x7032))))
                                                                          (cons
                                                                           x7034
                                                                           x7031))))))
                                                            g7029))))
                                                g7028)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7036 #t)) g7036)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7037
                                                        (letrec ((x7038
                                                                  (= v 0)))
                                                          (not x7038))))
                                                g7037)))
                                           (nonzero?/c
                                            (lambda (g6928 g6929 g6930)
                                              (letrec ((g7039
                                                        (letrec ((x-cnd7040
                                                                  ((lambda (v)
                                                                     (letrec ((g7041
                                                                               (letrec ((x7042
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7042))))
                                                                       g7041))
                                                                   g6930)))
                                                          (if x-cnd7040
                                                            g6930
                                                            (blame
                                                             g6928
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7039)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7043 v)) g7043)))
                                           (+
                                            ((lambda (j6933 k6934 f6935)
                                               (letrec ((g7045
                                                         (lambda (g6931 g6932)
                                                           (letrec ((g7046
                                                                     (letrec ((x7047
                                                                               (letrec ((x7049
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6931))
                                                                                        (x7048
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6932)))
                                                                                 (f6935
                                                                                  x7049
                                                                                  x7048))))
                                                                       (number?/c
                                                                        j6933
                                                                        k6934
                                                                        x7047))))
                                                             g7046))))
                                                 g7045))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7044 (orig-+ a b)))
                                                 g7044))))
                                           (-
                                            ((lambda (j6938 k6939 f6940)
                                               (letrec ((g7051
                                                         (lambda (g6936 g6937)
                                                           (letrec ((g7052
                                                                     (letrec ((x7053
                                                                               (letrec ((x7055
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6936))
                                                                                        (x7054
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6937)))
                                                                                 (f6940
                                                                                  x7055
                                                                                  x7054))))
                                                                       (number?/c
                                                                        j6938
                                                                        k6939
                                                                        x7053))))
                                                             g7052))))
                                                 g7051))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7050 (orig-- a b)))
                                                 g7050))))
                                           (*
                                            ((lambda (j6943 k6944 f6945)
                                               (letrec ((g7057
                                                         (lambda (g6941 g6942)
                                                           (letrec ((g7058
                                                                     (letrec ((x7059
                                                                               (letrec ((x7061
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6941))
                                                                                        (x7060
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6942)))
                                                                                 (f6945
                                                                                  x7061
                                                                                  x7060))))
                                                                       (number?/c
                                                                        j6943
                                                                        k6944
                                                                        x7059))))
                                                             g7058))))
                                                 g7057))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7056 (orig-* a b)))
                                                 g7056))))
                                           (/
                                            ((lambda (j6948 k6949 f6950)
                                               (letrec ((g7063
                                                         (lambda (g6946 g6947)
                                                           (letrec ((g7064
                                                                     (letrec ((x7065
                                                                               (letrec ((x7067
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6946))
                                                                                        (x7066
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6947)))
                                                                                 (f6950
                                                                                  x7067
                                                                                  x7066))))
                                                                       (number?/c
                                                                        j6948
                                                                        k6949
                                                                        x7065))))
                                                             g7064))))
                                                 g7063))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7062 (orig-/ a b)))
                                                 g7062))))
                                           (car
                                            ((lambda (j6952 k6953 f6954)
                                               (letrec ((g7069
                                                         (lambda (g6951)
                                                           (letrec ((g7070
                                                                     (letrec ((x7071
                                                                               (letrec ((x7072
                                                                                         (pair?/c
                                                                                          j6952
                                                                                          k6953
                                                                                          g6951)))
                                                                                 (f6954
                                                                                  x7072))))
                                                                       (any/c
                                                                        j6952
                                                                        k6953
                                                                        x7071))))
                                                             g7070))))
                                                 g7069))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7068 (orig-car p)))
                                                 g7068))))
                                           (cdr
                                            ((lambda (j6956 k6957 f6958)
                                               (letrec ((g7074
                                                         (lambda (g6955)
                                                           (letrec ((g7075
                                                                     (letrec ((x7076
                                                                               (letrec ((x7077
                                                                                         (pair?/c
                                                                                          j6956
                                                                                          k6957
                                                                                          g6955)))
                                                                                 (f6958
                                                                                  x7077))))
                                                                       (any/c
                                                                        j6956
                                                                        k6957
                                                                        x7076))))
                                                             g7075))))
                                                 g7074))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7073 (orig-cdr p)))
                                                 g7073))))
                                           (cons
                                            ((lambda (j6961 k6962 f6963)
                                               (letrec ((g7079
                                                         (lambda (g6959 g6960)
                                                           (letrec ((g7080
                                                                     (letrec ((x7081
                                                                               (letrec ((x7083
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6959))
                                                                                        (x7082
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6960)))
                                                                                 (f6963
                                                                                  x7083
                                                                                  x7082))))
                                                                       (pair?/c
                                                                        j6961
                                                                        k6962
                                                                        x7081))))
                                                             g7080))))
                                                 g7079))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7078 (cons a b)))
                                                 g7078))))
                                           (vector-ref
                                            ((lambda (j6965 k6966 f6967)
                                               (letrec ((g7085
                                                         (lambda (g6964)
                                                           (letrec ((g7086
                                                                     (letrec ((x7087
                                                                               (letrec ((x7088
                                                                                         (vector?/c
                                                                                          j6965
                                                                                          k6966
                                                                                          g6964)))
                                                                                 (f6967
                                                                                  x7088))))
                                                                       (integer?/c
                                                                        j6965
                                                                        k6966
                                                                        x7087))))
                                                             g7086))))
                                                 g7085))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7084
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7084))))
                                           (vector-set!
                                            ((lambda (j6970 k6971 f6972)
                                               (letrec ((g7090
                                                         (lambda (g6968 g6969)
                                                           (letrec ((g7091
                                                                     (letrec ((x7092
                                                                               (letrec ((x7094
                                                                                         (vector?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6968))
                                                                                        (x7093
                                                                                         (integer?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6969)))
                                                                                 (f6972
                                                                                  x7094
                                                                                  x7093))))
                                                                       (any/c
                                                                        j6970
                                                                        k6971
                                                                        x7092))))
                                                             g7091))))
                                                 g7090))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7089
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7089))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7095 #t)) g7095)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7096
                                                        (letrec ((x7097
                                                                  (letrec ((x7098
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7098))))
                                                          (cdr x7097))))
                                                g7096)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7099
                                                        (letrec ((x7102
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7102)))
                                                       (g7100
                                                        (letrec ((x7103
                                                                  (list? l)))
                                                          (assert x7103)))
                                                       (g7101
                                                        (letrec ((x-cnd7104
                                                                  (null? l)))
                                                          (if x-cnd7104
                                                            '()
                                                            (letrec ((x7107
                                                                      (letrec ((x7108
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7108)))
                                                                     (x7105
                                                                      (letrec ((x7106
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7106))))
                                                              (cons
                                                               x7107
                                                               x7105))))))
                                                g7101)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7109
                                                        (letrec ((x7110
                                                                  (car x)))
                                                          (cdr x7110))))
                                                g7109)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7111
                                                        (letrec ((x7112
                                                                  (letrec ((x7113
                                                                            (letrec ((x7114
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7114))))
                                                                    (cdr
                                                                     x7113))))
                                                          (car x7112))))
                                                g7111)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7115
                                                        (letrec ((x7116
                                                                  (letrec ((x7117
                                                                            (letrec ((x7118
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7118))))
                                                                    (car
                                                                     x7117))))
                                                          (cdr x7116))))
                                                g7115)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7119
                                                        (letrec ((x7122
                                                                  (string?
                                                                   filename)))
                                                          (assert x7122)))
                                                       (g7120
                                                        (letrec ((x7123
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7123)))
                                                       (g7121
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7124
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7125 res))
                                                            g7125))))
                                                g7121)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7126
                                                        (letrec ((x7127
                                                                  (letrec ((x7128
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7128))))
                                                          (car x7127))))
                                                g7126)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7129
                                                        (letrec ((x7130
                                                                  (letrec ((x7131
                                                                            (letrec ((x7132
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7132))))
                                                                    (car
                                                                     x7131))))
                                                          (cdr x7130))))
                                                g7129)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7133
                                                        (letrec ((x7135
                                                                  (list? l)))
                                                          (assert x7135)))
                                                       (g7134
                                                        (letrec ((x-cnd7136
                                                                  (null? l)))
                                                          (if x-cnd7136
                                                            #f
                                                            (letrec ((x-cnd7137
                                                                      (letrec ((x7138
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7138
                                                                         k))))
                                                              (if x-cnd7137
                                                                (car l)
                                                                (letrec ((x7139
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7139))))))))
                                                g7134)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7140
                                                        (letrec ((x7141
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7141))))
                                                g7140)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7142
                                                        (letrec ((x7144
                                                                  (list? l)))
                                                          (assert x7144)))
                                                       (g7143
                                                        (letrec ((x-cnd7145
                                                                  (null? l)))
                                                          (if x-cnd7145
                                                            ""
                                                            (letrec ((x7148
                                                                      (letrec ((x7149
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7149)))
                                                                     (x7146
                                                                      (letrec ((x7147
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7147))))
                                                              (string-append
                                                               x7148
                                                               x7146))))))
                                                g7143)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7150
                                                        (letrec ((x7153
                                                                  (char? c1)))
                                                          (assert x7153)))
                                                       (g7151
                                                        (letrec ((x7154
                                                                  (char? c2)))
                                                          (assert x7154)))
                                                       (g7152
                                                        (letrec ((val6887
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7155
                                                                    (if val6887
                                                                      val6887
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7155))))
                                                g7152)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7156
                                                        (letrec ((x7157
                                                                  (letrec ((x7158
                                                                            (letrec ((x7159
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7159))))
                                                                    (cdr
                                                                     x7158))))
                                                          (cdr x7157))))
                                                g7156)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7160
                                                        (letrec ((x7163
                                                                  (list? l)))
                                                          (assert x7163)))
                                                       (g7161
                                                        (letrec ((x7164
                                                                  (numer?)))
                                                          (assert x7164)))
                                                       (g7162
                                                        (letrec ((x-cnd7165
                                                                  (zero? k)))
                                                          (if x-cnd7165
                                                            x
                                                            (letrec ((x7167
                                                                      (cdr x))
                                                                     (x7166
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7167
                                                               x7166))))))
                                                g7162)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7168 '())) g7168)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7169
                                                        (letrec ((x-cnd7170
                                                                  (letrec ((x7171
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7171))))
                                                          (if x-cnd7170
                                                            (letrec ((x7172
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7172))
                                                            #f))))
                                                g7169)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7173
                                                        (letrec ((x7175
                                                                  (number? x)))
                                                          (assert x7175)))
                                                       (g7174
                                                        (letrec ((val6888
                                                                  (< x y)))
                                                          (letrec ((g7176
                                                                    (if val6888
                                                                      val6888
                                                                      (letrec ((val6889
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7177
                                                                                  (if val6889
                                                                                    val6889
                                                                                    #f)))
                                                                          g7177)))))
                                                            g7176))))
                                                g7174)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7178
                                                        (letrec ((val6890
                                                                  (letrec ((x7179
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7179
                                                                     9))))
                                                          (letrec ((g7180
                                                                    (if val6890
                                                                      val6890
                                                                      (letrec ((val6891
                                                                                (letrec ((x7181
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7181
                                                                                   10))))
                                                                        (letrec ((g7182
                                                                                  (if val6891
                                                                                    val6891
                                                                                    (letrec ((x7183
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7183
                                                                                       32)))))
                                                                          g7182)))))
                                                            g7180))))
                                                g7178)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7184
                                                        (letrec ((x7185
                                                                  (letrec ((x7186
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7186))))
                                                          (cdr x7185))))
                                                g7184)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7187
                                                        (letrec ((x7189
                                                                  (number? x)))
                                                          (assert x7189)))
                                                       (g7188 (> x 0)))
                                                g7188)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7190 #f)) g7190)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7191
                                                        (letrec ((x7192
                                                                  (cdr x)))
                                                          (cdr x7192))))
                                                g7191)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7193
                                                        (letrec ((x7195
                                                                  (number? x)))
                                                          (assert x7195)))
                                                       (g7194
                                                        (letrec ((x-cnd7196
                                                                  (< x 0)))
                                                          (if x-cnd7196
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7194)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7197
                                                        (letrec ((val6892
                                                                  (eq? a b)))
                                                          (letrec ((g7198
                                                                    (if val6892
                                                                      val6892
                                                                      (letrec ((val6893
                                                                                (letrec ((x7200
                                                                                          (null?
                                                                                           a))
                                                                                         (x7199
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7200
                                                                                       x7199))))
                                                                        (letrec ((g7201
                                                                                  (if val6893
                                                                                    val6893
                                                                                    (letrec ((val6894
                                                                                              (letrec ((x7204
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7203
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7202
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7204
                                                                                                     x7203
                                                                                                     x7202))))
                                                                                      (letrec ((g7205
                                                                                                (if val6894
                                                                                                  val6894
                                                                                                  (letrec ((val6895
                                                                                                            (letrec ((x7213
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7212
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7209
                                                                                                                      (letrec ((x7211
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7210
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7211
                                                                                                                         x7210)))
                                                                                                                     (x7206
                                                                                                                      (letrec ((x7208
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7207
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7208
                                                                                                                         x7207))))
                                                                                                              (and x7213
                                                                                                                   x7212
                                                                                                                   x7209
                                                                                                                   x7206))))
                                                                                                    (letrec ((g7214
                                                                                                              (if val6895
                                                                                                                val6895
                                                                                                                (letrec ((x7230
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7229
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7215
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7216
                                                                                                                                      (letrec ((x7227
                                                                                                                                                (letrec ((x7228
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7228
                                                                                                                                                   n)))
                                                                                                                                               (x7217
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7218
                                                                                                                                                                      (letrec ((x7225
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7219
                                                                                                                                                                                (letrec ((x7222
                                                                                                                                                                                          (letrec ((x7224
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7223
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7224
                                                                                                                                                                                             x7223)))
                                                                                                                                                                                         (x7220
                                                                                                                                                                                          (letrec ((x7221
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7221))))
                                                                                                                                                                                  (and x7222
                                                                                                                                                                                       x7220))))
                                                                                                                                                                        (or x7225
                                                                                                                                                                            x7219))))
                                                                                                                                                              g7218))))
                                                                                                                                                  (letrec ((g7226
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7226))))
                                                                                                                                        (and x7227
                                                                                                                                             x7217))))
                                                                                                                              g7216))))
                                                                                                                  (and x7230
                                                                                                                       x7229
                                                                                                                       x7215)))))
                                                                                                      g7214)))))
                                                                                        g7205)))))
                                                                          g7201)))))
                                                            g7198))))
                                                g7197)))
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
                                           (foldr
                                            (lambda (f z xs)
                                              (letrec ((g7502
                                                        (letrec ((x-cnd7503
                                                                  (empty? xs)))
                                                          (if x-cnd7503
                                                            z
                                                            (letrec ((x7506
                                                                      (car xs))
                                                                     (x7504
                                                                      (letrec ((x7505
                                                                                (cdr
                                                                                 xs)))
                                                                        (foldr
                                                                         f
                                                                         z
                                                                         x7505))))
                                                              (f
                                                               x7506
                                                               x7504))))))
                                                g7502)))
                                           (map
                                            (lambda (f xs)
                                              (letrec ((g7507
                                                        (letrec ((x7508
                                                                  (letrec ((x7511
                                                                            (x
                                                                             ys))
                                                                           (x7509
                                                                            (letrec ((x7510
                                                                                      (f
                                                                                       x)))
                                                                              (cons
                                                                               x7510
                                                                               ys))))
                                                                    (λ x7511
                                                                      x7509))))
                                                          (foldr
                                                           x7508
                                                           empty
                                                           xs))))
                                                g7507))))
                                    (letrec ((g7512
                                              (letrec ((x7517
                                                        ((lambda (j6976
                                                                  k6977
                                                                  f6978)
                                                           (letrec ((g7518
                                                                     (lambda (g6973
                                                                              g6974
                                                                              g6975)
                                                                       (letrec ((g7519
                                                                                 (letrec ((x7520
                                                                                           (letrec ((x7524
                                                                                                     ((lambda (j6981
                                                                                                               k6982
                                                                                                               f6983)
                                                                                                        (letrec ((g7525
                                                                                                                  (lambda (g6979
                                                                                                                           g6980)
                                                                                                                    (letrec ((g7526
                                                                                                                              (letrec ((x7527
                                                                                                                                        (letrec ((x7529
                                                                                                                                                  (any/c
                                                                                                                                                   j6981
                                                                                                                                                   k6982
                                                                                                                                                   g6979))
                                                                                                                                                 (x7528
                                                                                                                                                  (any/c
                                                                                                                                                   j6981
                                                                                                                                                   k6982
                                                                                                                                                   g6980)))
                                                                                                                                          (f6983
                                                                                                                                           x7529
                                                                                                                                           x7528))))
                                                                                                                                (any/c
                                                                                                                                 j6981
                                                                                                                                 k6982
                                                                                                                                 x7527))))
                                                                                                                      g7526))))
                                                                                                          g7525))
                                                                                                      j6976
                                                                                                      k6977
                                                                                                      g6973))
                                                                                                    (x7523
                                                                                                     (any/c
                                                                                                      j6976
                                                                                                      k6977
                                                                                                      g6974))
                                                                                                    (x7521
                                                                                                     (letrec ((x7522
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7522
                                                                                                        j6976
                                                                                                        k6977
                                                                                                        g6975))))
                                                                                             (f6978
                                                                                              x7524
                                                                                              x7523
                                                                                              x7521))))
                                                                                   (any/c
                                                                                    j6976
                                                                                    k6977
                                                                                    x7520))))
                                                                         g7519))))
                                                             g7518))
                                                         'module
                                                         'importer
                                                         foldr))
                                                       (x7516 (input))
                                                       (x7515 (input))
                                                       (x7514 (input)))
                                                (x7517 x7516 x7515 x7514)))
                                             (g7513
                                              (letrec ((x7532
                                                        ((lambda (j6986
                                                                  k6987
                                                                  f6988)
                                                           (letrec ((g7533
                                                                     (lambda (g6984
                                                                              g6985)
                                                                       (letrec ((g7534
                                                                                 (letrec ((x7543
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7535
                                                                                           (letrec ((x7538
                                                                                                     ((lambda (j6990
                                                                                                               k6991
                                                                                                               f6992)
                                                                                                        (letrec ((g7539
                                                                                                                  (lambda (g6989)
                                                                                                                    (letrec ((g7540
                                                                                                                              (letrec ((x7541
                                                                                                                                        (letrec ((x7542
                                                                                                                                                  (any/c
                                                                                                                                                   j6990
                                                                                                                                                   k6991
                                                                                                                                                   g6989)))
                                                                                                                                          (f6992
                                                                                                                                           x7542))))
                                                                                                                                (any/c
                                                                                                                                 j6990
                                                                                                                                 k6991
                                                                                                                                 x7541))))
                                                                                                                      g7540))))
                                                                                                          g7539))
                                                                                                      j6986
                                                                                                      k6987
                                                                                                      g6984))
                                                                                                    (x7536
                                                                                                     (letrec ((x7537
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7537
                                                                                                        j6986
                                                                                                        k6987
                                                                                                        g6985))))
                                                                                             (f6988
                                                                                              x7538
                                                                                              x7536))))
                                                                                   (x7543
                                                                                    j6986
                                                                                    k6987
                                                                                    x7535))))
                                                                         g7534))))
                                                             g7533))
                                                         'module
                                                         'importer
                                                         map))
                                                       (x7531 (input))
                                                       (x7530 (input)))
                                                (x7532 x7531 x7530))))
                                      g7513))))
                          g7006))))
              g7004)))
    g7003))
