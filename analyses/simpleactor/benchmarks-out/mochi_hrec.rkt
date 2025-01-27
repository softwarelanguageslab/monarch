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
                                                                                                                (letrec ((x7226
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7225
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7208
                                                                                                                          (letrec ((x7222
                                                                                                                                    (letrec ((x7223
                                                                                                                                              (letrec ((x7224
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7224))))
                                                                                                                                      (x7223)))
                                                                                                                                   (x7209
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
                                                                                                                            (let x7222 x7209))))
                                                                                                                  (and x7226
                                                                                                                       x7225
                                                                                                                       x7208)))))
                                                                                                      g7207)))))
                                                                                        g7198)))))
                                                                          g7194)))))
                                                            g7191))))
                                                g7190)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7227
                                                        (letrec ((x7228
                                                                  (letrec ((x7229
                                                                            (letrec ((x7230
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7230))))
                                                                    (car
                                                                     x7229))))
                                                          (cdr x7228))))
                                                g7227)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7231
                                                        (letrec ((x7232
                                                                  (letrec ((x7233
                                                                            (letrec ((x7234
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7234))))
                                                                    (car
                                                                     x7233))))
                                                          (car x7232))))
                                                g7231)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7235 (eq? x y)))
                                                g7235)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7236
                                                        (letrec ((x7238
                                                                  (number? x)))
                                                          (assert x7238)))
                                                       (g7237
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7239
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7240
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7240)))))
                                                            g7239))))
                                                g7237)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7241
                                                        (letrec ((x7244
                                                                  (string?
                                                                   filename)))
                                                          (assert x7244)))
                                                       (g7242
                                                        (letrec ((x7245
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7245)))
                                                       (g7243
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7246
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7247 res))
                                                            g7247))))
                                                g7243)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7248 (cons x '())))
                                                g7248)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7249
                                                        (letrec ((x7252
                                                                  (char? c1)))
                                                          (assert x7252)))
                                                       (g7250
                                                        (letrec ((x7253
                                                                  (char? c2)))
                                                          (assert x7253)))
                                                       (g7251
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7254
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7254))))
                                                g7251)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7255
                                                        (letrec ((x7256
                                                                  (letrec ((x7257
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7257))))
                                                          (cdr x7256))))
                                                g7255)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7258
                                                        (letrec ((x7259
                                                                  (letrec ((x7260
                                                                            (letrec ((x7261
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7261))))
                                                                    (car
                                                                     x7260))))
                                                          (cdr x7259))))
                                                g7258)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7262
                                                        (letrec ((x7263
                                                                  (letrec ((x7264
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7264))))
                                                          (car x7263))))
                                                g7262)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7265
                                                        (letrec ((x7266
                                                                  (letrec ((x7267
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7267))))
                                                          (car x7266))))
                                                g7265)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7268
                                                        (letrec ((x7271
                                                                  (char? c1)))
                                                          (assert x7271)))
                                                       (g7269
                                                        (letrec ((x7272
                                                                  (char? c2)))
                                                          (assert x7272)))
                                                       (g7270
                                                        (letrec ((x7273
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7273))))
                                                g7270)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7274
                                                        (letrec ((x7275
                                                                  (letrec ((x7276
                                                                            (letrec ((x7277
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7277))))
                                                                    (car
                                                                     x7276))))
                                                          (car x7275))))
                                                g7274)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7278
                                                        (letrec ((x7280
                                                                  (number? x)))
                                                          (assert x7280)))
                                                       (g7279 (< x 0)))
                                                g7279)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7281 (memq e l)))
                                                g7281)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7282
                                                        (letrec ((x7283
                                                                  (letrec ((x7284
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7284))))
                                                          (car x7283))))
                                                g7282)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7285 '())) g7285)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7286
                                                        (letrec ((x7288
                                                                  (list? l)))
                                                          (assert x7288)))
                                                       (g7287
                                                        (letrec ((x-cnd7289
                                                                  (null? l)))
                                                          (if x-cnd7289
                                                            '()
                                                            (letrec ((x7292
                                                                      (letrec ((x7293
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7293)))
                                                                     (x7290
                                                                      (letrec ((x7291
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7291))))
                                                              (append
                                                               x7292
                                                               x7290))))))
                                                g7287)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7294
                                                        (letrec ((x7295
                                                                  (letrec ((x7296
                                                                            (letrec ((x7297
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7297))))
                                                                    (car
                                                                     x7296))))
                                                          (car x7295))))
                                                g7294)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7298
                                                        (letrec ((x7299
                                                                  (letrec ((x7300
                                                                            (letrec ((x7301
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7301))))
                                                                    (cdr
                                                                     x7300))))
                                                          (cdr x7299))))
                                                g7298)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7302
                                                        (letrec ((x7304
                                                                  (number? x)))
                                                          (assert x7304)))
                                                       (g7303
                                                        (letrec ((x7305
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7305))))
                                                g7303)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7306
                                                        (letrec ((x7307
                                                                  (letrec ((x7308
                                                                            (letrec ((x7309
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7309))))
                                                                    (car
                                                                     x7308))))
                                                          (car x7307))))
                                                g7306)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7310
                                                        (letrec ((x7313
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7313)))
                                                       (g7311
                                                        (letrec ((x7314
                                                                  (list?
                                                                   args)))
                                                          (assert x7314)))
                                                       (g7312
                                                        (if cnd
                                                          (letrec ((g7315
                                                                    (proc)))
                                                            g7315)
                                                          (if cnd
                                                            (letrec ((g7316
                                                                      (letrec ((x7317
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7317))))
                                                              g7316)
                                                            (if cnd
                                                              (letrec ((g7318
                                                                        (letrec ((x7320
                                                                                  (car
                                                                                   args))
                                                                                 (x7319
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7320
                                                                           x7319))))
                                                                g7318)
                                                              (if cnd
                                                                (letrec ((g7321
                                                                          (letrec ((x7324
                                                                                    (car
                                                                                     args))
                                                                                   (x7323
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7322
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7324
                                                                             x7323
                                                                             x7322))))
                                                                  g7321)
                                                                (if cnd
                                                                  (letrec ((g7325
                                                                            (letrec ((x7329
                                                                                      (car
                                                                                       args))
                                                                                     (x7328
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7327
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7326
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7329
                                                                               x7328
                                                                               x7327
                                                                               x7326))))
                                                                    g7325)
                                                                  (if cnd
                                                                    (letrec ((g7330
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
                                                                                         args))
                                                                                       (x7331
                                                                                        (letrec ((x7332
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7332))))
                                                                                (proc
                                                                                 x7336
                                                                                 x7335
                                                                                 x7334
                                                                                 x7333
                                                                                 x7331))))
                                                                      g7330)
                                                                    (if cnd
                                                                      (letrec ((g7337
                                                                                (letrec ((x7345
                                                                                          (car
                                                                                           args))
                                                                                         (x7344
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7343
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7342
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7340
                                                                                          (letrec ((x7341
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7341)))
                                                                                         (x7338
                                                                                          (letrec ((x7339
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7339))))
                                                                                  (proc
                                                                                   x7345
                                                                                   x7344
                                                                                   x7343
                                                                                   x7342
                                                                                   x7340
                                                                                   x7338))))
                                                                        g7337)
                                                                      (if cnd
                                                                        (letrec ((g7346
                                                                                  (letrec ((x7356
                                                                                            (car
                                                                                             args))
                                                                                           (x7355
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7354
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7353
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7351
                                                                                            (letrec ((x7352
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7352)))
                                                                                           (x7349
                                                                                            (letrec ((x7350
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7350)))
                                                                                           (x7347
                                                                                            (letrec ((x7348
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7348))))
                                                                                    (proc
                                                                                     x7356
                                                                                     x7355
                                                                                     x7354
                                                                                     x7353
                                                                                     x7351
                                                                                     x7349
                                                                                     x7347))))
                                                                          g7346)
                                                                        (letrec ((g7357
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7357)))))))))))
                                                g7312)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7358
                                                        (letrec ((x7360
                                                                  (list? l)))
                                                          (assert x7360)))
                                                       (g7359
                                                        (letrec ((x-cnd7361
                                                                  (null? l)))
                                                          (if x-cnd7361
                                                            #f
                                                            (letrec ((x-cnd7362
                                                                      (letrec ((x7363
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7363
                                                                         e))))
                                                              (if x-cnd7362
                                                                l
                                                                (letrec ((x7364
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7364))))))))
                                                g7359)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7365
                                                        (letrec ((x7366
                                                                  (letrec ((x7367
                                                                            (letrec ((x7368
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7368))))
                                                                    (cdr
                                                                     x7367))))
                                                          (cdr x7366))))
                                                g7365)))
                                           (cadddr
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
                                                          (car x7370))))
                                                g7369)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7373 (random 42)))
                                                g7373)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7374
                                                        (letrec ((x7376
                                                                  (number? x)))
                                                          (assert x7376)))
                                                       (g7375 (= x 0)))
                                                g7375)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7377
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7378
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7378))))
                                                g7377)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7379
                                                        (letrec ((x7380
                                                                  (cdr x)))
                                                          (car x7380))))
                                                g7379)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7381
                                                        (letrec ((val6900
                                                                  (letrec ((x7384
                                                                            (pair?
                                                                             l))
                                                                           (x7382
                                                                            (letrec ((x7383
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7383))))
                                                                    (and x7384
                                                                         x7382))))
                                                          (letrec ((g7385
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7385))))
                                                g7381)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7386
                                                        (letrec ((x7387
                                                                  (letrec ((x7388
                                                                            (letrec ((x7389
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7389))))
                                                                    (cdr
                                                                     x7388))))
                                                          (cdr x7387))))
                                                g7386)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7390
                                                        (letrec ((x-cnd7391
                                                                  (letrec ((x7392
                                                                            #\0))
                                                                    (char<=?
                                                                     x7392
                                                                     c))))
                                                          (if x-cnd7391
                                                            (letrec ((x7393
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7393))
                                                            #f))))
                                                g7390)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7394
                                                        (letrec ((x7396
                                                                  (list? l)))
                                                          (assert x7396)))
                                                       (g7395
                                                        (letrec ((x-cnd7397
                                                                  (null? l)))
                                                          (if x-cnd7397
                                                            #f
                                                            (letrec ((x-cnd7398
                                                                      (letrec ((x7399
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7399
                                                                         k))))
                                                              (if x-cnd7398
                                                                (car l)
                                                                (letrec ((x7400
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7400))))))))
                                                g7395)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7401 (if x #f #t)))
                                                g7401)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7402 (append l1 l2)))
                                                g7402)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7403
                                                        (letrec ((x7405
                                                                  (list? l)))
                                                          (assert x7405)))
                                                       (g7404
                                                        (letrec ((x-cnd7406
                                                                  (null? l)))
                                                          (if x-cnd7406
                                                            #f
                                                            (letrec ((x-cnd7407
                                                                      (letrec ((x7408
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7408
                                                                         e))))
                                                              (if x-cnd7407
                                                                l
                                                                (letrec ((x7409
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7409))))))))
                                                g7404)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7410
                                                        (letrec ((x7411
                                                                  (letrec ((x7412
                                                                            (letrec ((x7413
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7413))))
                                                                    (cdr
                                                                     x7412))))
                                                          (car x7411))))
                                                g7410)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7414
                                                        (letrec ((x7416
                                                                  (list? l)))
                                                          (assert x7416)))
                                                       (g7415
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7417
                                                                              (letrec ((x-cnd7418
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7418
                                                                                  0
                                                                                  (letrec ((x7419
                                                                                            (letrec ((x7420
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7420))))
                                                                                    (+
                                                                                     1
                                                                                     x7419))))))
                                                                      g7417))))
                                                          (letrec ((g7421
                                                                    (rec l)))
                                                            g7421))))
                                                g7415)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7422
                                                        (letrec ((x7425
                                                                  (char? c1)))
                                                          (assert x7425)))
                                                       (g7423
                                                        (letrec ((x7426
                                                                  (char? c2)))
                                                          (assert x7426)))
                                                       (g7424
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7427
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7427))))
                                                g7424)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7428
                                                        (letrec ((x7429
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7429))))
                                                g7428)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7430
                                                        (letrec ((x7431
                                                                  (letrec ((x7432
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7432))))
                                                          (cdr x7431))))
                                                g7430)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7433
                                                        (letrec ((x7435
                                                                  (list? l)))
                                                          (assert x7435)))
                                                       (g7434
                                                        (letrec ((x-cnd7436
                                                                  (null? l)))
                                                          (if x-cnd7436
                                                            #f
                                                            (letrec ((x-cnd7437
                                                                      (letrec ((x7438
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7438
                                                                         k))))
                                                              (if x-cnd7437
                                                                (car l)
                                                                (letrec ((x7439
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7439))))))))
                                                g7434)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7440
                                                        (letrec ((x7441
                                                                  (car x)))
                                                          (car x7441))))
                                                g7440)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7442
                                                        (letrec ((x7445
                                                                  (char? c1)))
                                                          (assert x7445)))
                                                       (g7443
                                                        (letrec ((x7446
                                                                  (char? c2)))
                                                          (assert x7446)))
                                                       (g7444
                                                        (letrec ((x7447
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7447))))
                                                g7444)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7448
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7449
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7449))))
                                                g7448)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7450
                                                        (letrec ((x7453
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7453)))
                                                       (g7451
                                                        (letrec ((x7454
                                                                  (list? l)))
                                                          (assert x7454)))
                                                       (g7452
                                                        (letrec ((x-cnd7455
                                                                  (null? l)))
                                                          (if x-cnd7455
                                                            #t
                                                            (letrec ((x-cnd7456
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7456
                                                                (letrec ((g7457
                                                                          (letrec ((x7459
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7459)))
                                                                         (g7458
                                                                          (letrec ((x7460
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7460))))
                                                                  g7458)
                                                                '()))))))
                                                g7452)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7461
                                                        (letrec ((x7463
                                                                  (number? x)))
                                                          (assert x7463)))
                                                       (g7462
                                                        (letrec ((x-cnd7464
                                                                  (< x 0)))
                                                          (if x-cnd7464
                                                            (- 0 x)
                                                            x))))
                                                g7462)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7465
                                                        (letrec ((x7468
                                                                  (char? c1)))
                                                          (assert x7468)))
                                                       (g7466
                                                        (letrec ((x7469
                                                                  (char? c2)))
                                                          (assert x7469)))
                                                       (g7467
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7470
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7470))))
                                                g7467)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7471
                                                        (letrec ((x7472
                                                                  (letrec ((x7473
                                                                            (letrec ((x7474
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7474))))
                                                                    (cdr
                                                                     x7473))))
                                                          (car x7472))))
                                                g7471)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7475 #f)) g7475)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7476
                                                        (letrec ((x7478
                                                                  (letrec ((x7479
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7479)))
                                                                 (x7477
                                                                  (gcd m n)))
                                                          (/ x7478 x7477))))
                                                g7476)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7480
                                                        (letrec ((x7482
                                                                  (number? x)))
                                                          (assert x7482)))
                                                       (g7481
                                                        (letrec ((x7483
                                                                  (<= x y)))
                                                          (not x7483))))
                                                g7481)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7484
                                                        (letrec ((x7488
                                                                  (list? l)))
                                                          (assert x7488)))
                                                       (g7485
                                                        (letrec ((x7489
                                                                  (number?
                                                                   index)))
                                                          (assert x7489)))
                                                       (g7486
                                                        (letrec ((x7490
                                                                  (letrec ((x7491
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7491))))
                                                          (assert x7490)))
                                                       (g7487
                                                        (letrec ((x-cnd7492
                                                                  (= index 0)))
                                                          (if x-cnd7492
                                                            (car l)
                                                            (letrec ((x7494
                                                                      (cdr l))
                                                                     (x7493
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7494
                                                               x7493))))))
                                                g7487)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7495
                                                        (letrec ((x-cnd7496
                                                                  (= b 0)))
                                                          (if x-cnd7496
                                                            a
                                                            (letrec ((x7497
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7497))))))
                                                g7495)))
                                           (f
                                            (lambda (g x)
                                              (letrec ((g7498
                                                        (letrec ((x-cnd7499
                                                                  (>= x 0)))
                                                          (if x-cnd7499
                                                            (g x)
                                                            (letrec ((x7501
                                                                      (letrec ((x7503
                                                                                (x))
                                                                               (x7502
                                                                                (f
                                                                                 g
                                                                                 x)))
                                                                        (λ x7503
                                                                          x7502)))
                                                                     (x7500
                                                                      (g x)))
                                                              (f
                                                               x7501
                                                               x7500))))))
                                                g7498)))
                                           (main
                                            (lambda (n)
                                              (letrec ((g7504 (f add1 n)))
                                                g7504))))
                                    (letrec ((g7505
                                              (letrec ((x7509
                                                        ((lambda (j6975
                                                                  k6976
                                                                  f6977)
                                                           (letrec ((g7510
                                                                     (lambda (g6973
                                                                              g6974)
                                                                       (letrec ((g7511
                                                                                 (letrec ((x7512
                                                                                           (letrec ((x7514
                                                                                                     ((lambda (j6979
                                                                                                               k6980
                                                                                                               f6981)
                                                                                                        (letrec ((g7515
                                                                                                                  (lambda (g6978)
                                                                                                                    (letrec ((g7516
                                                                                                                              (letrec ((x7517
                                                                                                                                        (letrec ((x7518
                                                                                                                                                  (integer?
                                                                                                                                                   j6979
                                                                                                                                                   k6980
                                                                                                                                                   g6978)))
                                                                                                                                          (f6981
                                                                                                                                           x7518))))
                                                                                                                                (integer?
                                                                                                                                 j6979
                                                                                                                                 k6980
                                                                                                                                 x7517))))
                                                                                                                      g7516))))
                                                                                                          g7515))
                                                                                                      j6975
                                                                                                      k6976
                                                                                                      g6973))
                                                                                                    (x7513
                                                                                                     (integer?
                                                                                                      j6975
                                                                                                      k6976
                                                                                                      g6974)))
                                                                                             (f6977
                                                                                              x7514
                                                                                              x7513))))
                                                                                   (integer?
                                                                                    j6975
                                                                                    k6976
                                                                                    x7512))))
                                                                         g7511))))
                                                             g7510))
                                                         'module
                                                         'importer
                                                         f))
                                                       (x7508 (input))
                                                       (x7507 (input)))
                                                (x7509 x7508 x7507)))
                                             (g7506
                                              (letrec ((x7520
                                                        ((lambda (j6983
                                                                  k6984
                                                                  f6985)
                                                           (letrec ((g7521
                                                                     (lambda (g6982)
                                                                       (letrec ((g7522
                                                                                 (letrec ((x7525
                                                                                           (letrec ((x7526
                                                                                                     (>=/c
                                                                                                      0)))
                                                                                             (and/c
                                                                                              integer?
                                                                                              x7526)))
                                                                                          (x7523
                                                                                           (letrec ((x7524
                                                                                                     (integer?
                                                                                                      j6983
                                                                                                      k6984
                                                                                                      g6982)))
                                                                                             (f6985
                                                                                              x7524))))
                                                                                   (x7525
                                                                                    j6983
                                                                                    k6984
                                                                                    x7523))))
                                                                         g7522))))
                                                             g7521))
                                                         'module
                                                         'importer
                                                         main))
                                                       (x7519 (input)))
                                                (x7520 x7519))))
                                      g7506))))
                          g6999))))
              g6997)))
    g6996))
