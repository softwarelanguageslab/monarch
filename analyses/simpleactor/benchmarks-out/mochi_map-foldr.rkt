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
                                                                                                                (letrec ((x7233
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7232
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7215
                                                                                                                          (letrec ((x7229
                                                                                                                                    (letrec ((x7230
                                                                                                                                              (letrec ((x7231
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7231))))
                                                                                                                                      (x7230)))
                                                                                                                                   (x7216
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
                                                                                                                            (let x7229 x7216))))
                                                                                                                  (and x7233
                                                                                                                       x7232
                                                                                                                       x7215)))))
                                                                                                      g7214)))))
                                                                                        g7205)))))
                                                                          g7201)))))
                                                            g7198))))
                                                g7197)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7234
                                                        (letrec ((x7235
                                                                  (letrec ((x7236
                                                                            (letrec ((x7237
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7237))))
                                                                    (car
                                                                     x7236))))
                                                          (cdr x7235))))
                                                g7234)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7238
                                                        (letrec ((x7239
                                                                  (letrec ((x7240
                                                                            (letrec ((x7241
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7241))))
                                                                    (car
                                                                     x7240))))
                                                          (car x7239))))
                                                g7238)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7242 (eq? x y)))
                                                g7242)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7243
                                                        (letrec ((x7245
                                                                  (number? x)))
                                                          (assert x7245)))
                                                       (g7244
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7246
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7247
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7247)))))
                                                            g7246))))
                                                g7244)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7248
                                                        (letrec ((x7251
                                                                  (string?
                                                                   filename)))
                                                          (assert x7251)))
                                                       (g7249
                                                        (letrec ((x7252
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7252)))
                                                       (g7250
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7253
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7254 res))
                                                            g7254))))
                                                g7250)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7255 (cons x '())))
                                                g7255)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7256
                                                        (letrec ((x7259
                                                                  (char? c1)))
                                                          (assert x7259)))
                                                       (g7257
                                                        (letrec ((x7260
                                                                  (char? c2)))
                                                          (assert x7260)))
                                                       (g7258
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7261
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7261))))
                                                g7258)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7262
                                                        (letrec ((x7263
                                                                  (letrec ((x7264
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7264))))
                                                          (cdr x7263))))
                                                g7262)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7265
                                                        (letrec ((x7266
                                                                  (letrec ((x7267
                                                                            (letrec ((x7268
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7268))))
                                                                    (car
                                                                     x7267))))
                                                          (cdr x7266))))
                                                g7265)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7269
                                                        (letrec ((x7270
                                                                  (letrec ((x7271
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7271))))
                                                          (car x7270))))
                                                g7269)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7272
                                                        (letrec ((x7273
                                                                  (letrec ((x7274
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7274))))
                                                          (car x7273))))
                                                g7272)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7275
                                                        (letrec ((x7278
                                                                  (char? c1)))
                                                          (assert x7278)))
                                                       (g7276
                                                        (letrec ((x7279
                                                                  (char? c2)))
                                                          (assert x7279)))
                                                       (g7277
                                                        (letrec ((x7280
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7280))))
                                                g7277)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7281
                                                        (letrec ((x7282
                                                                  (letrec ((x7283
                                                                            (letrec ((x7284
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7284))))
                                                                    (car
                                                                     x7283))))
                                                          (car x7282))))
                                                g7281)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7285
                                                        (letrec ((x7287
                                                                  (number? x)))
                                                          (assert x7287)))
                                                       (g7286 (< x 0)))
                                                g7286)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7288 (memq e l)))
                                                g7288)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7289
                                                        (letrec ((x7290
                                                                  (letrec ((x7291
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7291))))
                                                          (car x7290))))
                                                g7289)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7292 '())) g7292)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7293
                                                        (letrec ((x7295
                                                                  (list? l)))
                                                          (assert x7295)))
                                                       (g7294
                                                        (letrec ((x-cnd7296
                                                                  (null? l)))
                                                          (if x-cnd7296
                                                            '()
                                                            (letrec ((x7299
                                                                      (letrec ((x7300
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7300)))
                                                                     (x7297
                                                                      (letrec ((x7298
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7298))))
                                                              (append
                                                               x7299
                                                               x7297))))))
                                                g7294)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7301
                                                        (letrec ((x7302
                                                                  (letrec ((x7303
                                                                            (letrec ((x7304
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7304))))
                                                                    (car
                                                                     x7303))))
                                                          (car x7302))))
                                                g7301)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7305
                                                        (letrec ((x7306
                                                                  (letrec ((x7307
                                                                            (letrec ((x7308
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7308))))
                                                                    (cdr
                                                                     x7307))))
                                                          (cdr x7306))))
                                                g7305)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7309
                                                        (letrec ((x7311
                                                                  (number? x)))
                                                          (assert x7311)))
                                                       (g7310
                                                        (letrec ((x7312
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7312))))
                                                g7310)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7313
                                                        (letrec ((x7314
                                                                  (letrec ((x7315
                                                                            (letrec ((x7316
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7316))))
                                                                    (car
                                                                     x7315))))
                                                          (car x7314))))
                                                g7313)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7317
                                                        (letrec ((x7320
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7320)))
                                                       (g7318
                                                        (letrec ((x7321
                                                                  (list?
                                                                   args)))
                                                          (assert x7321)))
                                                       (g7319
                                                        (if cnd
                                                          (letrec ((g7322
                                                                    (proc)))
                                                            g7322)
                                                          (if cnd
                                                            (letrec ((g7323
                                                                      (letrec ((x7324
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7324))))
                                                              g7323)
                                                            (if cnd
                                                              (letrec ((g7325
                                                                        (letrec ((x7327
                                                                                  (car
                                                                                   args))
                                                                                 (x7326
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7327
                                                                           x7326))))
                                                                g7325)
                                                              (if cnd
                                                                (letrec ((g7328
                                                                          (letrec ((x7331
                                                                                    (car
                                                                                     args))
                                                                                   (x7330
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7329
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7331
                                                                             x7330
                                                                             x7329))))
                                                                  g7328)
                                                                (if cnd
                                                                  (letrec ((g7332
                                                                            (letrec ((x7336
                                                                                      (car
                                                                                       args))
                                                                                     (x7335
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7334
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7333
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7336
                                                                               x7335
                                                                               x7334
                                                                               x7333))))
                                                                    g7332)
                                                                  (if cnd
                                                                    (letrec ((g7337
                                                                              (letrec ((x7343
                                                                                        (car
                                                                                         args))
                                                                                       (x7342
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7341
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7340
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7338
                                                                                        (letrec ((x7339
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7339))))
                                                                                (proc
                                                                                 x7343
                                                                                 x7342
                                                                                 x7341
                                                                                 x7340
                                                                                 x7338))))
                                                                      g7337)
                                                                    (if cnd
                                                                      (letrec ((g7344
                                                                                (letrec ((x7352
                                                                                          (car
                                                                                           args))
                                                                                         (x7351
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7350
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7349
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7347
                                                                                          (letrec ((x7348
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7348)))
                                                                                         (x7345
                                                                                          (letrec ((x7346
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7346))))
                                                                                  (proc
                                                                                   x7352
                                                                                   x7351
                                                                                   x7350
                                                                                   x7349
                                                                                   x7347
                                                                                   x7345))))
                                                                        g7344)
                                                                      (if cnd
                                                                        (letrec ((g7353
                                                                                  (letrec ((x7363
                                                                                            (car
                                                                                             args))
                                                                                           (x7362
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7361
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7360
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7358
                                                                                            (letrec ((x7359
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7359)))
                                                                                           (x7356
                                                                                            (letrec ((x7357
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7357)))
                                                                                           (x7354
                                                                                            (letrec ((x7355
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7355))))
                                                                                    (proc
                                                                                     x7363
                                                                                     x7362
                                                                                     x7361
                                                                                     x7360
                                                                                     x7358
                                                                                     x7356
                                                                                     x7354))))
                                                                          g7353)
                                                                        (letrec ((g7364
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7364)))))))))))
                                                g7319)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7365
                                                        (letrec ((x7367
                                                                  (list? l)))
                                                          (assert x7367)))
                                                       (g7366
                                                        (letrec ((x-cnd7368
                                                                  (null? l)))
                                                          (if x-cnd7368
                                                            #f
                                                            (letrec ((x-cnd7369
                                                                      (letrec ((x7370
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7370
                                                                         e))))
                                                              (if x-cnd7369
                                                                l
                                                                (letrec ((x7371
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7371))))))))
                                                g7366)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7372
                                                        (letrec ((x7373
                                                                  (letrec ((x7374
                                                                            (letrec ((x7375
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7375))))
                                                                    (cdr
                                                                     x7374))))
                                                          (cdr x7373))))
                                                g7372)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7376
                                                        (letrec ((x7377
                                                                  (letrec ((x7378
                                                                            (letrec ((x7379
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7379))))
                                                                    (cdr
                                                                     x7378))))
                                                          (car x7377))))
                                                g7376)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7380 (random 42)))
                                                g7380)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7381
                                                        (letrec ((x7383
                                                                  (number? x)))
                                                          (assert x7383)))
                                                       (g7382 (= x 0)))
                                                g7382)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7384
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7385
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7385))))
                                                g7384)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7386
                                                        (letrec ((x7387
                                                                  (cdr x)))
                                                          (car x7387))))
                                                g7386)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7388
                                                        (letrec ((val6900
                                                                  (letrec ((x7391
                                                                            (pair?
                                                                             l))
                                                                           (x7389
                                                                            (letrec ((x7390
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7390))))
                                                                    (and x7391
                                                                         x7389))))
                                                          (letrec ((g7392
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7392))))
                                                g7388)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7393
                                                        (letrec ((x7394
                                                                  (letrec ((x7395
                                                                            (letrec ((x7396
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7396))))
                                                                    (cdr
                                                                     x7395))))
                                                          (cdr x7394))))
                                                g7393)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7397
                                                        (letrec ((x-cnd7398
                                                                  (letrec ((x7399
                                                                            #\0))
                                                                    (char<=?
                                                                     x7399
                                                                     c))))
                                                          (if x-cnd7398
                                                            (letrec ((x7400
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7400))
                                                            #f))))
                                                g7397)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7401
                                                        (letrec ((x7403
                                                                  (list? l)))
                                                          (assert x7403)))
                                                       (g7402
                                                        (letrec ((x-cnd7404
                                                                  (null? l)))
                                                          (if x-cnd7404
                                                            #f
                                                            (letrec ((x-cnd7405
                                                                      (letrec ((x7406
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7406
                                                                         k))))
                                                              (if x-cnd7405
                                                                (car l)
                                                                (letrec ((x7407
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7407))))))))
                                                g7402)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7408 (if x #f #t)))
                                                g7408)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7409 (append l1 l2)))
                                                g7409)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7410
                                                        (letrec ((x7412
                                                                  (list? l)))
                                                          (assert x7412)))
                                                       (g7411
                                                        (letrec ((x-cnd7413
                                                                  (null? l)))
                                                          (if x-cnd7413
                                                            #f
                                                            (letrec ((x-cnd7414
                                                                      (letrec ((x7415
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7415
                                                                         e))))
                                                              (if x-cnd7414
                                                                l
                                                                (letrec ((x7416
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7416))))))))
                                                g7411)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7417
                                                        (letrec ((x7418
                                                                  (letrec ((x7419
                                                                            (letrec ((x7420
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7420))))
                                                                    (cdr
                                                                     x7419))))
                                                          (car x7418))))
                                                g7417)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7421
                                                        (letrec ((x7423
                                                                  (list? l)))
                                                          (assert x7423)))
                                                       (g7422
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7424
                                                                              (letrec ((x-cnd7425
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7425
                                                                                  0
                                                                                  (letrec ((x7426
                                                                                            (letrec ((x7427
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7427))))
                                                                                    (+
                                                                                     1
                                                                                     x7426))))))
                                                                      g7424))))
                                                          (letrec ((g7428
                                                                    (rec l)))
                                                            g7428))))
                                                g7422)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7429
                                                        (letrec ((x7432
                                                                  (char? c1)))
                                                          (assert x7432)))
                                                       (g7430
                                                        (letrec ((x7433
                                                                  (char? c2)))
                                                          (assert x7433)))
                                                       (g7431
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7434
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7434))))
                                                g7431)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7435
                                                        (letrec ((x7436
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7436))))
                                                g7435)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7437
                                                        (letrec ((x7438
                                                                  (letrec ((x7439
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7439))))
                                                          (cdr x7438))))
                                                g7437)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7440
                                                        (letrec ((x7442
                                                                  (list? l)))
                                                          (assert x7442)))
                                                       (g7441
                                                        (letrec ((x-cnd7443
                                                                  (null? l)))
                                                          (if x-cnd7443
                                                            #f
                                                            (letrec ((x-cnd7444
                                                                      (letrec ((x7445
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7445
                                                                         k))))
                                                              (if x-cnd7444
                                                                (car l)
                                                                (letrec ((x7446
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7446))))))))
                                                g7441)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7447
                                                        (letrec ((x7448
                                                                  (car x)))
                                                          (car x7448))))
                                                g7447)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7449
                                                        (letrec ((x7452
                                                                  (char? c1)))
                                                          (assert x7452)))
                                                       (g7450
                                                        (letrec ((x7453
                                                                  (char? c2)))
                                                          (assert x7453)))
                                                       (g7451
                                                        (letrec ((x7454
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7454))))
                                                g7451)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7455
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7456
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7456))))
                                                g7455)))
                                           (for-each
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
                                                            #t
                                                            (letrec ((x-cnd7463
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7463
                                                                (letrec ((g7464
                                                                          (letrec ((x7466
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7466)))
                                                                         (g7465
                                                                          (letrec ((x7467
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7467))))
                                                                  g7465)
                                                                '()))))))
                                                g7459)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7468
                                                        (letrec ((x7470
                                                                  (number? x)))
                                                          (assert x7470)))
                                                       (g7469
                                                        (letrec ((x-cnd7471
                                                                  (< x 0)))
                                                          (if x-cnd7471
                                                            (- 0 x)
                                                            x))))
                                                g7469)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7472
                                                        (letrec ((x7475
                                                                  (char? c1)))
                                                          (assert x7475)))
                                                       (g7473
                                                        (letrec ((x7476
                                                                  (char? c2)))
                                                          (assert x7476)))
                                                       (g7474
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7477
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7477))))
                                                g7474)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7478
                                                        (letrec ((x7479
                                                                  (letrec ((x7480
                                                                            (letrec ((x7481
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7481))))
                                                                    (cdr
                                                                     x7480))))
                                                          (car x7479))))
                                                g7478)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7482 #f)) g7482)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7483
                                                        (letrec ((x7485
                                                                  (letrec ((x7486
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7486)))
                                                                 (x7484
                                                                  (gcd m n)))
                                                          (/ x7485 x7484))))
                                                g7483)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7487
                                                        (letrec ((x7489
                                                                  (number? x)))
                                                          (assert x7489)))
                                                       (g7488
                                                        (letrec ((x7490
                                                                  (<= x y)))
                                                          (not x7490))))
                                                g7488)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7491
                                                        (letrec ((x7495
                                                                  (list? l)))
                                                          (assert x7495)))
                                                       (g7492
                                                        (letrec ((x7496
                                                                  (number?
                                                                   index)))
                                                          (assert x7496)))
                                                       (g7493
                                                        (letrec ((x7497
                                                                  (letrec ((x7498
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7498))))
                                                          (assert x7497)))
                                                       (g7494
                                                        (letrec ((x-cnd7499
                                                                  (= index 0)))
                                                          (if x-cnd7499
                                                            (car l)
                                                            (letrec ((x7501
                                                                      (cdr l))
                                                                     (x7500
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7501
                                                               x7500))))))
                                                g7494)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7502
                                                        (letrec ((x-cnd7503
                                                                  (= b 0)))
                                                          (if x-cnd7503
                                                            a
                                                            (letrec ((x7504
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7504))))))
                                                g7502)))
                                           (foldr
                                            (lambda (f z xs)
                                              (letrec ((g7505
                                                        (letrec ((x-cnd7506
                                                                  (empty? xs)))
                                                          (if x-cnd7506
                                                            z
                                                            (letrec ((x7509
                                                                      (car xs))
                                                                     (x7507
                                                                      (letrec ((x7508
                                                                                (cdr
                                                                                 xs)))
                                                                        (foldr
                                                                         f
                                                                         z
                                                                         x7508))))
                                                              (f
                                                               x7509
                                                               x7507))))))
                                                g7505)))
                                           (map
                                            (lambda (f xs)
                                              (letrec ((g7510
                                                        (letrec ((x7511
                                                                  (letrec ((x7514
                                                                            (x
                                                                             ys))
                                                                           (x7512
                                                                            (letrec ((x7513
                                                                                      (f
                                                                                       x)))
                                                                              (cons
                                                                               x7513
                                                                               ys))))
                                                                    (λ x7514
                                                                      x7512))))
                                                          (foldr
                                                           x7511
                                                           empty
                                                           xs))))
                                                g7510))))
                                    (letrec ((g7515
                                              (letrec ((x7520
                                                        ((lambda (j6976
                                                                  k6977
                                                                  f6978)
                                                           (letrec ((g7521
                                                                     (lambda (g6973
                                                                              g6974
                                                                              g6975)
                                                                       (letrec ((g7522
                                                                                 (letrec ((x7523
                                                                                           (letrec ((x7527
                                                                                                     ((lambda (j6981
                                                                                                               k6982
                                                                                                               f6983)
                                                                                                        (letrec ((g7528
                                                                                                                  (lambda (g6979
                                                                                                                           g6980)
                                                                                                                    (letrec ((g7529
                                                                                                                              (letrec ((x7530
                                                                                                                                        (letrec ((x7532
                                                                                                                                                  (any/c
                                                                                                                                                   j6981
                                                                                                                                                   k6982
                                                                                                                                                   g6979))
                                                                                                                                                 (x7531
                                                                                                                                                  (any/c
                                                                                                                                                   j6981
                                                                                                                                                   k6982
                                                                                                                                                   g6980)))
                                                                                                                                          (f6983
                                                                                                                                           x7532
                                                                                                                                           x7531))))
                                                                                                                                (any/c
                                                                                                                                 j6981
                                                                                                                                 k6982
                                                                                                                                 x7530))))
                                                                                                                      g7529))))
                                                                                                          g7528))
                                                                                                      j6976
                                                                                                      k6977
                                                                                                      g6973))
                                                                                                    (x7526
                                                                                                     (any/c
                                                                                                      j6976
                                                                                                      k6977
                                                                                                      g6974))
                                                                                                    (x7524
                                                                                                     (letrec ((x7525
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7525
                                                                                                        j6976
                                                                                                        k6977
                                                                                                        g6975))))
                                                                                             (f6978
                                                                                              x7527
                                                                                              x7526
                                                                                              x7524))))
                                                                                   (any/c
                                                                                    j6976
                                                                                    k6977
                                                                                    x7523))))
                                                                         g7522))))
                                                             g7521))
                                                         'module
                                                         'importer
                                                         foldr))
                                                       (x7519 (input))
                                                       (x7518 (input))
                                                       (x7517 (input)))
                                                (x7520 x7519 x7518 x7517)))
                                             (g7516
                                              (letrec ((x7535
                                                        ((lambda (j6986
                                                                  k6987
                                                                  f6988)
                                                           (letrec ((g7536
                                                                     (lambda (g6984
                                                                              g6985)
                                                                       (letrec ((g7537
                                                                                 (letrec ((x7546
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7538
                                                                                           (letrec ((x7541
                                                                                                     ((lambda (j6990
                                                                                                               k6991
                                                                                                               f6992)
                                                                                                        (letrec ((g7542
                                                                                                                  (lambda (g6989)
                                                                                                                    (letrec ((g7543
                                                                                                                              (letrec ((x7544
                                                                                                                                        (letrec ((x7545
                                                                                                                                                  (any/c
                                                                                                                                                   j6990
                                                                                                                                                   k6991
                                                                                                                                                   g6989)))
                                                                                                                                          (f6992
                                                                                                                                           x7545))))
                                                                                                                                (any/c
                                                                                                                                 j6990
                                                                                                                                 k6991
                                                                                                                                 x7544))))
                                                                                                                      g7543))))
                                                                                                          g7542))
                                                                                                      j6986
                                                                                                      k6987
                                                                                                      g6984))
                                                                                                    (x7539
                                                                                                     (letrec ((x7540
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7540
                                                                                                        j6986
                                                                                                        k6987
                                                                                                        g6985))))
                                                                                             (f6988
                                                                                              x7541
                                                                                              x7539))))
                                                                                   (x7546
                                                                                    j6986
                                                                                    k6987
                                                                                    x7538))))
                                                                         g7537))))
                                                             g7536))
                                                         'module
                                                         'importer
                                                         map))
                                                       (x7534 (input))
                                                       (x7533 (input)))
                                                (x7535 x7534 x7533))))
                                      g7516))))
                          g7006))))
              g7004)))
    g7003))
