(letrec ((any? (lambda (v) (letrec ((g6986 #t)) g6986)))
         (meta (lambda (v) (letrec ((g6987 v)) g6987)))
         (member
          (lambda (v lst)
            (letrec ((g6988
                      (letrec ((g6989
                                (letrec ((x-e6990 lst))
                                  (match
                                   x-e6990
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd6991 (eq? v v1)))
                                       (if x-cnd6991 #t (member v vs)))))))))
                        g6989)))
              g6988)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g6992 (lambda (v) (letrec ((g6993 v)) g6993)))) g6992)))
         (nonzero?
          (lambda (v)
            (letrec ((g6994 (letrec ((x6995 (= v 0))) (not x6995)))) g6994))))
  (letrec ((g6996
            (letrec ((g6997
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g6998 '())
                                 (g6999
                                  (letrec ((real/c
                                            (lambda (g6904 g6905 g6906)
                                              (letrec ((g7000
                                                        (letrec ((x-cnd7001
                                                                  (real?
                                                                   g6906)))
                                                          (if x-cnd7001
                                                            g6906
                                                            (blame
                                                             g6904
                                                             'real?)))))
                                                g7000)))
                                           (boolean?/c
                                            (lambda (g6907 g6908 g6909)
                                              (letrec ((g7002
                                                        (letrec ((x-cnd7003
                                                                  (boolean?
                                                                   g6909)))
                                                          (if x-cnd7003
                                                            g6909
                                                            (blame
                                                             g6907
                                                             'boolean?)))))
                                                g7002)))
                                           (number?/c
                                            (lambda (g6910 g6911 g6912)
                                              (letrec ((g7004
                                                        (letrec ((x-cnd7005
                                                                  (number?
                                                                   g6912)))
                                                          (if x-cnd7005
                                                            g6912
                                                            (blame
                                                             g6910
                                                             'number?)))))
                                                g7004)))
                                           (any/c
                                            (lambda (g6913 g6914 g6915)
                                              (letrec ((g7006
                                                        (letrec ((x-cnd7007
                                                                  ((lambda (v)
                                                                     (letrec ((g7008
                                                                               #t))
                                                                       g7008))
                                                                   g6915)))
                                                          (if x-cnd7007
                                                            g6915
                                                            (blame
                                                             g6913
                                                             '(lambda (v)
                                                                #t))))))
                                                g7006)))
                                           (any?/c
                                            (lambda (g6916 g6917 g6918)
                                              (letrec ((g7009
                                                        (letrec ((x-cnd7010
                                                                  ((lambda (v)
                                                                     (letrec ((g7011
                                                                               #t))
                                                                       g7011))
                                                                   g6918)))
                                                          (if x-cnd7010
                                                            g6918
                                                            (blame
                                                             g6916
                                                             '(lambda (v)
                                                                #t))))))
                                                g7009)))
                                           (cons?/c
                                            (lambda (g6919 g6920 g6921)
                                              (letrec ((g7012
                                                        (letrec ((x-cnd7013
                                                                  (pair?
                                                                   g6921)))
                                                          (if x-cnd7013
                                                            g6921
                                                            (blame
                                                             g6919
                                                             'pair?)))))
                                                g7012)))
                                           (pair?/c
                                            (lambda (g6922 g6923 g6924)
                                              (letrec ((g7014
                                                        (letrec ((x-cnd7015
                                                                  (pair?
                                                                   g6924)))
                                                          (if x-cnd7015
                                                            g6924
                                                            (blame
                                                             g6922
                                                             'pair?)))))
                                                g7014)))
                                           (integer?/c
                                            (lambda (g6925 g6926 g6927)
                                              (letrec ((g7016
                                                        (letrec ((x-cnd7017
                                                                  (integer?
                                                                   g6927)))
                                                          (if x-cnd7017
                                                            g6927
                                                            (blame
                                                             g6925
                                                             'integer?)))))
                                                g7016)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7018
                                                        (lambda (k j v)
                                                          (letrec ((g7019
                                                                    (letrec ((x-cnd7020
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7020
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7019))))
                                                g7018)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7021
                                                        (lambda (k j v)
                                                          (letrec ((g7022
                                                                    (letrec ((x-cnd7023
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7023
                                                                        '()
                                                                        (letrec ((x7027
                                                                                  (letrec ((x7028
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7028)))
                                                                                 (x7024
                                                                                  (letrec ((x7026
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7025
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7026
                                                                                     k
                                                                                     j
                                                                                     x7025))))
                                                                          (cons
                                                                           x7027
                                                                           x7024))))))
                                                            g7022))))
                                                g7021)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7029 #t)) g7029)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7030
                                                        (letrec ((x7031
                                                                  (= v 0)))
                                                          (not x7031))))
                                                g7030)))
                                           (nonzero?/c
                                            (lambda (g6928 g6929 g6930)
                                              (letrec ((g7032
                                                        (letrec ((x-cnd7033
                                                                  ((lambda (v)
                                                                     (letrec ((g7034
                                                                               (letrec ((x7035
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7035))))
                                                                       g7034))
                                                                   g6930)))
                                                          (if x-cnd7033
                                                            g6930
                                                            (blame
                                                             g6928
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7032)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7036 v)) g7036)))
                                           (+
                                            ((lambda (j6933 k6934 f6935)
                                               (letrec ((g7038
                                                         (lambda (g6931 g6932)
                                                           (letrec ((g7039
                                                                     (letrec ((x7040
                                                                               (letrec ((x7042
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6931))
                                                                                        (x7041
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6932)))
                                                                                 (f6935
                                                                                  x7042
                                                                                  x7041))))
                                                                       (number?/c
                                                                        j6933
                                                                        k6934
                                                                        x7040))))
                                                             g7039))))
                                                 g7038))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7037 (orig-+ a b)))
                                                 g7037))))
                                           (-
                                            ((lambda (j6938 k6939 f6940)
                                               (letrec ((g7044
                                                         (lambda (g6936 g6937)
                                                           (letrec ((g7045
                                                                     (letrec ((x7046
                                                                               (letrec ((x7048
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6936))
                                                                                        (x7047
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6937)))
                                                                                 (f6940
                                                                                  x7048
                                                                                  x7047))))
                                                                       (number?/c
                                                                        j6938
                                                                        k6939
                                                                        x7046))))
                                                             g7045))))
                                                 g7044))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7043 (orig-- a b)))
                                                 g7043))))
                                           (*
                                            ((lambda (j6943 k6944 f6945)
                                               (letrec ((g7050
                                                         (lambda (g6941 g6942)
                                                           (letrec ((g7051
                                                                     (letrec ((x7052
                                                                               (letrec ((x7054
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6941))
                                                                                        (x7053
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6942)))
                                                                                 (f6945
                                                                                  x7054
                                                                                  x7053))))
                                                                       (number?/c
                                                                        j6943
                                                                        k6944
                                                                        x7052))))
                                                             g7051))))
                                                 g7050))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7049 (orig-* a b)))
                                                 g7049))))
                                           (/
                                            ((lambda (j6948 k6949 f6950)
                                               (letrec ((g7056
                                                         (lambda (g6946 g6947)
                                                           (letrec ((g7057
                                                                     (letrec ((x7058
                                                                               (letrec ((x7060
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6946))
                                                                                        (x7059
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6947)))
                                                                                 (f6950
                                                                                  x7060
                                                                                  x7059))))
                                                                       (number?/c
                                                                        j6948
                                                                        k6949
                                                                        x7058))))
                                                             g7057))))
                                                 g7056))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7055 (orig-/ a b)))
                                                 g7055))))
                                           (car
                                            ((lambda (j6952 k6953 f6954)
                                               (letrec ((g7062
                                                         (lambda (g6951)
                                                           (letrec ((g7063
                                                                     (letrec ((x7064
                                                                               (letrec ((x7065
                                                                                         (pair?/c
                                                                                          j6952
                                                                                          k6953
                                                                                          g6951)))
                                                                                 (f6954
                                                                                  x7065))))
                                                                       (any/c
                                                                        j6952
                                                                        k6953
                                                                        x7064))))
                                                             g7063))))
                                                 g7062))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7061 (orig-car p)))
                                                 g7061))))
                                           (cdr
                                            ((lambda (j6956 k6957 f6958)
                                               (letrec ((g7067
                                                         (lambda (g6955)
                                                           (letrec ((g7068
                                                                     (letrec ((x7069
                                                                               (letrec ((x7070
                                                                                         (pair?/c
                                                                                          j6956
                                                                                          k6957
                                                                                          g6955)))
                                                                                 (f6958
                                                                                  x7070))))
                                                                       (any/c
                                                                        j6956
                                                                        k6957
                                                                        x7069))))
                                                             g7068))))
                                                 g7067))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7066 (orig-cdr p)))
                                                 g7066))))
                                           (cons
                                            ((lambda (j6961 k6962 f6963)
                                               (letrec ((g7072
                                                         (lambda (g6959 g6960)
                                                           (letrec ((g7073
                                                                     (letrec ((x7074
                                                                               (letrec ((x7076
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6959))
                                                                                        (x7075
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6960)))
                                                                                 (f6963
                                                                                  x7076
                                                                                  x7075))))
                                                                       (pair?/c
                                                                        j6961
                                                                        k6962
                                                                        x7074))))
                                                             g7073))))
                                                 g7072))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7071 (cons a b)))
                                                 g7071))))
                                           (vector-ref
                                            ((lambda (j6965 k6966 f6967)
                                               (letrec ((g7078
                                                         (lambda (g6964)
                                                           (letrec ((g7079
                                                                     (letrec ((x7080
                                                                               (letrec ((x7081
                                                                                         (vector?/c
                                                                                          j6965
                                                                                          k6966
                                                                                          g6964)))
                                                                                 (f6967
                                                                                  x7081))))
                                                                       (integer?/c
                                                                        j6965
                                                                        k6966
                                                                        x7080))))
                                                             g7079))))
                                                 g7078))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7077
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7077))))
                                           (vector-set!
                                            ((lambda (j6970 k6971 f6972)
                                               (letrec ((g7083
                                                         (lambda (g6968 g6969)
                                                           (letrec ((g7084
                                                                     (letrec ((x7085
                                                                               (letrec ((x7087
                                                                                         (vector?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6968))
                                                                                        (x7086
                                                                                         (integer?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6969)))
                                                                                 (f6972
                                                                                  x7087
                                                                                  x7086))))
                                                                       (any/c
                                                                        j6970
                                                                        k6971
                                                                        x7085))))
                                                             g7084))))
                                                 g7083))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7082
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7082))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7088 #t)) g7088)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7089
                                                        (letrec ((x7090
                                                                  (letrec ((x7091
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7091))))
                                                          (cdr x7090))))
                                                g7089)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7092
                                                        (letrec ((x7095
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7095)))
                                                       (g7093
                                                        (letrec ((x7096
                                                                  (list? l)))
                                                          (assert x7096)))
                                                       (g7094
                                                        (letrec ((x-cnd7097
                                                                  (null? l)))
                                                          (if x-cnd7097
                                                            '()
                                                            (letrec ((x7100
                                                                      (letrec ((x7101
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7101)))
                                                                     (x7098
                                                                      (letrec ((x7099
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7099))))
                                                              (cons
                                                               x7100
                                                               x7098))))))
                                                g7094)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7102
                                                        (letrec ((x7103
                                                                  (car x)))
                                                          (cdr x7103))))
                                                g7102)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7104
                                                        (letrec ((x7105
                                                                  (letrec ((x7106
                                                                            (letrec ((x7107
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7107))))
                                                                    (cdr
                                                                     x7106))))
                                                          (car x7105))))
                                                g7104)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7108
                                                        (letrec ((x7109
                                                                  (letrec ((x7110
                                                                            (letrec ((x7111
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7111))))
                                                                    (car
                                                                     x7110))))
                                                          (cdr x7109))))
                                                g7108)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7112
                                                        (letrec ((x7115
                                                                  (string?
                                                                   filename)))
                                                          (assert x7115)))
                                                       (g7113
                                                        (letrec ((x7116
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7116)))
                                                       (g7114
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7117
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7118 res))
                                                            g7118))))
                                                g7114)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7119
                                                        (letrec ((x7120
                                                                  (letrec ((x7121
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7121))))
                                                          (car x7120))))
                                                g7119)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7122
                                                        (letrec ((x7123
                                                                  (letrec ((x7124
                                                                            (letrec ((x7125
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7125))))
                                                                    (car
                                                                     x7124))))
                                                          (cdr x7123))))
                                                g7122)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7126
                                                        (letrec ((x7128
                                                                  (list? l)))
                                                          (assert x7128)))
                                                       (g7127
                                                        (letrec ((x-cnd7129
                                                                  (null? l)))
                                                          (if x-cnd7129
                                                            #f
                                                            (letrec ((x-cnd7130
                                                                      (letrec ((x7131
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7131
                                                                         k))))
                                                              (if x-cnd7130
                                                                (car l)
                                                                (letrec ((x7132
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7132))))))))
                                                g7127)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7133
                                                        (letrec ((x7134
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7134))))
                                                g7133)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7135
                                                        (letrec ((x7137
                                                                  (list? l)))
                                                          (assert x7137)))
                                                       (g7136
                                                        (letrec ((x-cnd7138
                                                                  (null? l)))
                                                          (if x-cnd7138
                                                            ""
                                                            (letrec ((x7141
                                                                      (letrec ((x7142
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7142)))
                                                                     (x7139
                                                                      (letrec ((x7140
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7140))))
                                                              (string-append
                                                               x7141
                                                               x7139))))))
                                                g7136)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7143
                                                        (letrec ((x7146
                                                                  (char? c1)))
                                                          (assert x7146)))
                                                       (g7144
                                                        (letrec ((x7147
                                                                  (char? c2)))
                                                          (assert x7147)))
                                                       (g7145
                                                        (letrec ((val6887
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7148
                                                                    (if val6887
                                                                      val6887
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7148))))
                                                g7145)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7149
                                                        (letrec ((x7150
                                                                  (letrec ((x7151
                                                                            (letrec ((x7152
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7152))))
                                                                    (cdr
                                                                     x7151))))
                                                          (cdr x7150))))
                                                g7149)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7153
                                                        (letrec ((x7156
                                                                  (list? l)))
                                                          (assert x7156)))
                                                       (g7154
                                                        (letrec ((x7157
                                                                  (numer?)))
                                                          (assert x7157)))
                                                       (g7155
                                                        (letrec ((x-cnd7158
                                                                  (zero? k)))
                                                          (if x-cnd7158
                                                            x
                                                            (letrec ((x7160
                                                                      (cdr x))
                                                                     (x7159
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7160
                                                               x7159))))))
                                                g7155)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7161 '())) g7161)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7162
                                                        (letrec ((x-cnd7163
                                                                  (letrec ((x7164
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7164))))
                                                          (if x-cnd7163
                                                            (letrec ((x7165
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7165))
                                                            #f))))
                                                g7162)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7166
                                                        (letrec ((x7168
                                                                  (number? x)))
                                                          (assert x7168)))
                                                       (g7167
                                                        (letrec ((val6888
                                                                  (< x y)))
                                                          (letrec ((g7169
                                                                    (if val6888
                                                                      val6888
                                                                      (letrec ((val6889
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7170
                                                                                  (if val6889
                                                                                    val6889
                                                                                    #f)))
                                                                          g7170)))))
                                                            g7169))))
                                                g7167)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7171
                                                        (letrec ((val6890
                                                                  (letrec ((x7172
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7172
                                                                     9))))
                                                          (letrec ((g7173
                                                                    (if val6890
                                                                      val6890
                                                                      (letrec ((val6891
                                                                                (letrec ((x7174
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7174
                                                                                   10))))
                                                                        (letrec ((g7175
                                                                                  (if val6891
                                                                                    val6891
                                                                                    (letrec ((x7176
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7176
                                                                                       32)))))
                                                                          g7175)))))
                                                            g7173))))
                                                g7171)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7177
                                                        (letrec ((x7178
                                                                  (letrec ((x7179
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7179))))
                                                          (cdr x7178))))
                                                g7177)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7180
                                                        (letrec ((x7182
                                                                  (number? x)))
                                                          (assert x7182)))
                                                       (g7181 (> x 0)))
                                                g7181)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7183 #f)) g7183)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7184
                                                        (letrec ((x7185
                                                                  (cdr x)))
                                                          (cdr x7185))))
                                                g7184)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7186
                                                        (letrec ((x7188
                                                                  (number? x)))
                                                          (assert x7188)))
                                                       (g7187
                                                        (letrec ((x-cnd7189
                                                                  (< x 0)))
                                                          (if x-cnd7189
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7187)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7190
                                                        (letrec ((val6892
                                                                  (eq? a b)))
                                                          (letrec ((g7191
                                                                    (if val6892
                                                                      val6892
                                                                      (letrec ((val6893
                                                                                (letrec ((x7193
                                                                                          (null?
                                                                                           a))
                                                                                         (x7192
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7193
                                                                                       x7192))))
                                                                        (letrec ((g7194
                                                                                  (if val6893
                                                                                    val6893
                                                                                    (letrec ((val6894
                                                                                              (letrec ((x7197
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7196
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7195
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7197
                                                                                                     x7196
                                                                                                     x7195))))
                                                                                      (letrec ((g7198
                                                                                                (if val6894
                                                                                                  val6894
                                                                                                  (letrec ((val6895
                                                                                                            (letrec ((x7206
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7205
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7202
                                                                                                                      (letrec ((x7204
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7203
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7204
                                                                                                                         x7203)))
                                                                                                                     (x7199
                                                                                                                      (letrec ((x7201
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7200
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7201
                                                                                                                         x7200))))
                                                                                                              (and x7206
                                                                                                                   x7205
                                                                                                                   x7202
                                                                                                                   x7199))))
                                                                                                    (letrec ((g7207
                                                                                                              (if val6895
                                                                                                                val6895
                                                                                                                (letrec ((x7223
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7222
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7208
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7209
                                                                                                                                      (letrec ((x7220
                                                                                                                                                (letrec ((x7221
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7221
                                                                                                                                                   n)))
                                                                                                                                               (x7210
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7211
                                                                                                                                                                      (letrec ((x7218
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7212
                                                                                                                                                                                (letrec ((x7215
                                                                                                                                                                                          (letrec ((x7217
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7216
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7217
                                                                                                                                                                                             x7216)))
                                                                                                                                                                                         (x7213
                                                                                                                                                                                          (letrec ((x7214
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7214))))
                                                                                                                                                                                  (and x7215
                                                                                                                                                                                       x7213))))
                                                                                                                                                                        (or x7218
                                                                                                                                                                            x7212))))
                                                                                                                                                              g7211))))
                                                                                                                                                  (letrec ((g7219
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7219))))
                                                                                                                                        (and x7220
                                                                                                                                             x7210))))
                                                                                                                              g7209))))
                                                                                                                  (and x7223
                                                                                                                       x7222
                                                                                                                       x7208)))))
                                                                                                      g7207)))))
                                                                                        g7198)))))
                                                                          g7194)))))
                                                            g7191))))
                                                g7190)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7224
                                                        (letrec ((x7225
                                                                  (letrec ((x7226
                                                                            (letrec ((x7227
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7227))))
                                                                    (car
                                                                     x7226))))
                                                          (cdr x7225))))
                                                g7224)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7228
                                                        (letrec ((x7229
                                                                  (letrec ((x7230
                                                                            (letrec ((x7231
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7231))))
                                                                    (car
                                                                     x7230))))
                                                          (car x7229))))
                                                g7228)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7232 (eq? x y)))
                                                g7232)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7233
                                                        (letrec ((x7235
                                                                  (number? x)))
                                                          (assert x7235)))
                                                       (g7234
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7236
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7237
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7237)))))
                                                            g7236))))
                                                g7234)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7238
                                                        (letrec ((x7241
                                                                  (string?
                                                                   filename)))
                                                          (assert x7241)))
                                                       (g7239
                                                        (letrec ((x7242
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7242)))
                                                       (g7240
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7243
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7244 res))
                                                            g7244))))
                                                g7240)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7245 (cons x '())))
                                                g7245)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7246
                                                        (letrec ((x7249
                                                                  (char? c1)))
                                                          (assert x7249)))
                                                       (g7247
                                                        (letrec ((x7250
                                                                  (char? c2)))
                                                          (assert x7250)))
                                                       (g7248
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7251
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7251))))
                                                g7248)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7252
                                                        (letrec ((x7253
                                                                  (letrec ((x7254
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7254))))
                                                          (cdr x7253))))
                                                g7252)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7255
                                                        (letrec ((x7256
                                                                  (letrec ((x7257
                                                                            (letrec ((x7258
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7258))))
                                                                    (car
                                                                     x7257))))
                                                          (cdr x7256))))
                                                g7255)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7259
                                                        (letrec ((x7260
                                                                  (letrec ((x7261
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7261))))
                                                          (car x7260))))
                                                g7259)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7262
                                                        (letrec ((x7263
                                                                  (letrec ((x7264
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7264))))
                                                          (car x7263))))
                                                g7262)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7265
                                                        (letrec ((x7268
                                                                  (char? c1)))
                                                          (assert x7268)))
                                                       (g7266
                                                        (letrec ((x7269
                                                                  (char? c2)))
                                                          (assert x7269)))
                                                       (g7267
                                                        (letrec ((x7270
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7270))))
                                                g7267)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7271
                                                        (letrec ((x7272
                                                                  (letrec ((x7273
                                                                            (letrec ((x7274
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7274))))
                                                                    (car
                                                                     x7273))))
                                                          (car x7272))))
                                                g7271)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7275
                                                        (letrec ((x7277
                                                                  (number? x)))
                                                          (assert x7277)))
                                                       (g7276 (< x 0)))
                                                g7276)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7278 (memq e l)))
                                                g7278)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7279
                                                        (letrec ((x7280
                                                                  (letrec ((x7281
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7281))))
                                                          (car x7280))))
                                                g7279)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7282 '())) g7282)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7283
                                                        (letrec ((x7285
                                                                  (list? l)))
                                                          (assert x7285)))
                                                       (g7284
                                                        (letrec ((x-cnd7286
                                                                  (null? l)))
                                                          (if x-cnd7286
                                                            '()
                                                            (letrec ((x7289
                                                                      (letrec ((x7290
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7290)))
                                                                     (x7287
                                                                      (letrec ((x7288
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7288))))
                                                              (append
                                                               x7289
                                                               x7287))))))
                                                g7284)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7291
                                                        (letrec ((x7292
                                                                  (letrec ((x7293
                                                                            (letrec ((x7294
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7294))))
                                                                    (car
                                                                     x7293))))
                                                          (car x7292))))
                                                g7291)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7295
                                                        (letrec ((x7296
                                                                  (letrec ((x7297
                                                                            (letrec ((x7298
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7298))))
                                                                    (cdr
                                                                     x7297))))
                                                          (cdr x7296))))
                                                g7295)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7299
                                                        (letrec ((x7301
                                                                  (number? x)))
                                                          (assert x7301)))
                                                       (g7300
                                                        (letrec ((x7302
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7302))))
                                                g7300)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7303
                                                        (letrec ((x7304
                                                                  (letrec ((x7305
                                                                            (letrec ((x7306
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7306))))
                                                                    (car
                                                                     x7305))))
                                                          (car x7304))))
                                                g7303)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7307
                                                        (letrec ((x7310
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7310)))
                                                       (g7308
                                                        (letrec ((x7311
                                                                  (list?
                                                                   args)))
                                                          (assert x7311)))
                                                       (g7309
                                                        (if cnd
                                                          (letrec ((g7312
                                                                    (proc)))
                                                            g7312)
                                                          (if cnd
                                                            (letrec ((g7313
                                                                      (letrec ((x7314
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7314))))
                                                              g7313)
                                                            (if cnd
                                                              (letrec ((g7315
                                                                        (letrec ((x7317
                                                                                  (car
                                                                                   args))
                                                                                 (x7316
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7317
                                                                           x7316))))
                                                                g7315)
                                                              (if cnd
                                                                (letrec ((g7318
                                                                          (letrec ((x7321
                                                                                    (car
                                                                                     args))
                                                                                   (x7320
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7319
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7321
                                                                             x7320
                                                                             x7319))))
                                                                  g7318)
                                                                (if cnd
                                                                  (letrec ((g7322
                                                                            (letrec ((x7326
                                                                                      (car
                                                                                       args))
                                                                                     (x7325
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7324
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7323
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7326
                                                                               x7325
                                                                               x7324
                                                                               x7323))))
                                                                    g7322)
                                                                  (if cnd
                                                                    (letrec ((g7327
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
                                                                                         args))
                                                                                       (x7328
                                                                                        (letrec ((x7329
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7329))))
                                                                                (proc
                                                                                 x7333
                                                                                 x7332
                                                                                 x7331
                                                                                 x7330
                                                                                 x7328))))
                                                                      g7327)
                                                                    (if cnd
                                                                      (letrec ((g7334
                                                                                (letrec ((x7342
                                                                                          (car
                                                                                           args))
                                                                                         (x7341
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7340
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7339
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7337
                                                                                          (letrec ((x7338
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7338)))
                                                                                         (x7335
                                                                                          (letrec ((x7336
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7336))))
                                                                                  (proc
                                                                                   x7342
                                                                                   x7341
                                                                                   x7340
                                                                                   x7339
                                                                                   x7337
                                                                                   x7335))))
                                                                        g7334)
                                                                      (if cnd
                                                                        (letrec ((g7343
                                                                                  (letrec ((x7353
                                                                                            (car
                                                                                             args))
                                                                                           (x7352
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7351
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7350
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7348
                                                                                            (letrec ((x7349
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7349)))
                                                                                           (x7346
                                                                                            (letrec ((x7347
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7347)))
                                                                                           (x7344
                                                                                            (letrec ((x7345
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7345))))
                                                                                    (proc
                                                                                     x7353
                                                                                     x7352
                                                                                     x7351
                                                                                     x7350
                                                                                     x7348
                                                                                     x7346
                                                                                     x7344))))
                                                                          g7343)
                                                                        (letrec ((g7354
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7354)))))))))))
                                                g7309)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7355
                                                        (letrec ((x7357
                                                                  (list? l)))
                                                          (assert x7357)))
                                                       (g7356
                                                        (letrec ((x-cnd7358
                                                                  (null? l)))
                                                          (if x-cnd7358
                                                            #f
                                                            (letrec ((x-cnd7359
                                                                      (letrec ((x7360
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7360
                                                                         e))))
                                                              (if x-cnd7359
                                                                l
                                                                (letrec ((x7361
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7361))))))))
                                                g7356)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7362
                                                        (letrec ((x7363
                                                                  (letrec ((x7364
                                                                            (letrec ((x7365
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7365))))
                                                                    (cdr
                                                                     x7364))))
                                                          (cdr x7363))))
                                                g7362)))
                                           (cadddr
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
                                                          (car x7367))))
                                                g7366)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7370 (random 42)))
                                                g7370)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7371
                                                        (letrec ((x7373
                                                                  (number? x)))
                                                          (assert x7373)))
                                                       (g7372 (= x 0)))
                                                g7372)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7374
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7375
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7375))))
                                                g7374)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7376
                                                        (letrec ((x7377
                                                                  (cdr x)))
                                                          (car x7377))))
                                                g7376)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7378
                                                        (letrec ((val6900
                                                                  (letrec ((x7381
                                                                            (pair?
                                                                             l))
                                                                           (x7379
                                                                            (letrec ((x7380
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7380))))
                                                                    (and x7381
                                                                         x7379))))
                                                          (letrec ((g7382
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7382))))
                                                g7378)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7383
                                                        (letrec ((x7384
                                                                  (letrec ((x7385
                                                                            (letrec ((x7386
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7386))))
                                                                    (cdr
                                                                     x7385))))
                                                          (cdr x7384))))
                                                g7383)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7387
                                                        (letrec ((x-cnd7388
                                                                  (letrec ((x7389
                                                                            #\0))
                                                                    (char<=?
                                                                     x7389
                                                                     c))))
                                                          (if x-cnd7388
                                                            (letrec ((x7390
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7390))
                                                            #f))))
                                                g7387)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7391
                                                        (letrec ((x7393
                                                                  (list? l)))
                                                          (assert x7393)))
                                                       (g7392
                                                        (letrec ((x-cnd7394
                                                                  (null? l)))
                                                          (if x-cnd7394
                                                            #f
                                                            (letrec ((x-cnd7395
                                                                      (letrec ((x7396
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7396
                                                                         k))))
                                                              (if x-cnd7395
                                                                (car l)
                                                                (letrec ((x7397
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7397))))))))
                                                g7392)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7398 (if x #f #t)))
                                                g7398)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7399 (append l1 l2)))
                                                g7399)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7400
                                                        (letrec ((x7402
                                                                  (list? l)))
                                                          (assert x7402)))
                                                       (g7401
                                                        (letrec ((x-cnd7403
                                                                  (null? l)))
                                                          (if x-cnd7403
                                                            #f
                                                            (letrec ((x-cnd7404
                                                                      (letrec ((x7405
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7405
                                                                         e))))
                                                              (if x-cnd7404
                                                                l
                                                                (letrec ((x7406
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7406))))))))
                                                g7401)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7407
                                                        (letrec ((x7408
                                                                  (letrec ((x7409
                                                                            (letrec ((x7410
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7410))))
                                                                    (cdr
                                                                     x7409))))
                                                          (car x7408))))
                                                g7407)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7411
                                                        (letrec ((x7413
                                                                  (list? l)))
                                                          (assert x7413)))
                                                       (g7412
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7414
                                                                              (letrec ((x-cnd7415
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7415
                                                                                  0
                                                                                  (letrec ((x7416
                                                                                            (letrec ((x7417
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7417))))
                                                                                    (+
                                                                                     1
                                                                                     x7416))))))
                                                                      g7414))))
                                                          (letrec ((g7418
                                                                    (rec l)))
                                                            g7418))))
                                                g7412)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7419
                                                        (letrec ((x7422
                                                                  (char? c1)))
                                                          (assert x7422)))
                                                       (g7420
                                                        (letrec ((x7423
                                                                  (char? c2)))
                                                          (assert x7423)))
                                                       (g7421
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7424
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7424))))
                                                g7421)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7425
                                                        (letrec ((x7426
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7426))))
                                                g7425)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7427
                                                        (letrec ((x7428
                                                                  (letrec ((x7429
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7429))))
                                                          (cdr x7428))))
                                                g7427)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7430
                                                        (letrec ((x7432
                                                                  (list? l)))
                                                          (assert x7432)))
                                                       (g7431
                                                        (letrec ((x-cnd7433
                                                                  (null? l)))
                                                          (if x-cnd7433
                                                            #f
                                                            (letrec ((x-cnd7434
                                                                      (letrec ((x7435
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7435
                                                                         k))))
                                                              (if x-cnd7434
                                                                (car l)
                                                                (letrec ((x7436
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7436))))))))
                                                g7431)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7437
                                                        (letrec ((x7438
                                                                  (car x)))
                                                          (car x7438))))
                                                g7437)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7439
                                                        (letrec ((x7442
                                                                  (char? c1)))
                                                          (assert x7442)))
                                                       (g7440
                                                        (letrec ((x7443
                                                                  (char? c2)))
                                                          (assert x7443)))
                                                       (g7441
                                                        (letrec ((x7444
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7444))))
                                                g7441)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7445
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7446
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7446))))
                                                g7445)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7447
                                                        (letrec ((x7450
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7450)))
                                                       (g7448
                                                        (letrec ((x7451
                                                                  (list? l)))
                                                          (assert x7451)))
                                                       (g7449
                                                        (letrec ((x-cnd7452
                                                                  (null? l)))
                                                          (if x-cnd7452
                                                            #t
                                                            (letrec ((x-cnd7453
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7453
                                                                (letrec ((g7454
                                                                          (letrec ((x7456
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7456)))
                                                                         (g7455
                                                                          (letrec ((x7457
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7457))))
                                                                  g7455)
                                                                '()))))))
                                                g7449)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7458
                                                        (letrec ((x7460
                                                                  (number? x)))
                                                          (assert x7460)))
                                                       (g7459
                                                        (letrec ((x-cnd7461
                                                                  (< x 0)))
                                                          (if x-cnd7461
                                                            (- 0 x)
                                                            x))))
                                                g7459)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7462
                                                        (letrec ((x7465
                                                                  (char? c1)))
                                                          (assert x7465)))
                                                       (g7463
                                                        (letrec ((x7466
                                                                  (char? c2)))
                                                          (assert x7466)))
                                                       (g7464
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7467
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7467))))
                                                g7464)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7468
                                                        (letrec ((x7469
                                                                  (letrec ((x7470
                                                                            (letrec ((x7471
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7471))))
                                                                    (cdr
                                                                     x7470))))
                                                          (car x7469))))
                                                g7468)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7472 #f)) g7472)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7473
                                                        (letrec ((x7475
                                                                  (letrec ((x7476
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7476)))
                                                                 (x7474
                                                                  (gcd m n)))
                                                          (/ x7475 x7474))))
                                                g7473)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7477
                                                        (letrec ((x7479
                                                                  (number? x)))
                                                          (assert x7479)))
                                                       (g7478
                                                        (letrec ((x7480
                                                                  (<= x y)))
                                                          (not x7480))))
                                                g7478)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7481
                                                        (letrec ((x7485
                                                                  (list? l)))
                                                          (assert x7485)))
                                                       (g7482
                                                        (letrec ((x7486
                                                                  (number?
                                                                   index)))
                                                          (assert x7486)))
                                                       (g7483
                                                        (letrec ((x7487
                                                                  (letrec ((x7488
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7488))))
                                                          (assert x7487)))
                                                       (g7484
                                                        (letrec ((x-cnd7489
                                                                  (= index 0)))
                                                          (if x-cnd7489
                                                            (car l)
                                                            (letrec ((x7491
                                                                      (cdr l))
                                                                     (x7490
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7491
                                                               x7490))))))
                                                g7484)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7492
                                                        (letrec ((x-cnd7493
                                                                  (= b 0)))
                                                          (if x-cnd7493
                                                            a
                                                            (letrec ((x7494
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7494))))))
                                                g7492)))
                                           (f
                                            (lambda (g x)
                                              (letrec ((g7495
                                                        (letrec ((x-cnd7496
                                                                  (>= x 0)))
                                                          (if x-cnd7496
                                                            (g x)
                                                            (letrec ((x7498
                                                                      (letrec ((x7500
                                                                                (x))
                                                                               (x7499
                                                                                (f
                                                                                 g
                                                                                 x)))
                                                                        (λ x7500
                                                                          x7499)))
                                                                     (x7497
                                                                      (g x)))
                                                              (f
                                                               x7498
                                                               x7497))))))
                                                g7495)))
                                           (main
                                            (lambda (n)
                                              (letrec ((g7501 (f add1 n)))
                                                g7501))))
                                    (letrec ((g7502
                                              (letrec ((x7506
                                                        ((lambda (j6975
                                                                  k6976
                                                                  f6977)
                                                           (letrec ((g7507
                                                                     (lambda (g6973
                                                                              g6974)
                                                                       (letrec ((g7508
                                                                                 (letrec ((x7509
                                                                                           (letrec ((x7511
                                                                                                     ((lambda (j6979
                                                                                                               k6980
                                                                                                               f6981)
                                                                                                        (letrec ((g7512
                                                                                                                  (lambda (g6978)
                                                                                                                    (letrec ((g7513
                                                                                                                              (letrec ((x7514
                                                                                                                                        (letrec ((x7515
                                                                                                                                                  (integer?
                                                                                                                                                   j6979
                                                                                                                                                   k6980
                                                                                                                                                   g6978)))
                                                                                                                                          (f6981
                                                                                                                                           x7515))))
                                                                                                                                (integer?
                                                                                                                                 j6979
                                                                                                                                 k6980
                                                                                                                                 x7514))))
                                                                                                                      g7513))))
                                                                                                          g7512))
                                                                                                      j6975
                                                                                                      k6976
                                                                                                      g6973))
                                                                                                    (x7510
                                                                                                     (integer?
                                                                                                      j6975
                                                                                                      k6976
                                                                                                      g6974)))
                                                                                             (f6977
                                                                                              x7511
                                                                                              x7510))))
                                                                                   (integer?
                                                                                    j6975
                                                                                    k6976
                                                                                    x7509))))
                                                                         g7508))))
                                                             g7507))
                                                         'module
                                                         'importer
                                                         f))
                                                       (x7505 (input))
                                                       (x7504 (input)))
                                                (x7506 x7505 x7504)))
                                             (g7503
                                              (letrec ((x7517
                                                        ((lambda (j6983
                                                                  k6984
                                                                  f6985)
                                                           (letrec ((g7518
                                                                     (lambda (g6982)
                                                                       (letrec ((g7519
                                                                                 (letrec ((x7522
                                                                                           (letrec ((x7523
                                                                                                     (>=/c
                                                                                                      0)))
                                                                                             (and/c
                                                                                              integer?
                                                                                              x7523)))
                                                                                          (x7520
                                                                                           (letrec ((x7521
                                                                                                     (integer?
                                                                                                      j6983
                                                                                                      k6984
                                                                                                      g6982)))
                                                                                             (f6985
                                                                                              x7521))))
                                                                                   (x7522
                                                                                    j6983
                                                                                    k6984
                                                                                    x7520))))
                                                                         g7519))))
                                                             g7518))
                                                         'module
                                                         'importer
                                                         main))
                                                       (x7516 (input)))
                                                (x7517 x7516))))
                                      g7503))))
                          g6999))))
              g6997)))
    g6996))
