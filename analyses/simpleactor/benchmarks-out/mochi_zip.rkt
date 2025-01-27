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
                                                                                                                (letrec ((x7221
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7220
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7203
                                                                                                                          (letrec ((x7217
                                                                                                                                    (letrec ((x7218
                                                                                                                                              (letrec ((x7219
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7219))))
                                                                                                                                      (x7218)))
                                                                                                                                   (x7204
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
                                                                                                                            (let x7217 x7204))))
                                                                                                                  (and x7221
                                                                                                                       x7220
                                                                                                                       x7203)))))
                                                                                                      g7202)))))
                                                                                        g7193)))))
                                                                          g7189)))))
                                                            g7186))))
                                                g7185)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7222
                                                        (letrec ((x7223
                                                                  (letrec ((x7224
                                                                            (letrec ((x7225
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7225))))
                                                                    (car
                                                                     x7224))))
                                                          (cdr x7223))))
                                                g7222)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7226
                                                        (letrec ((x7227
                                                                  (letrec ((x7228
                                                                            (letrec ((x7229
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7229))))
                                                                    (car
                                                                     x7228))))
                                                          (car x7227))))
                                                g7226)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7230 (eq? x y)))
                                                g7230)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7231
                                                        (letrec ((x7233
                                                                  (number? x)))
                                                          (assert x7233)))
                                                       (g7232
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7234
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7235
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7235)))))
                                                            g7234))))
                                                g7232)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7236
                                                        (letrec ((x7239
                                                                  (string?
                                                                   filename)))
                                                          (assert x7239)))
                                                       (g7237
                                                        (letrec ((x7240
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7240)))
                                                       (g7238
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7241
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7242 res))
                                                            g7242))))
                                                g7238)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7243 (cons x '())))
                                                g7243)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7244
                                                        (letrec ((x7247
                                                                  (char? c1)))
                                                          (assert x7247)))
                                                       (g7245
                                                        (letrec ((x7248
                                                                  (char? c2)))
                                                          (assert x7248)))
                                                       (g7246
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7249
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7249))))
                                                g7246)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7250
                                                        (letrec ((x7251
                                                                  (letrec ((x7252
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7252))))
                                                          (cdr x7251))))
                                                g7250)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7253
                                                        (letrec ((x7254
                                                                  (letrec ((x7255
                                                                            (letrec ((x7256
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7256))))
                                                                    (car
                                                                     x7255))))
                                                          (cdr x7254))))
                                                g7253)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7257
                                                        (letrec ((x7258
                                                                  (letrec ((x7259
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7259))))
                                                          (car x7258))))
                                                g7257)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7260
                                                        (letrec ((x7261
                                                                  (letrec ((x7262
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7262))))
                                                          (car x7261))))
                                                g7260)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7263
                                                        (letrec ((x7266
                                                                  (char? c1)))
                                                          (assert x7266)))
                                                       (g7264
                                                        (letrec ((x7267
                                                                  (char? c2)))
                                                          (assert x7267)))
                                                       (g7265
                                                        (letrec ((x7268
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7268))))
                                                g7265)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7269
                                                        (letrec ((x7270
                                                                  (letrec ((x7271
                                                                            (letrec ((x7272
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7272))))
                                                                    (car
                                                                     x7271))))
                                                          (car x7270))))
                                                g7269)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7273
                                                        (letrec ((x7275
                                                                  (number? x)))
                                                          (assert x7275)))
                                                       (g7274 (< x 0)))
                                                g7274)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7276 (memq e l)))
                                                g7276)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7277
                                                        (letrec ((x7278
                                                                  (letrec ((x7279
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7279))))
                                                          (car x7278))))
                                                g7277)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7280 '())) g7280)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7281
                                                        (letrec ((x7283
                                                                  (list? l)))
                                                          (assert x7283)))
                                                       (g7282
                                                        (letrec ((x-cnd7284
                                                                  (null? l)))
                                                          (if x-cnd7284
                                                            '()
                                                            (letrec ((x7287
                                                                      (letrec ((x7288
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7288)))
                                                                     (x7285
                                                                      (letrec ((x7286
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7286))))
                                                              (append
                                                               x7287
                                                               x7285))))))
                                                g7282)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7289
                                                        (letrec ((x7290
                                                                  (letrec ((x7291
                                                                            (letrec ((x7292
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7292))))
                                                                    (car
                                                                     x7291))))
                                                          (car x7290))))
                                                g7289)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7293
                                                        (letrec ((x7294
                                                                  (letrec ((x7295
                                                                            (letrec ((x7296
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7296))))
                                                                    (cdr
                                                                     x7295))))
                                                          (cdr x7294))))
                                                g7293)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7297
                                                        (letrec ((x7299
                                                                  (number? x)))
                                                          (assert x7299)))
                                                       (g7298
                                                        (letrec ((x7300
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7300))))
                                                g7298)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7301
                                                        (letrec ((x7302
                                                                  (letrec ((x7303
                                                                            (letrec ((x7304
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7304))))
                                                                    (car
                                                                     x7303))))
                                                          (car x7302))))
                                                g7301)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7305
                                                        (letrec ((x7308
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7308)))
                                                       (g7306
                                                        (letrec ((x7309
                                                                  (list?
                                                                   args)))
                                                          (assert x7309)))
                                                       (g7307
                                                        (if cnd
                                                          (letrec ((g7310
                                                                    (proc)))
                                                            g7310)
                                                          (if cnd
                                                            (letrec ((g7311
                                                                      (letrec ((x7312
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7312))))
                                                              g7311)
                                                            (if cnd
                                                              (letrec ((g7313
                                                                        (letrec ((x7315
                                                                                  (car
                                                                                   args))
                                                                                 (x7314
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7315
                                                                           x7314))))
                                                                g7313)
                                                              (if cnd
                                                                (letrec ((g7316
                                                                          (letrec ((x7319
                                                                                    (car
                                                                                     args))
                                                                                   (x7318
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7317
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7319
                                                                             x7318
                                                                             x7317))))
                                                                  g7316)
                                                                (if cnd
                                                                  (letrec ((g7320
                                                                            (letrec ((x7324
                                                                                      (car
                                                                                       args))
                                                                                     (x7323
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7322
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7321
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7324
                                                                               x7323
                                                                               x7322
                                                                               x7321))))
                                                                    g7320)
                                                                  (if cnd
                                                                    (letrec ((g7325
                                                                              (letrec ((x7331
                                                                                        (car
                                                                                         args))
                                                                                       (x7330
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7329
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7328
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7326
                                                                                        (letrec ((x7327
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7327))))
                                                                                (proc
                                                                                 x7331
                                                                                 x7330
                                                                                 x7329
                                                                                 x7328
                                                                                 x7326))))
                                                                      g7325)
                                                                    (if cnd
                                                                      (letrec ((g7332
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
                                                                                             x7336)))
                                                                                         (x7333
                                                                                          (letrec ((x7334
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7334))))
                                                                                  (proc
                                                                                   x7340
                                                                                   x7339
                                                                                   x7338
                                                                                   x7337
                                                                                   x7335
                                                                                   x7333))))
                                                                        g7332)
                                                                      (if cnd
                                                                        (letrec ((g7341
                                                                                  (letrec ((x7351
                                                                                            (car
                                                                                             args))
                                                                                           (x7350
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7349
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7348
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7346
                                                                                            (letrec ((x7347
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7347)))
                                                                                           (x7344
                                                                                            (letrec ((x7345
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7345)))
                                                                                           (x7342
                                                                                            (letrec ((x7343
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7343))))
                                                                                    (proc
                                                                                     x7351
                                                                                     x7350
                                                                                     x7349
                                                                                     x7348
                                                                                     x7346
                                                                                     x7344
                                                                                     x7342))))
                                                                          g7341)
                                                                        (letrec ((g7352
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7352)))))))))))
                                                g7307)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7353
                                                        (letrec ((x7355
                                                                  (list? l)))
                                                          (assert x7355)))
                                                       (g7354
                                                        (letrec ((x-cnd7356
                                                                  (null? l)))
                                                          (if x-cnd7356
                                                            #f
                                                            (letrec ((x-cnd7357
                                                                      (letrec ((x7358
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7358
                                                                         e))))
                                                              (if x-cnd7357
                                                                l
                                                                (letrec ((x7359
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7359))))))))
                                                g7354)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7360
                                                        (letrec ((x7361
                                                                  (letrec ((x7362
                                                                            (letrec ((x7363
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7363))))
                                                                    (cdr
                                                                     x7362))))
                                                          (cdr x7361))))
                                                g7360)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7364
                                                        (letrec ((x7365
                                                                  (letrec ((x7366
                                                                            (letrec ((x7367
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7367))))
                                                                    (cdr
                                                                     x7366))))
                                                          (car x7365))))
                                                g7364)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7368 (random 42)))
                                                g7368)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7369
                                                        (letrec ((x7371
                                                                  (number? x)))
                                                          (assert x7371)))
                                                       (g7370 (= x 0)))
                                                g7370)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7372
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7373
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7373))))
                                                g7372)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7374
                                                        (letrec ((x7375
                                                                  (cdr x)))
                                                          (car x7375))))
                                                g7374)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7376
                                                        (letrec ((val6900
                                                                  (letrec ((x7379
                                                                            (pair?
                                                                             l))
                                                                           (x7377
                                                                            (letrec ((x7378
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7378))))
                                                                    (and x7379
                                                                         x7377))))
                                                          (letrec ((g7380
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7380))))
                                                g7376)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7381
                                                        (letrec ((x7382
                                                                  (letrec ((x7383
                                                                            (letrec ((x7384
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7384))))
                                                                    (cdr
                                                                     x7383))))
                                                          (cdr x7382))))
                                                g7381)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7385
                                                        (letrec ((x-cnd7386
                                                                  (letrec ((x7387
                                                                            #\0))
                                                                    (char<=?
                                                                     x7387
                                                                     c))))
                                                          (if x-cnd7386
                                                            (letrec ((x7388
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7388))
                                                            #f))))
                                                g7385)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7389
                                                        (letrec ((x7391
                                                                  (list? l)))
                                                          (assert x7391)))
                                                       (g7390
                                                        (letrec ((x-cnd7392
                                                                  (null? l)))
                                                          (if x-cnd7392
                                                            #f
                                                            (letrec ((x-cnd7393
                                                                      (letrec ((x7394
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7394
                                                                         k))))
                                                              (if x-cnd7393
                                                                (car l)
                                                                (letrec ((x7395
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7395))))))))
                                                g7390)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7396 (if x #f #t)))
                                                g7396)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7397 (append l1 l2)))
                                                g7397)))
                                           (memq
                                            (lambda (e l)
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
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7403
                                                                         e))))
                                                              (if x-cnd7402
                                                                l
                                                                (letrec ((x7404
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7404))))))))
                                                g7399)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7405
                                                        (letrec ((x7406
                                                                  (letrec ((x7407
                                                                            (letrec ((x7408
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7408))))
                                                                    (cdr
                                                                     x7407))))
                                                          (car x7406))))
                                                g7405)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7409
                                                        (letrec ((x7411
                                                                  (list? l)))
                                                          (assert x7411)))
                                                       (g7410
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7412
                                                                              (letrec ((x-cnd7413
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7413
                                                                                  0
                                                                                  (letrec ((x7414
                                                                                            (letrec ((x7415
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7415))))
                                                                                    (+
                                                                                     1
                                                                                     x7414))))))
                                                                      g7412))))
                                                          (letrec ((g7416
                                                                    (rec l)))
                                                            g7416))))
                                                g7410)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7417
                                                        (letrec ((x7420
                                                                  (char? c1)))
                                                          (assert x7420)))
                                                       (g7418
                                                        (letrec ((x7421
                                                                  (char? c2)))
                                                          (assert x7421)))
                                                       (g7419
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7422
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7422))))
                                                g7419)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7423
                                                        (letrec ((x7424
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7424))))
                                                g7423)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7425
                                                        (letrec ((x7426
                                                                  (letrec ((x7427
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7427))))
                                                          (cdr x7426))))
                                                g7425)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7428
                                                        (letrec ((x7430
                                                                  (list? l)))
                                                          (assert x7430)))
                                                       (g7429
                                                        (letrec ((x-cnd7431
                                                                  (null? l)))
                                                          (if x-cnd7431
                                                            #f
                                                            (letrec ((x-cnd7432
                                                                      (letrec ((x7433
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7433
                                                                         k))))
                                                              (if x-cnd7432
                                                                (car l)
                                                                (letrec ((x7434
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7434))))))))
                                                g7429)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7435
                                                        (letrec ((x7436
                                                                  (car x)))
                                                          (car x7436))))
                                                g7435)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7437
                                                        (letrec ((x7440
                                                                  (char? c1)))
                                                          (assert x7440)))
                                                       (g7438
                                                        (letrec ((x7441
                                                                  (char? c2)))
                                                          (assert x7441)))
                                                       (g7439
                                                        (letrec ((x7442
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7442))))
                                                g7439)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7443
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7444
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7444))))
                                                g7443)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7445
                                                        (letrec ((x7448
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7448)))
                                                       (g7446
                                                        (letrec ((x7449
                                                                  (list? l)))
                                                          (assert x7449)))
                                                       (g7447
                                                        (letrec ((x-cnd7450
                                                                  (null? l)))
                                                          (if x-cnd7450
                                                            #t
                                                            (letrec ((x-cnd7451
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7451
                                                                (letrec ((g7452
                                                                          (letrec ((x7454
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7454)))
                                                                         (g7453
                                                                          (letrec ((x7455
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7455))))
                                                                  g7453)
                                                                '()))))))
                                                g7447)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7456
                                                        (letrec ((x7458
                                                                  (number? x)))
                                                          (assert x7458)))
                                                       (g7457
                                                        (letrec ((x-cnd7459
                                                                  (< x 0)))
                                                          (if x-cnd7459
                                                            (- 0 x)
                                                            x))))
                                                g7457)))
                                           (char-ci>=?
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
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7465
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7465))))
                                                g7462)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7466
                                                        (letrec ((x7467
                                                                  (letrec ((x7468
                                                                            (letrec ((x7469
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7469))))
                                                                    (cdr
                                                                     x7468))))
                                                          (car x7467))))
                                                g7466)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7470 #f)) g7470)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7471
                                                        (letrec ((x7473
                                                                  (letrec ((x7474
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7474)))
                                                                 (x7472
                                                                  (gcd m n)))
                                                          (/ x7473 x7472))))
                                                g7471)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7475
                                                        (letrec ((x7477
                                                                  (number? x)))
                                                          (assert x7477)))
                                                       (g7476
                                                        (letrec ((x7478
                                                                  (<= x y)))
                                                          (not x7478))))
                                                g7476)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7479
                                                        (letrec ((x7483
                                                                  (list? l)))
                                                          (assert x7483)))
                                                       (g7480
                                                        (letrec ((x7484
                                                                  (number?
                                                                   index)))
                                                          (assert x7484)))
                                                       (g7481
                                                        (letrec ((x7485
                                                                  (letrec ((x7486
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7486))))
                                                          (assert x7485)))
                                                       (g7482
                                                        (letrec ((x-cnd7487
                                                                  (= index 0)))
                                                          (if x-cnd7487
                                                            (car l)
                                                            (letrec ((x7489
                                                                      (cdr l))
                                                                     (x7488
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7489
                                                               x7488))))))
                                                g7482)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7490
                                                        (letrec ((x-cnd7491
                                                                  (= b 0)))
                                                          (if x-cnd7491
                                                            a
                                                            (letrec ((x7492
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7492))))))
                                                g7490)))
                                           (zip
                                            (lambda (xs ys)
                                              (letrec ((g7493
                                                        (if cnd
                                                          (letrec ((g7494
                                                                    empty))
                                                            g7494)
                                                          (if cnd
                                                            (letrec ((g7495
                                                                      (letrec ((x7499
                                                                                (letrec ((x7501
                                                                                          (car
                                                                                           xs))
                                                                                         (x7500
                                                                                          (car
                                                                                           ys)))
                                                                                  (cons
                                                                                   x7501
                                                                                   x7500)))
                                                                               (x7496
                                                                                (letrec ((x7498
                                                                                          (cdr
                                                                                           xs))
                                                                                         (x7497
                                                                                          (cdr
                                                                                           ys)))
                                                                                  (zip
                                                                                   x7498
                                                                                   x7497))))
                                                                        (cons
                                                                         x7499
                                                                         x7496))))
                                                              g7495)
                                                            (letrec ((g7502
                                                                      'fail))
                                                              g7502)))))
                                                g7493)))
                                           (mk-list
                                            (lambda (n)
                                              (letrec ((g7503
                                                        (letrec ((x-cnd7504
                                                                  (< n 0)))
                                                          (if x-cnd7504
                                                            empty
                                                            (letrec ((x7505
                                                                      (letrec ((x7506
                                                                                (-
                                                                                 n
                                                                                 1)))
                                                                        (mk-list
                                                                         x7506))))
                                                              (cons
                                                               n
                                                               x7505))))))
                                                g7503)))
                                           (main
                                            (lambda (n)
                                              (letrec ((g7507
                                                        (letrec ((xs
                                                                  (mk-list n)))
                                                          (letrec ((g7508
                                                                    (zip
                                                                     xs
                                                                     xs)))
                                                            g7508))))
                                                g7507))))
                                    (letrec ((g7509
                                              (letrec ((x7512
                                                        ((lambda (j6974
                                                                  k6975
                                                                  f6976)
                                                           (letrec ((g7513
                                                                     (lambda (g6973)
                                                                       (letrec ((g7514
                                                                                 (letrec ((x7517
                                                                                           (listof
                                                                                            integer?/c))
                                                                                          (x7515
                                                                                           (letrec ((x7516
                                                                                                     (integer?/c
                                                                                                      j6974
                                                                                                      k6975
                                                                                                      g6973)))
                                                                                             (f6976
                                                                                              x7516))))
                                                                                   (x7517
                                                                                    j6974
                                                                                    k6975
                                                                                    x7515))))
                                                                         g7514))))
                                                             g7513))
                                                         'module
                                                         'importer
                                                         mk-list))
                                                       (x7511 (input)))
                                                (x7512 x7511)))
                                             (g7510
                                              (letrec ((x7519
                                                        ((lambda (j6978
                                                                  k6979
                                                                  f6980)
                                                           (letrec ((g7520
                                                                     (lambda (g6977)
                                                                       (letrec ((g7521
                                                                                 (letrec ((x7524
                                                                                           (letrec ((x7525
                                                                                                     (cons/c
                                                                                                      integer?/c
                                                                                                      integer?/c)))
                                                                                             (listof
                                                                                              x7525)))
                                                                                          (x7522
                                                                                           (letrec ((x7523
                                                                                                     (integer?/c
                                                                                                      j6978
                                                                                                      k6979
                                                                                                      g6977)))
                                                                                             (f6980
                                                                                              x7523))))
                                                                                   (x7524
                                                                                    j6978
                                                                                    k6979
                                                                                    x7522))))
                                                                         g7521))))
                                                             g7520))
                                                         'module
                                                         'importer
                                                         main))
                                                       (x7518 (input)))
                                                (x7519 x7518))))
                                      g7510))))
                          g6994))))
              g6992)))
    g6991))
