(letrec ((any? (lambda (v) (letrec ((g6981 #t)) g6981)))
         (meta (lambda (v) (letrec ((g6982 v)) g6982)))
         (member
          (lambda (v lst)
            (letrec ((g6983
                      (letrec ((g6984
                                (letrec ((x-e6985 lst))
                                  (match
                                   x-e6985
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd6986 (eq? v v1)))
                                       (if x-cnd6986 #t (member v vs)))))))))
                        g6984)))
              g6983)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g6987 (lambda (v) (letrec ((g6988 v)) g6988)))) g6987)))
         (nonzero?
          (lambda (v)
            (letrec ((g6989 (letrec ((x6990 (= v 0))) (not x6990)))) g6989))))
  (letrec ((g6991
            (letrec ((g6992
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g6993 '())
                                 (g6994
                                  (letrec ((real/c
                                            (lambda (g6904 g6905 g6906)
                                              (letrec ((g6995
                                                        (letrec ((x-cnd6996
                                                                  (real?
                                                                   g6906)))
                                                          (if x-cnd6996
                                                            g6906
                                                            (blame
                                                             g6904
                                                             'real?)))))
                                                g6995)))
                                           (boolean?/c
                                            (lambda (g6907 g6908 g6909)
                                              (letrec ((g6997
                                                        (letrec ((x-cnd6998
                                                                  (boolean?
                                                                   g6909)))
                                                          (if x-cnd6998
                                                            g6909
                                                            (blame
                                                             g6907
                                                             'boolean?)))))
                                                g6997)))
                                           (number?/c
                                            (lambda (g6910 g6911 g6912)
                                              (letrec ((g6999
                                                        (letrec ((x-cnd7000
                                                                  (number?
                                                                   g6912)))
                                                          (if x-cnd7000
                                                            g6912
                                                            (blame
                                                             g6910
                                                             'number?)))))
                                                g6999)))
                                           (any/c
                                            (lambda (g6913 g6914 g6915)
                                              (letrec ((g7001
                                                        (letrec ((x-cnd7002
                                                                  ((lambda (v)
                                                                     (letrec ((g7003
                                                                               #t))
                                                                       g7003))
                                                                   g6915)))
                                                          (if x-cnd7002
                                                            g6915
                                                            (blame
                                                             g6913
                                                             '(lambda (v)
                                                                #t))))))
                                                g7001)))
                                           (any?/c
                                            (lambda (g6916 g6917 g6918)
                                              (letrec ((g7004
                                                        (letrec ((x-cnd7005
                                                                  ((lambda (v)
                                                                     (letrec ((g7006
                                                                               #t))
                                                                       g7006))
                                                                   g6918)))
                                                          (if x-cnd7005
                                                            g6918
                                                            (blame
                                                             g6916
                                                             '(lambda (v)
                                                                #t))))))
                                                g7004)))
                                           (cons?/c
                                            (lambda (g6919 g6920 g6921)
                                              (letrec ((g7007
                                                        (letrec ((x-cnd7008
                                                                  (pair?
                                                                   g6921)))
                                                          (if x-cnd7008
                                                            g6921
                                                            (blame
                                                             g6919
                                                             'pair?)))))
                                                g7007)))
                                           (pair?/c
                                            (lambda (g6922 g6923 g6924)
                                              (letrec ((g7009
                                                        (letrec ((x-cnd7010
                                                                  (pair?
                                                                   g6924)))
                                                          (if x-cnd7010
                                                            g6924
                                                            (blame
                                                             g6922
                                                             'pair?)))))
                                                g7009)))
                                           (integer?/c
                                            (lambda (g6925 g6926 g6927)
                                              (letrec ((g7011
                                                        (letrec ((x-cnd7012
                                                                  (integer?
                                                                   g6927)))
                                                          (if x-cnd7012
                                                            g6927
                                                            (blame
                                                             g6925
                                                             'integer?)))))
                                                g7011)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7013
                                                        (lambda (k j v)
                                                          (letrec ((g7014
                                                                    (letrec ((x-cnd7015
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7015
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7014))))
                                                g7013)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7016
                                                        (lambda (k j v)
                                                          (letrec ((g7017
                                                                    (letrec ((x-cnd7018
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7018
                                                                        '()
                                                                        (letrec ((x7022
                                                                                  (letrec ((x7023
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7023)))
                                                                                 (x7019
                                                                                  (letrec ((x7021
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7020
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7021
                                                                                     k
                                                                                     j
                                                                                     x7020))))
                                                                          (cons
                                                                           x7022
                                                                           x7019))))))
                                                            g7017))))
                                                g7016)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7024 #t)) g7024)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7025
                                                        (letrec ((x7026
                                                                  (= v 0)))
                                                          (not x7026))))
                                                g7025)))
                                           (nonzero?/c
                                            (lambda (g6928 g6929 g6930)
                                              (letrec ((g7027
                                                        (letrec ((x-cnd7028
                                                                  ((lambda (v)
                                                                     (letrec ((g7029
                                                                               (letrec ((x7030
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7030))))
                                                                       g7029))
                                                                   g6930)))
                                                          (if x-cnd7028
                                                            g6930
                                                            (blame
                                                             g6928
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7027)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7031 v)) g7031)))
                                           (+
                                            ((lambda (j6933 k6934 f6935)
                                               (letrec ((g7033
                                                         (lambda (g6931 g6932)
                                                           (letrec ((g7034
                                                                     (letrec ((x7035
                                                                               (letrec ((x7037
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6931))
                                                                                        (x7036
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6932)))
                                                                                 (f6935
                                                                                  x7037
                                                                                  x7036))))
                                                                       (number?/c
                                                                        j6933
                                                                        k6934
                                                                        x7035))))
                                                             g7034))))
                                                 g7033))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7032 (orig-+ a b)))
                                                 g7032))))
                                           (-
                                            ((lambda (j6938 k6939 f6940)
                                               (letrec ((g7039
                                                         (lambda (g6936 g6937)
                                                           (letrec ((g7040
                                                                     (letrec ((x7041
                                                                               (letrec ((x7043
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6936))
                                                                                        (x7042
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6937)))
                                                                                 (f6940
                                                                                  x7043
                                                                                  x7042))))
                                                                       (number?/c
                                                                        j6938
                                                                        k6939
                                                                        x7041))))
                                                             g7040))))
                                                 g7039))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7038 (orig-- a b)))
                                                 g7038))))
                                           (*
                                            ((lambda (j6943 k6944 f6945)
                                               (letrec ((g7045
                                                         (lambda (g6941 g6942)
                                                           (letrec ((g7046
                                                                     (letrec ((x7047
                                                                               (letrec ((x7049
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6941))
                                                                                        (x7048
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6942)))
                                                                                 (f6945
                                                                                  x7049
                                                                                  x7048))))
                                                                       (number?/c
                                                                        j6943
                                                                        k6944
                                                                        x7047))))
                                                             g7046))))
                                                 g7045))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7044 (orig-* a b)))
                                                 g7044))))
                                           (/
                                            ((lambda (j6948 k6949 f6950)
                                               (letrec ((g7051
                                                         (lambda (g6946 g6947)
                                                           (letrec ((g7052
                                                                     (letrec ((x7053
                                                                               (letrec ((x7055
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6946))
                                                                                        (x7054
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6947)))
                                                                                 (f6950
                                                                                  x7055
                                                                                  x7054))))
                                                                       (number?/c
                                                                        j6948
                                                                        k6949
                                                                        x7053))))
                                                             g7052))))
                                                 g7051))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7050 (orig-/ a b)))
                                                 g7050))))
                                           (car
                                            ((lambda (j6952 k6953 f6954)
                                               (letrec ((g7057
                                                         (lambda (g6951)
                                                           (letrec ((g7058
                                                                     (letrec ((x7059
                                                                               (letrec ((x7060
                                                                                         (pair?/c
                                                                                          j6952
                                                                                          k6953
                                                                                          g6951)))
                                                                                 (f6954
                                                                                  x7060))))
                                                                       (any/c
                                                                        j6952
                                                                        k6953
                                                                        x7059))))
                                                             g7058))))
                                                 g7057))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7056 (orig-car p)))
                                                 g7056))))
                                           (cdr
                                            ((lambda (j6956 k6957 f6958)
                                               (letrec ((g7062
                                                         (lambda (g6955)
                                                           (letrec ((g7063
                                                                     (letrec ((x7064
                                                                               (letrec ((x7065
                                                                                         (pair?/c
                                                                                          j6956
                                                                                          k6957
                                                                                          g6955)))
                                                                                 (f6958
                                                                                  x7065))))
                                                                       (any/c
                                                                        j6956
                                                                        k6957
                                                                        x7064))))
                                                             g7063))))
                                                 g7062))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7061 (orig-cdr p)))
                                                 g7061))))
                                           (cons
                                            ((lambda (j6961 k6962 f6963)
                                               (letrec ((g7067
                                                         (lambda (g6959 g6960)
                                                           (letrec ((g7068
                                                                     (letrec ((x7069
                                                                               (letrec ((x7071
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6959))
                                                                                        (x7070
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6960)))
                                                                                 (f6963
                                                                                  x7071
                                                                                  x7070))))
                                                                       (pair?/c
                                                                        j6961
                                                                        k6962
                                                                        x7069))))
                                                             g7068))))
                                                 g7067))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7066 (cons a b)))
                                                 g7066))))
                                           (vector-ref
                                            ((lambda (j6965 k6966 f6967)
                                               (letrec ((g7073
                                                         (lambda (g6964)
                                                           (letrec ((g7074
                                                                     (letrec ((x7075
                                                                               (letrec ((x7076
                                                                                         (vector?/c
                                                                                          j6965
                                                                                          k6966
                                                                                          g6964)))
                                                                                 (f6967
                                                                                  x7076))))
                                                                       (integer?/c
                                                                        j6965
                                                                        k6966
                                                                        x7075))))
                                                             g7074))))
                                                 g7073))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7072
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7072))))
                                           (vector-set!
                                            ((lambda (j6970 k6971 f6972)
                                               (letrec ((g7078
                                                         (lambda (g6968 g6969)
                                                           (letrec ((g7079
                                                                     (letrec ((x7080
                                                                               (letrec ((x7082
                                                                                         (vector?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6968))
                                                                                        (x7081
                                                                                         (integer?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6969)))
                                                                                 (f6972
                                                                                  x7082
                                                                                  x7081))))
                                                                       (any/c
                                                                        j6970
                                                                        k6971
                                                                        x7080))))
                                                             g7079))))
                                                 g7078))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7077
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7077))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7083 #t)) g7083)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7084
                                                        (letrec ((x7085
                                                                  (letrec ((x7086
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7086))))
                                                          (cdr x7085))))
                                                g7084)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7087
                                                        (letrec ((x7090
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7090)))
                                                       (g7088
                                                        (letrec ((x7091
                                                                  (list? l)))
                                                          (assert x7091)))
                                                       (g7089
                                                        (letrec ((x-cnd7092
                                                                  (null? l)))
                                                          (if x-cnd7092
                                                            '()
                                                            (letrec ((x7095
                                                                      (letrec ((x7096
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7096)))
                                                                     (x7093
                                                                      (letrec ((x7094
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7094))))
                                                              (cons
                                                               x7095
                                                               x7093))))))
                                                g7089)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7097
                                                        (letrec ((x7098
                                                                  (car x)))
                                                          (cdr x7098))))
                                                g7097)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7099
                                                        (letrec ((x7100
                                                                  (letrec ((x7101
                                                                            (letrec ((x7102
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7102))))
                                                                    (cdr
                                                                     x7101))))
                                                          (car x7100))))
                                                g7099)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7103
                                                        (letrec ((x7104
                                                                  (letrec ((x7105
                                                                            (letrec ((x7106
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7106))))
                                                                    (car
                                                                     x7105))))
                                                          (cdr x7104))))
                                                g7103)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7107
                                                        (letrec ((x7110
                                                                  (string?
                                                                   filename)))
                                                          (assert x7110)))
                                                       (g7108
                                                        (letrec ((x7111
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7111)))
                                                       (g7109
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7112
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7113 res))
                                                            g7113))))
                                                g7109)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7114
                                                        (letrec ((x7115
                                                                  (letrec ((x7116
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7116))))
                                                          (car x7115))))
                                                g7114)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7117
                                                        (letrec ((x7118
                                                                  (letrec ((x7119
                                                                            (letrec ((x7120
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7120))))
                                                                    (car
                                                                     x7119))))
                                                          (cdr x7118))))
                                                g7117)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7121
                                                        (letrec ((x7123
                                                                  (list? l)))
                                                          (assert x7123)))
                                                       (g7122
                                                        (letrec ((x-cnd7124
                                                                  (null? l)))
                                                          (if x-cnd7124
                                                            #f
                                                            (letrec ((x-cnd7125
                                                                      (letrec ((x7126
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7126
                                                                         k))))
                                                              (if x-cnd7125
                                                                (car l)
                                                                (letrec ((x7127
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7127))))))))
                                                g7122)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7128
                                                        (letrec ((x7129
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7129))))
                                                g7128)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7130
                                                        (letrec ((x7132
                                                                  (list? l)))
                                                          (assert x7132)))
                                                       (g7131
                                                        (letrec ((x-cnd7133
                                                                  (null? l)))
                                                          (if x-cnd7133
                                                            ""
                                                            (letrec ((x7136
                                                                      (letrec ((x7137
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7137)))
                                                                     (x7134
                                                                      (letrec ((x7135
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7135))))
                                                              (string-append
                                                               x7136
                                                               x7134))))))
                                                g7131)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7138
                                                        (letrec ((x7141
                                                                  (char? c1)))
                                                          (assert x7141)))
                                                       (g7139
                                                        (letrec ((x7142
                                                                  (char? c2)))
                                                          (assert x7142)))
                                                       (g7140
                                                        (letrec ((val6887
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7143
                                                                    (if val6887
                                                                      val6887
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7143))))
                                                g7140)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7144
                                                        (letrec ((x7145
                                                                  (letrec ((x7146
                                                                            (letrec ((x7147
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7147))))
                                                                    (cdr
                                                                     x7146))))
                                                          (cdr x7145))))
                                                g7144)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7148
                                                        (letrec ((x7151
                                                                  (list? l)))
                                                          (assert x7151)))
                                                       (g7149
                                                        (letrec ((x7152
                                                                  (numer?)))
                                                          (assert x7152)))
                                                       (g7150
                                                        (letrec ((x-cnd7153
                                                                  (zero? k)))
                                                          (if x-cnd7153
                                                            x
                                                            (letrec ((x7155
                                                                      (cdr x))
                                                                     (x7154
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7155
                                                               x7154))))))
                                                g7150)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7156 '())) g7156)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7157
                                                        (letrec ((x-cnd7158
                                                                  (letrec ((x7159
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7159))))
                                                          (if x-cnd7158
                                                            (letrec ((x7160
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7160))
                                                            #f))))
                                                g7157)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7161
                                                        (letrec ((x7163
                                                                  (number? x)))
                                                          (assert x7163)))
                                                       (g7162
                                                        (letrec ((val6888
                                                                  (< x y)))
                                                          (letrec ((g7164
                                                                    (if val6888
                                                                      val6888
                                                                      (letrec ((val6889
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7165
                                                                                  (if val6889
                                                                                    val6889
                                                                                    #f)))
                                                                          g7165)))))
                                                            g7164))))
                                                g7162)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7166
                                                        (letrec ((val6890
                                                                  (letrec ((x7167
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7167
                                                                     9))))
                                                          (letrec ((g7168
                                                                    (if val6890
                                                                      val6890
                                                                      (letrec ((val6891
                                                                                (letrec ((x7169
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7169
                                                                                   10))))
                                                                        (letrec ((g7170
                                                                                  (if val6891
                                                                                    val6891
                                                                                    (letrec ((x7171
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7171
                                                                                       32)))))
                                                                          g7170)))))
                                                            g7168))))
                                                g7166)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7172
                                                        (letrec ((x7173
                                                                  (letrec ((x7174
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7174))))
                                                          (cdr x7173))))
                                                g7172)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7175
                                                        (letrec ((x7177
                                                                  (number? x)))
                                                          (assert x7177)))
                                                       (g7176 (> x 0)))
                                                g7176)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7178 #f)) g7178)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7179
                                                        (letrec ((x7180
                                                                  (cdr x)))
                                                          (cdr x7180))))
                                                g7179)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7181
                                                        (letrec ((x7183
                                                                  (number? x)))
                                                          (assert x7183)))
                                                       (g7182
                                                        (letrec ((x-cnd7184
                                                                  (< x 0)))
                                                          (if x-cnd7184
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7182)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7185
                                                        (letrec ((val6892
                                                                  (eq? a b)))
                                                          (letrec ((g7186
                                                                    (if val6892
                                                                      val6892
                                                                      (letrec ((val6893
                                                                                (letrec ((x7188
                                                                                          (null?
                                                                                           a))
                                                                                         (x7187
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7188
                                                                                       x7187))))
                                                                        (letrec ((g7189
                                                                                  (if val6893
                                                                                    val6893
                                                                                    (letrec ((val6894
                                                                                              (letrec ((x7192
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7191
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7190
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7192
                                                                                                     x7191
                                                                                                     x7190))))
                                                                                      (letrec ((g7193
                                                                                                (if val6894
                                                                                                  val6894
                                                                                                  (letrec ((val6895
                                                                                                            (letrec ((x7201
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7200
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7197
                                                                                                                      (letrec ((x7199
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7198
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7199
                                                                                                                         x7198)))
                                                                                                                     (x7194
                                                                                                                      (letrec ((x7196
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7195
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7196
                                                                                                                         x7195))))
                                                                                                              (and x7201
                                                                                                                   x7200
                                                                                                                   x7197
                                                                                                                   x7194))))
                                                                                                    (letrec ((g7202
                                                                                                              (if val6895
                                                                                                                val6895
                                                                                                                (letrec ((x7218
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7217
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7203
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7204
                                                                                                                                      (letrec ((x7215
                                                                                                                                                (letrec ((x7216
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7216
                                                                                                                                                   n)))
                                                                                                                                               (x7205
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7206
                                                                                                                                                                      (letrec ((x7213
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7207
                                                                                                                                                                                (letrec ((x7210
                                                                                                                                                                                          (letrec ((x7212
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7211
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7212
                                                                                                                                                                                             x7211)))
                                                                                                                                                                                         (x7208
                                                                                                                                                                                          (letrec ((x7209
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7209))))
                                                                                                                                                                                  (and x7210
                                                                                                                                                                                       x7208))))
                                                                                                                                                                        (or x7213
                                                                                                                                                                            x7207))))
                                                                                                                                                              g7206))))
                                                                                                                                                  (letrec ((g7214
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7214))))
                                                                                                                                        (and x7215
                                                                                                                                             x7205))))
                                                                                                                              g7204))))
                                                                                                                  (and x7218
                                                                                                                       x7217
                                                                                                                       x7203)))))
                                                                                                      g7202)))))
                                                                                        g7193)))))
                                                                          g7189)))))
                                                            g7186))))
                                                g7185)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7219
                                                        (letrec ((x7220
                                                                  (letrec ((x7221
                                                                            (letrec ((x7222
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7222))))
                                                                    (car
                                                                     x7221))))
                                                          (cdr x7220))))
                                                g7219)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7223
                                                        (letrec ((x7224
                                                                  (letrec ((x7225
                                                                            (letrec ((x7226
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7226))))
                                                                    (car
                                                                     x7225))))
                                                          (car x7224))))
                                                g7223)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7227 (eq? x y)))
                                                g7227)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7228
                                                        (letrec ((x7230
                                                                  (number? x)))
                                                          (assert x7230)))
                                                       (g7229
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7231
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7232
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7232)))))
                                                            g7231))))
                                                g7229)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7233
                                                        (letrec ((x7236
                                                                  (string?
                                                                   filename)))
                                                          (assert x7236)))
                                                       (g7234
                                                        (letrec ((x7237
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7237)))
                                                       (g7235
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7238
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7239 res))
                                                            g7239))))
                                                g7235)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7240 (cons x '())))
                                                g7240)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7241
                                                        (letrec ((x7244
                                                                  (char? c1)))
                                                          (assert x7244)))
                                                       (g7242
                                                        (letrec ((x7245
                                                                  (char? c2)))
                                                          (assert x7245)))
                                                       (g7243
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7246
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7246))))
                                                g7243)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7247
                                                        (letrec ((x7248
                                                                  (letrec ((x7249
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7249))))
                                                          (cdr x7248))))
                                                g7247)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7250
                                                        (letrec ((x7251
                                                                  (letrec ((x7252
                                                                            (letrec ((x7253
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7253))))
                                                                    (car
                                                                     x7252))))
                                                          (cdr x7251))))
                                                g7250)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7254
                                                        (letrec ((x7255
                                                                  (letrec ((x7256
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7256))))
                                                          (car x7255))))
                                                g7254)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7257
                                                        (letrec ((x7258
                                                                  (letrec ((x7259
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7259))))
                                                          (car x7258))))
                                                g7257)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7260
                                                        (letrec ((x7263
                                                                  (char? c1)))
                                                          (assert x7263)))
                                                       (g7261
                                                        (letrec ((x7264
                                                                  (char? c2)))
                                                          (assert x7264)))
                                                       (g7262
                                                        (letrec ((x7265
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7265))))
                                                g7262)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7266
                                                        (letrec ((x7267
                                                                  (letrec ((x7268
                                                                            (letrec ((x7269
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7269))))
                                                                    (car
                                                                     x7268))))
                                                          (car x7267))))
                                                g7266)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7270
                                                        (letrec ((x7272
                                                                  (number? x)))
                                                          (assert x7272)))
                                                       (g7271 (< x 0)))
                                                g7271)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7273 (memq e l)))
                                                g7273)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7274
                                                        (letrec ((x7275
                                                                  (letrec ((x7276
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7276))))
                                                          (car x7275))))
                                                g7274)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7277 '())) g7277)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7278
                                                        (letrec ((x7280
                                                                  (list? l)))
                                                          (assert x7280)))
                                                       (g7279
                                                        (letrec ((x-cnd7281
                                                                  (null? l)))
                                                          (if x-cnd7281
                                                            '()
                                                            (letrec ((x7284
                                                                      (letrec ((x7285
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7285)))
                                                                     (x7282
                                                                      (letrec ((x7283
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7283))))
                                                              (append
                                                               x7284
                                                               x7282))))))
                                                g7279)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7286
                                                        (letrec ((x7287
                                                                  (letrec ((x7288
                                                                            (letrec ((x7289
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7289))))
                                                                    (car
                                                                     x7288))))
                                                          (car x7287))))
                                                g7286)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7290
                                                        (letrec ((x7291
                                                                  (letrec ((x7292
                                                                            (letrec ((x7293
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7293))))
                                                                    (cdr
                                                                     x7292))))
                                                          (cdr x7291))))
                                                g7290)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7294
                                                        (letrec ((x7296
                                                                  (number? x)))
                                                          (assert x7296)))
                                                       (g7295
                                                        (letrec ((x7297
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7297))))
                                                g7295)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7298
                                                        (letrec ((x7299
                                                                  (letrec ((x7300
                                                                            (letrec ((x7301
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7301))))
                                                                    (car
                                                                     x7300))))
                                                          (car x7299))))
                                                g7298)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7302
                                                        (letrec ((x7305
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7305)))
                                                       (g7303
                                                        (letrec ((x7306
                                                                  (list?
                                                                   args)))
                                                          (assert x7306)))
                                                       (g7304
                                                        (if cnd
                                                          (letrec ((g7307
                                                                    (proc)))
                                                            g7307)
                                                          (if cnd
                                                            (letrec ((g7308
                                                                      (letrec ((x7309
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7309))))
                                                              g7308)
                                                            (if cnd
                                                              (letrec ((g7310
                                                                        (letrec ((x7312
                                                                                  (car
                                                                                   args))
                                                                                 (x7311
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7312
                                                                           x7311))))
                                                                g7310)
                                                              (if cnd
                                                                (letrec ((g7313
                                                                          (letrec ((x7316
                                                                                    (car
                                                                                     args))
                                                                                   (x7315
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7314
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7316
                                                                             x7315
                                                                             x7314))))
                                                                  g7313)
                                                                (if cnd
                                                                  (letrec ((g7317
                                                                            (letrec ((x7321
                                                                                      (car
                                                                                       args))
                                                                                     (x7320
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7319
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7318
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7321
                                                                               x7320
                                                                               x7319
                                                                               x7318))))
                                                                    g7317)
                                                                  (if cnd
                                                                    (letrec ((g7322
                                                                              (letrec ((x7328
                                                                                        (car
                                                                                         args))
                                                                                       (x7327
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7326
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7325
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7323
                                                                                        (letrec ((x7324
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7324))))
                                                                                (proc
                                                                                 x7328
                                                                                 x7327
                                                                                 x7326
                                                                                 x7325
                                                                                 x7323))))
                                                                      g7322)
                                                                    (if cnd
                                                                      (letrec ((g7329
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
                                                                                             x7333)))
                                                                                         (x7330
                                                                                          (letrec ((x7331
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7331))))
                                                                                  (proc
                                                                                   x7337
                                                                                   x7336
                                                                                   x7335
                                                                                   x7334
                                                                                   x7332
                                                                                   x7330))))
                                                                        g7329)
                                                                      (if cnd
                                                                        (letrec ((g7338
                                                                                  (letrec ((x7348
                                                                                            (car
                                                                                             args))
                                                                                           (x7347
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7346
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7345
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7343
                                                                                            (letrec ((x7344
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7344)))
                                                                                           (x7341
                                                                                            (letrec ((x7342
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7342)))
                                                                                           (x7339
                                                                                            (letrec ((x7340
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7340))))
                                                                                    (proc
                                                                                     x7348
                                                                                     x7347
                                                                                     x7346
                                                                                     x7345
                                                                                     x7343
                                                                                     x7341
                                                                                     x7339))))
                                                                          g7338)
                                                                        (letrec ((g7349
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7349)))))))))))
                                                g7304)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7350
                                                        (letrec ((x7352
                                                                  (list? l)))
                                                          (assert x7352)))
                                                       (g7351
                                                        (letrec ((x-cnd7353
                                                                  (null? l)))
                                                          (if x-cnd7353
                                                            #f
                                                            (letrec ((x-cnd7354
                                                                      (letrec ((x7355
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7355
                                                                         e))))
                                                              (if x-cnd7354
                                                                l
                                                                (letrec ((x7356
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7356))))))))
                                                g7351)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7357
                                                        (letrec ((x7358
                                                                  (letrec ((x7359
                                                                            (letrec ((x7360
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7360))))
                                                                    (cdr
                                                                     x7359))))
                                                          (cdr x7358))))
                                                g7357)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7361
                                                        (letrec ((x7362
                                                                  (letrec ((x7363
                                                                            (letrec ((x7364
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7364))))
                                                                    (cdr
                                                                     x7363))))
                                                          (car x7362))))
                                                g7361)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7365 (random 42)))
                                                g7365)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7366
                                                        (letrec ((x7368
                                                                  (number? x)))
                                                          (assert x7368)))
                                                       (g7367 (= x 0)))
                                                g7367)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7369
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7370
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7370))))
                                                g7369)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7371
                                                        (letrec ((x7372
                                                                  (cdr x)))
                                                          (car x7372))))
                                                g7371)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7373
                                                        (letrec ((val6900
                                                                  (letrec ((x7376
                                                                            (pair?
                                                                             l))
                                                                           (x7374
                                                                            (letrec ((x7375
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7375))))
                                                                    (and x7376
                                                                         x7374))))
                                                          (letrec ((g7377
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7377))))
                                                g7373)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7378
                                                        (letrec ((x7379
                                                                  (letrec ((x7380
                                                                            (letrec ((x7381
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7381))))
                                                                    (cdr
                                                                     x7380))))
                                                          (cdr x7379))))
                                                g7378)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7382
                                                        (letrec ((x-cnd7383
                                                                  (letrec ((x7384
                                                                            #\0))
                                                                    (char<=?
                                                                     x7384
                                                                     c))))
                                                          (if x-cnd7383
                                                            (letrec ((x7385
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7385))
                                                            #f))))
                                                g7382)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7386
                                                        (letrec ((x7388
                                                                  (list? l)))
                                                          (assert x7388)))
                                                       (g7387
                                                        (letrec ((x-cnd7389
                                                                  (null? l)))
                                                          (if x-cnd7389
                                                            #f
                                                            (letrec ((x-cnd7390
                                                                      (letrec ((x7391
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7391
                                                                         k))))
                                                              (if x-cnd7390
                                                                (car l)
                                                                (letrec ((x7392
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7392))))))))
                                                g7387)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7393 (if x #f #t)))
                                                g7393)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7394 (append l1 l2)))
                                                g7394)))
                                           (memq
                                            (lambda (e l)
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
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7400
                                                                         e))))
                                                              (if x-cnd7399
                                                                l
                                                                (letrec ((x7401
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7401))))))))
                                                g7396)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7402
                                                        (letrec ((x7403
                                                                  (letrec ((x7404
                                                                            (letrec ((x7405
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7405))))
                                                                    (cdr
                                                                     x7404))))
                                                          (car x7403))))
                                                g7402)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7406
                                                        (letrec ((x7408
                                                                  (list? l)))
                                                          (assert x7408)))
                                                       (g7407
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7409
                                                                              (letrec ((x-cnd7410
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7410
                                                                                  0
                                                                                  (letrec ((x7411
                                                                                            (letrec ((x7412
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7412))))
                                                                                    (+
                                                                                     1
                                                                                     x7411))))))
                                                                      g7409))))
                                                          (letrec ((g7413
                                                                    (rec l)))
                                                            g7413))))
                                                g7407)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7414
                                                        (letrec ((x7417
                                                                  (char? c1)))
                                                          (assert x7417)))
                                                       (g7415
                                                        (letrec ((x7418
                                                                  (char? c2)))
                                                          (assert x7418)))
                                                       (g7416
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7419
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7419))))
                                                g7416)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7420
                                                        (letrec ((x7421
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7421))))
                                                g7420)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7422
                                                        (letrec ((x7423
                                                                  (letrec ((x7424
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7424))))
                                                          (cdr x7423))))
                                                g7422)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7425
                                                        (letrec ((x7427
                                                                  (list? l)))
                                                          (assert x7427)))
                                                       (g7426
                                                        (letrec ((x-cnd7428
                                                                  (null? l)))
                                                          (if x-cnd7428
                                                            #f
                                                            (letrec ((x-cnd7429
                                                                      (letrec ((x7430
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7430
                                                                         k))))
                                                              (if x-cnd7429
                                                                (car l)
                                                                (letrec ((x7431
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7431))))))))
                                                g7426)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7432
                                                        (letrec ((x7433
                                                                  (car x)))
                                                          (car x7433))))
                                                g7432)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7434
                                                        (letrec ((x7437
                                                                  (char? c1)))
                                                          (assert x7437)))
                                                       (g7435
                                                        (letrec ((x7438
                                                                  (char? c2)))
                                                          (assert x7438)))
                                                       (g7436
                                                        (letrec ((x7439
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7439))))
                                                g7436)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7440
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7441
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7441))))
                                                g7440)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7442
                                                        (letrec ((x7445
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7445)))
                                                       (g7443
                                                        (letrec ((x7446
                                                                  (list? l)))
                                                          (assert x7446)))
                                                       (g7444
                                                        (letrec ((x-cnd7447
                                                                  (null? l)))
                                                          (if x-cnd7447
                                                            #t
                                                            (letrec ((x-cnd7448
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7448
                                                                (letrec ((g7449
                                                                          (letrec ((x7451
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7451)))
                                                                         (g7450
                                                                          (letrec ((x7452
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7452))))
                                                                  g7450)
                                                                '()))))))
                                                g7444)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7453
                                                        (letrec ((x7455
                                                                  (number? x)))
                                                          (assert x7455)))
                                                       (g7454
                                                        (letrec ((x-cnd7456
                                                                  (< x 0)))
                                                          (if x-cnd7456
                                                            (- 0 x)
                                                            x))))
                                                g7454)))
                                           (char-ci>=?
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
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7462
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7462))))
                                                g7459)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7463
                                                        (letrec ((x7464
                                                                  (letrec ((x7465
                                                                            (letrec ((x7466
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7466))))
                                                                    (cdr
                                                                     x7465))))
                                                          (car x7464))))
                                                g7463)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7467 #f)) g7467)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7468
                                                        (letrec ((x7470
                                                                  (letrec ((x7471
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7471)))
                                                                 (x7469
                                                                  (gcd m n)))
                                                          (/ x7470 x7469))))
                                                g7468)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7472
                                                        (letrec ((x7474
                                                                  (number? x)))
                                                          (assert x7474)))
                                                       (g7473
                                                        (letrec ((x7475
                                                                  (<= x y)))
                                                          (not x7475))))
                                                g7473)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7476
                                                        (letrec ((x7480
                                                                  (list? l)))
                                                          (assert x7480)))
                                                       (g7477
                                                        (letrec ((x7481
                                                                  (number?
                                                                   index)))
                                                          (assert x7481)))
                                                       (g7478
                                                        (letrec ((x7482
                                                                  (letrec ((x7483
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7483))))
                                                          (assert x7482)))
                                                       (g7479
                                                        (letrec ((x-cnd7484
                                                                  (= index 0)))
                                                          (if x-cnd7484
                                                            (car l)
                                                            (letrec ((x7486
                                                                      (cdr l))
                                                                     (x7485
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7486
                                                               x7485))))))
                                                g7479)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7487
                                                        (letrec ((x-cnd7488
                                                                  (= b 0)))
                                                          (if x-cnd7488
                                                            a
                                                            (letrec ((x7489
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7489))))))
                                                g7487)))
                                           (zip
                                            (lambda (xs ys)
                                              (letrec ((g7490
                                                        (if cnd
                                                          (letrec ((g7491
                                                                    empty))
                                                            g7491)
                                                          (if cnd
                                                            (letrec ((g7492
                                                                      (letrec ((x7496
                                                                                (letrec ((x7498
                                                                                          (car
                                                                                           xs))
                                                                                         (x7497
                                                                                          (car
                                                                                           ys)))
                                                                                  (cons
                                                                                   x7498
                                                                                   x7497)))
                                                                               (x7493
                                                                                (letrec ((x7495
                                                                                          (cdr
                                                                                           xs))
                                                                                         (x7494
                                                                                          (cdr
                                                                                           ys)))
                                                                                  (zip
                                                                                   x7495
                                                                                   x7494))))
                                                                        (cons
                                                                         x7496
                                                                         x7493))))
                                                              g7492)
                                                            (letrec ((g7499
                                                                      'fail))
                                                              g7499)))))
                                                g7490)))
                                           (mk-list
                                            (lambda (n)
                                              (letrec ((g7500
                                                        (letrec ((x-cnd7501
                                                                  (< n 0)))
                                                          (if x-cnd7501
                                                            empty
                                                            (letrec ((x7502
                                                                      (letrec ((x7503
                                                                                (-
                                                                                 n
                                                                                 1)))
                                                                        (mk-list
                                                                         x7503))))
                                                              (cons
                                                               n
                                                               x7502))))))
                                                g7500)))
                                           (main
                                            (lambda (n)
                                              (letrec ((g7504
                                                        (letrec ((xs
                                                                  (mk-list n)))
                                                          (letrec ((g7505
                                                                    (zip
                                                                     xs
                                                                     xs)))
                                                            g7505))))
                                                g7504))))
                                    (letrec ((g7506
                                              (letrec ((x7509
                                                        ((lambda (j6974
                                                                  k6975
                                                                  f6976)
                                                           (letrec ((g7510
                                                                     (lambda (g6973)
                                                                       (letrec ((g7511
                                                                                 (letrec ((x7514
                                                                                           (listof
                                                                                            integer?/c))
                                                                                          (x7512
                                                                                           (letrec ((x7513
                                                                                                     (integer?/c
                                                                                                      j6974
                                                                                                      k6975
                                                                                                      g6973)))
                                                                                             (f6976
                                                                                              x7513))))
                                                                                   (x7514
                                                                                    j6974
                                                                                    k6975
                                                                                    x7512))))
                                                                         g7511))))
                                                             g7510))
                                                         'module
                                                         'importer
                                                         mk-list))
                                                       (x7508 (input)))
                                                (x7509 x7508)))
                                             (g7507
                                              (letrec ((x7516
                                                        ((lambda (j6978
                                                                  k6979
                                                                  f6980)
                                                           (letrec ((g7517
                                                                     (lambda (g6977)
                                                                       (letrec ((g7518
                                                                                 (letrec ((x7521
                                                                                           (letrec ((x7522
                                                                                                     (cons/c
                                                                                                      integer?/c
                                                                                                      integer?/c)))
                                                                                             (listof
                                                                                              x7522)))
                                                                                          (x7519
                                                                                           (letrec ((x7520
                                                                                                     (integer?/c
                                                                                                      j6978
                                                                                                      k6979
                                                                                                      g6977)))
                                                                                             (f6980
                                                                                              x7520))))
                                                                                   (x7521
                                                                                    j6978
                                                                                    k6979
                                                                                    x7519))))
                                                                         g7518))))
                                                             g7517))
                                                         'module
                                                         'importer
                                                         main))
                                                       (x7515 (input)))
                                                (x7516 x7515))))
                                      g7507))))
                          g6994))))
              g6992)))
    g6991))
