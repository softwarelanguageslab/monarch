(letrec ((any? (lambda (v) (letrec ((g6979 #t)) g6979)))
         (meta (lambda (v) (letrec ((g6980 v)) g6980)))
         (member
          (lambda (v lst)
            (letrec ((g6981
                      (letrec ((g6982
                                (letrec ((x-e6983 lst))
                                  (match
                                   x-e6983
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd6984 (eq? v v1)))
                                       (if x-cnd6984 #t (member v vs)))))))))
                        g6982)))
              g6981)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g6985 (lambda (v) (letrec ((g6986 v)) g6986)))) g6985)))
         (nonzero?
          (lambda (v)
            (letrec ((g6987 (letrec ((x6988 (= v 0))) (not x6988)))) g6987))))
  (letrec ((g6989
            (letrec ((g6990
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g6991 '())
                                 (g6992
                                  (letrec ((real/c
                                            (lambda (g6904 g6905 g6906)
                                              (letrec ((g6993
                                                        (letrec ((x-cnd6994
                                                                  (real?
                                                                   g6906)))
                                                          (if x-cnd6994
                                                            g6906
                                                            (blame
                                                             g6904
                                                             'real?)))))
                                                g6993)))
                                           (boolean?/c
                                            (lambda (g6907 g6908 g6909)
                                              (letrec ((g6995
                                                        (letrec ((x-cnd6996
                                                                  (boolean?
                                                                   g6909)))
                                                          (if x-cnd6996
                                                            g6909
                                                            (blame
                                                             g6907
                                                             'boolean?)))))
                                                g6995)))
                                           (number?/c
                                            (lambda (g6910 g6911 g6912)
                                              (letrec ((g6997
                                                        (letrec ((x-cnd6998
                                                                  (number?
                                                                   g6912)))
                                                          (if x-cnd6998
                                                            g6912
                                                            (blame
                                                             g6910
                                                             'number?)))))
                                                g6997)))
                                           (any/c
                                            (lambda (g6913 g6914 g6915)
                                              (letrec ((g6999
                                                        (letrec ((x-cnd7000
                                                                  ((lambda (v)
                                                                     (letrec ((g7001
                                                                               #t))
                                                                       g7001))
                                                                   g6915)))
                                                          (if x-cnd7000
                                                            g6915
                                                            (blame
                                                             g6913
                                                             '(lambda (v)
                                                                #t))))))
                                                g6999)))
                                           (any?/c
                                            (lambda (g6916 g6917 g6918)
                                              (letrec ((g7002
                                                        (letrec ((x-cnd7003
                                                                  ((lambda (v)
                                                                     (letrec ((g7004
                                                                               #t))
                                                                       g7004))
                                                                   g6918)))
                                                          (if x-cnd7003
                                                            g6918
                                                            (blame
                                                             g6916
                                                             '(lambda (v)
                                                                #t))))))
                                                g7002)))
                                           (cons?/c
                                            (lambda (g6919 g6920 g6921)
                                              (letrec ((g7005
                                                        (letrec ((x-cnd7006
                                                                  (pair?
                                                                   g6921)))
                                                          (if x-cnd7006
                                                            g6921
                                                            (blame
                                                             g6919
                                                             'pair?)))))
                                                g7005)))
                                           (pair?/c
                                            (lambda (g6922 g6923 g6924)
                                              (letrec ((g7007
                                                        (letrec ((x-cnd7008
                                                                  (pair?
                                                                   g6924)))
                                                          (if x-cnd7008
                                                            g6924
                                                            (blame
                                                             g6922
                                                             'pair?)))))
                                                g7007)))
                                           (integer?/c
                                            (lambda (g6925 g6926 g6927)
                                              (letrec ((g7009
                                                        (letrec ((x-cnd7010
                                                                  (integer?
                                                                   g6927)))
                                                          (if x-cnd7010
                                                            g6927
                                                            (blame
                                                             g6925
                                                             'integer?)))))
                                                g7009)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7011
                                                        (lambda (k j v)
                                                          (letrec ((g7012
                                                                    (letrec ((x-cnd7013
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7013
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7012))))
                                                g7011)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7014
                                                        (lambda (k j v)
                                                          (letrec ((g7015
                                                                    (letrec ((x-cnd7016
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7016
                                                                        '()
                                                                        (letrec ((x7020
                                                                                  (letrec ((x7021
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7021)))
                                                                                 (x7017
                                                                                  (letrec ((x7019
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7018
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7019
                                                                                     k
                                                                                     j
                                                                                     x7018))))
                                                                          (cons
                                                                           x7020
                                                                           x7017))))))
                                                            g7015))))
                                                g7014)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7022 #t)) g7022)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7023
                                                        (letrec ((x7024
                                                                  (= v 0)))
                                                          (not x7024))))
                                                g7023)))
                                           (nonzero?/c
                                            (lambda (g6928 g6929 g6930)
                                              (letrec ((g7025
                                                        (letrec ((x-cnd7026
                                                                  ((lambda (v)
                                                                     (letrec ((g7027
                                                                               (letrec ((x7028
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7028))))
                                                                       g7027))
                                                                   g6930)))
                                                          (if x-cnd7026
                                                            g6930
                                                            (blame
                                                             g6928
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7025)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7029 v)) g7029)))
                                           (+
                                            ((lambda (j6933 k6934 f6935)
                                               (letrec ((g7031
                                                         (lambda (g6931 g6932)
                                                           (letrec ((g7032
                                                                     (letrec ((x7033
                                                                               (letrec ((x7035
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6931))
                                                                                        (x7034
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6932)))
                                                                                 (f6935
                                                                                  x7035
                                                                                  x7034))))
                                                                       (number?/c
                                                                        j6933
                                                                        k6934
                                                                        x7033))))
                                                             g7032))))
                                                 g7031))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7030 (orig-+ a b)))
                                                 g7030))))
                                           (-
                                            ((lambda (j6938 k6939 f6940)
                                               (letrec ((g7037
                                                         (lambda (g6936 g6937)
                                                           (letrec ((g7038
                                                                     (letrec ((x7039
                                                                               (letrec ((x7041
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6936))
                                                                                        (x7040
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6937)))
                                                                                 (f6940
                                                                                  x7041
                                                                                  x7040))))
                                                                       (number?/c
                                                                        j6938
                                                                        k6939
                                                                        x7039))))
                                                             g7038))))
                                                 g7037))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7036 (orig-- a b)))
                                                 g7036))))
                                           (*
                                            ((lambda (j6943 k6944 f6945)
                                               (letrec ((g7043
                                                         (lambda (g6941 g6942)
                                                           (letrec ((g7044
                                                                     (letrec ((x7045
                                                                               (letrec ((x7047
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6941))
                                                                                        (x7046
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6942)))
                                                                                 (f6945
                                                                                  x7047
                                                                                  x7046))))
                                                                       (number?/c
                                                                        j6943
                                                                        k6944
                                                                        x7045))))
                                                             g7044))))
                                                 g7043))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7042 (orig-* a b)))
                                                 g7042))))
                                           (/
                                            ((lambda (j6948 k6949 f6950)
                                               (letrec ((g7049
                                                         (lambda (g6946 g6947)
                                                           (letrec ((g7050
                                                                     (letrec ((x7051
                                                                               (letrec ((x7053
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6946))
                                                                                        (x7052
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6947)))
                                                                                 (f6950
                                                                                  x7053
                                                                                  x7052))))
                                                                       (number?/c
                                                                        j6948
                                                                        k6949
                                                                        x7051))))
                                                             g7050))))
                                                 g7049))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7048 (orig-/ a b)))
                                                 g7048))))
                                           (car
                                            ((lambda (j6952 k6953 f6954)
                                               (letrec ((g7055
                                                         (lambda (g6951)
                                                           (letrec ((g7056
                                                                     (letrec ((x7057
                                                                               (letrec ((x7058
                                                                                         (pair?/c
                                                                                          j6952
                                                                                          k6953
                                                                                          g6951)))
                                                                                 (f6954
                                                                                  x7058))))
                                                                       (any/c
                                                                        j6952
                                                                        k6953
                                                                        x7057))))
                                                             g7056))))
                                                 g7055))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7054 (orig-car p)))
                                                 g7054))))
                                           (cdr
                                            ((lambda (j6956 k6957 f6958)
                                               (letrec ((g7060
                                                         (lambda (g6955)
                                                           (letrec ((g7061
                                                                     (letrec ((x7062
                                                                               (letrec ((x7063
                                                                                         (pair?/c
                                                                                          j6956
                                                                                          k6957
                                                                                          g6955)))
                                                                                 (f6958
                                                                                  x7063))))
                                                                       (any/c
                                                                        j6956
                                                                        k6957
                                                                        x7062))))
                                                             g7061))))
                                                 g7060))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7059 (orig-cdr p)))
                                                 g7059))))
                                           (cons
                                            ((lambda (j6961 k6962 f6963)
                                               (letrec ((g7065
                                                         (lambda (g6959 g6960)
                                                           (letrec ((g7066
                                                                     (letrec ((x7067
                                                                               (letrec ((x7069
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6959))
                                                                                        (x7068
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6960)))
                                                                                 (f6963
                                                                                  x7069
                                                                                  x7068))))
                                                                       (pair?/c
                                                                        j6961
                                                                        k6962
                                                                        x7067))))
                                                             g7066))))
                                                 g7065))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7064 (cons a b)))
                                                 g7064))))
                                           (vector-ref
                                            ((lambda (j6965 k6966 f6967)
                                               (letrec ((g7071
                                                         (lambda (g6964)
                                                           (letrec ((g7072
                                                                     (letrec ((x7073
                                                                               (letrec ((x7074
                                                                                         (vector?/c
                                                                                          j6965
                                                                                          k6966
                                                                                          g6964)))
                                                                                 (f6967
                                                                                  x7074))))
                                                                       (integer?/c
                                                                        j6965
                                                                        k6966
                                                                        x7073))))
                                                             g7072))))
                                                 g7071))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7070
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7070))))
                                           (vector-set!
                                            ((lambda (j6970 k6971 f6972)
                                               (letrec ((g7076
                                                         (lambda (g6968 g6969)
                                                           (letrec ((g7077
                                                                     (letrec ((x7078
                                                                               (letrec ((x7080
                                                                                         (vector?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6968))
                                                                                        (x7079
                                                                                         (integer?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6969)))
                                                                                 (f6972
                                                                                  x7080
                                                                                  x7079))))
                                                                       (any/c
                                                                        j6970
                                                                        k6971
                                                                        x7078))))
                                                             g7077))))
                                                 g7076))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7075
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7075))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7081 #t)) g7081)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7082
                                                        (letrec ((x7083
                                                                  (letrec ((x7084
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7084))))
                                                          (cdr x7083))))
                                                g7082)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7085
                                                        (letrec ((x7088
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7088)))
                                                       (g7086
                                                        (letrec ((x7089
                                                                  (list? l)))
                                                          (assert x7089)))
                                                       (g7087
                                                        (letrec ((x-cnd7090
                                                                  (null? l)))
                                                          (if x-cnd7090
                                                            '()
                                                            (letrec ((x7093
                                                                      (letrec ((x7094
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7094)))
                                                                     (x7091
                                                                      (letrec ((x7092
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7092))))
                                                              (cons
                                                               x7093
                                                               x7091))))))
                                                g7087)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7095
                                                        (letrec ((x7096
                                                                  (car x)))
                                                          (cdr x7096))))
                                                g7095)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7097
                                                        (letrec ((x7098
                                                                  (letrec ((x7099
                                                                            (letrec ((x7100
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7100))))
                                                                    (cdr
                                                                     x7099))))
                                                          (car x7098))))
                                                g7097)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7101
                                                        (letrec ((x7102
                                                                  (letrec ((x7103
                                                                            (letrec ((x7104
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7104))))
                                                                    (car
                                                                     x7103))))
                                                          (cdr x7102))))
                                                g7101)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7105
                                                        (letrec ((x7108
                                                                  (string?
                                                                   filename)))
                                                          (assert x7108)))
                                                       (g7106
                                                        (letrec ((x7109
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7109)))
                                                       (g7107
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7110
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7111 res))
                                                            g7111))))
                                                g7107)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7112
                                                        (letrec ((x7113
                                                                  (letrec ((x7114
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7114))))
                                                          (car x7113))))
                                                g7112)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7115
                                                        (letrec ((x7116
                                                                  (letrec ((x7117
                                                                            (letrec ((x7118
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7118))))
                                                                    (car
                                                                     x7117))))
                                                          (cdr x7116))))
                                                g7115)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7119
                                                        (letrec ((x7121
                                                                  (list? l)))
                                                          (assert x7121)))
                                                       (g7120
                                                        (letrec ((x-cnd7122
                                                                  (null? l)))
                                                          (if x-cnd7122
                                                            #f
                                                            (letrec ((x-cnd7123
                                                                      (letrec ((x7124
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7124
                                                                         k))))
                                                              (if x-cnd7123
                                                                (car l)
                                                                (letrec ((x7125
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7125))))))))
                                                g7120)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7126
                                                        (letrec ((x7127
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7127))))
                                                g7126)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7128
                                                        (letrec ((x7130
                                                                  (list? l)))
                                                          (assert x7130)))
                                                       (g7129
                                                        (letrec ((x-cnd7131
                                                                  (null? l)))
                                                          (if x-cnd7131
                                                            ""
                                                            (letrec ((x7134
                                                                      (letrec ((x7135
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7135)))
                                                                     (x7132
                                                                      (letrec ((x7133
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7133))))
                                                              (string-append
                                                               x7134
                                                               x7132))))))
                                                g7129)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7136
                                                        (letrec ((x7139
                                                                  (char? c1)))
                                                          (assert x7139)))
                                                       (g7137
                                                        (letrec ((x7140
                                                                  (char? c2)))
                                                          (assert x7140)))
                                                       (g7138
                                                        (letrec ((val6887
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7141
                                                                    (if val6887
                                                                      val6887
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7141))))
                                                g7138)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7142
                                                        (letrec ((x7143
                                                                  (letrec ((x7144
                                                                            (letrec ((x7145
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7145))))
                                                                    (cdr
                                                                     x7144))))
                                                          (cdr x7143))))
                                                g7142)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7146
                                                        (letrec ((x7149
                                                                  (list? l)))
                                                          (assert x7149)))
                                                       (g7147
                                                        (letrec ((x7150
                                                                  (numer?)))
                                                          (assert x7150)))
                                                       (g7148
                                                        (letrec ((x-cnd7151
                                                                  (zero? k)))
                                                          (if x-cnd7151
                                                            x
                                                            (letrec ((x7153
                                                                      (cdr x))
                                                                     (x7152
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7153
                                                               x7152))))))
                                                g7148)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7154 '())) g7154)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7155
                                                        (letrec ((x-cnd7156
                                                                  (letrec ((x7157
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7157))))
                                                          (if x-cnd7156
                                                            (letrec ((x7158
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7158))
                                                            #f))))
                                                g7155)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7159
                                                        (letrec ((x7161
                                                                  (number? x)))
                                                          (assert x7161)))
                                                       (g7160
                                                        (letrec ((val6888
                                                                  (< x y)))
                                                          (letrec ((g7162
                                                                    (if val6888
                                                                      val6888
                                                                      (letrec ((val6889
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7163
                                                                                  (if val6889
                                                                                    val6889
                                                                                    #f)))
                                                                          g7163)))))
                                                            g7162))))
                                                g7160)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7164
                                                        (letrec ((val6890
                                                                  (letrec ((x7165
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7165
                                                                     9))))
                                                          (letrec ((g7166
                                                                    (if val6890
                                                                      val6890
                                                                      (letrec ((val6891
                                                                                (letrec ((x7167
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7167
                                                                                   10))))
                                                                        (letrec ((g7168
                                                                                  (if val6891
                                                                                    val6891
                                                                                    (letrec ((x7169
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7169
                                                                                       32)))))
                                                                          g7168)))))
                                                            g7166))))
                                                g7164)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7170
                                                        (letrec ((x7171
                                                                  (letrec ((x7172
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7172))))
                                                          (cdr x7171))))
                                                g7170)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7173
                                                        (letrec ((x7175
                                                                  (number? x)))
                                                          (assert x7175)))
                                                       (g7174 (> x 0)))
                                                g7174)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7176 #f)) g7176)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7177
                                                        (letrec ((x7178
                                                                  (cdr x)))
                                                          (cdr x7178))))
                                                g7177)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7179
                                                        (letrec ((x7181
                                                                  (number? x)))
                                                          (assert x7181)))
                                                       (g7180
                                                        (letrec ((x-cnd7182
                                                                  (< x 0)))
                                                          (if x-cnd7182
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7180)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7183
                                                        (letrec ((val6892
                                                                  (eq? a b)))
                                                          (letrec ((g7184
                                                                    (if val6892
                                                                      val6892
                                                                      (letrec ((val6893
                                                                                (letrec ((x7186
                                                                                          (null?
                                                                                           a))
                                                                                         (x7185
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7186
                                                                                       x7185))))
                                                                        (letrec ((g7187
                                                                                  (if val6893
                                                                                    val6893
                                                                                    (letrec ((val6894
                                                                                              (letrec ((x7190
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7189
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7188
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7190
                                                                                                     x7189
                                                                                                     x7188))))
                                                                                      (letrec ((g7191
                                                                                                (if val6894
                                                                                                  val6894
                                                                                                  (letrec ((val6895
                                                                                                            (letrec ((x7199
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7198
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7195
                                                                                                                      (letrec ((x7197
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7196
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7197
                                                                                                                         x7196)))
                                                                                                                     (x7192
                                                                                                                      (letrec ((x7194
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7193
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7194
                                                                                                                         x7193))))
                                                                                                              (and x7199
                                                                                                                   x7198
                                                                                                                   x7195
                                                                                                                   x7192))))
                                                                                                    (letrec ((g7200
                                                                                                              (if val6895
                                                                                                                val6895
                                                                                                                (letrec ((x7219
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7218
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7201
                                                                                                                          (letrec ((x7215
                                                                                                                                    (letrec ((x7216
                                                                                                                                              (letrec ((x7217
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7217))))
                                                                                                                                      (x7216)))
                                                                                                                                   (x7202
                                                                                                                                    (letrec ((x7213
                                                                                                                                              (letrec ((x7214
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7214
                                                                                                                                                 n)))
                                                                                                                                             (x7203
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7204
                                                                                                                                                                    (letrec ((x7211
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7205
                                                                                                                                                                              (letrec ((x7208
                                                                                                                                                                                        (letrec ((x7210
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7209
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7210
                                                                                                                                                                                           x7209)))
                                                                                                                                                                                       (x7206
                                                                                                                                                                                        (letrec ((x7207
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7207))))
                                                                                                                                                                                (and x7208
                                                                                                                                                                                     x7206))))
                                                                                                                                                                      (or x7211
                                                                                                                                                                          x7205))))
                                                                                                                                                            g7204))))
                                                                                                                                                (letrec ((g7212
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7212))))
                                                                                                                                      (and x7213
                                                                                                                                           x7203))))
                                                                                                                            (let x7215 x7202))))
                                                                                                                  (and x7219
                                                                                                                       x7218
                                                                                                                       x7201)))))
                                                                                                      g7200)))))
                                                                                        g7191)))))
                                                                          g7187)))))
                                                            g7184))))
                                                g7183)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7220
                                                        (letrec ((x7221
                                                                  (letrec ((x7222
                                                                            (letrec ((x7223
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7223))))
                                                                    (car
                                                                     x7222))))
                                                          (cdr x7221))))
                                                g7220)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7224
                                                        (letrec ((x7225
                                                                  (letrec ((x7226
                                                                            (letrec ((x7227
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7227))))
                                                                    (car
                                                                     x7226))))
                                                          (car x7225))))
                                                g7224)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7228 (eq? x y)))
                                                g7228)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7229
                                                        (letrec ((x7231
                                                                  (number? x)))
                                                          (assert x7231)))
                                                       (g7230
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7232
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7233
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7233)))))
                                                            g7232))))
                                                g7230)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7234
                                                        (letrec ((x7237
                                                                  (string?
                                                                   filename)))
                                                          (assert x7237)))
                                                       (g7235
                                                        (letrec ((x7238
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7238)))
                                                       (g7236
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7239
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7240 res))
                                                            g7240))))
                                                g7236)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7241 (cons x '())))
                                                g7241)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7242
                                                        (letrec ((x7245
                                                                  (char? c1)))
                                                          (assert x7245)))
                                                       (g7243
                                                        (letrec ((x7246
                                                                  (char? c2)))
                                                          (assert x7246)))
                                                       (g7244
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7247
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7247))))
                                                g7244)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7248
                                                        (letrec ((x7249
                                                                  (letrec ((x7250
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7250))))
                                                          (cdr x7249))))
                                                g7248)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7251
                                                        (letrec ((x7252
                                                                  (letrec ((x7253
                                                                            (letrec ((x7254
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7254))))
                                                                    (car
                                                                     x7253))))
                                                          (cdr x7252))))
                                                g7251)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7255
                                                        (letrec ((x7256
                                                                  (letrec ((x7257
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7257))))
                                                          (car x7256))))
                                                g7255)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7258
                                                        (letrec ((x7259
                                                                  (letrec ((x7260
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7260))))
                                                          (car x7259))))
                                                g7258)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7261
                                                        (letrec ((x7264
                                                                  (char? c1)))
                                                          (assert x7264)))
                                                       (g7262
                                                        (letrec ((x7265
                                                                  (char? c2)))
                                                          (assert x7265)))
                                                       (g7263
                                                        (letrec ((x7266
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7266))))
                                                g7263)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7267
                                                        (letrec ((x7268
                                                                  (letrec ((x7269
                                                                            (letrec ((x7270
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7270))))
                                                                    (car
                                                                     x7269))))
                                                          (car x7268))))
                                                g7267)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7271
                                                        (letrec ((x7273
                                                                  (number? x)))
                                                          (assert x7273)))
                                                       (g7272 (< x 0)))
                                                g7272)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7274 (memq e l)))
                                                g7274)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7275
                                                        (letrec ((x7276
                                                                  (letrec ((x7277
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7277))))
                                                          (car x7276))))
                                                g7275)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7278 '())) g7278)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7279
                                                        (letrec ((x7281
                                                                  (list? l)))
                                                          (assert x7281)))
                                                       (g7280
                                                        (letrec ((x-cnd7282
                                                                  (null? l)))
                                                          (if x-cnd7282
                                                            '()
                                                            (letrec ((x7285
                                                                      (letrec ((x7286
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7286)))
                                                                     (x7283
                                                                      (letrec ((x7284
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7284))))
                                                              (append
                                                               x7285
                                                               x7283))))))
                                                g7280)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7287
                                                        (letrec ((x7288
                                                                  (letrec ((x7289
                                                                            (letrec ((x7290
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7290))))
                                                                    (car
                                                                     x7289))))
                                                          (car x7288))))
                                                g7287)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7291
                                                        (letrec ((x7292
                                                                  (letrec ((x7293
                                                                            (letrec ((x7294
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7294))))
                                                                    (cdr
                                                                     x7293))))
                                                          (cdr x7292))))
                                                g7291)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7295
                                                        (letrec ((x7297
                                                                  (number? x)))
                                                          (assert x7297)))
                                                       (g7296
                                                        (letrec ((x7298
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7298))))
                                                g7296)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7299
                                                        (letrec ((x7300
                                                                  (letrec ((x7301
                                                                            (letrec ((x7302
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7302))))
                                                                    (car
                                                                     x7301))))
                                                          (car x7300))))
                                                g7299)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7303
                                                        (letrec ((x7306
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7306)))
                                                       (g7304
                                                        (letrec ((x7307
                                                                  (list?
                                                                   args)))
                                                          (assert x7307)))
                                                       (g7305
                                                        (if cnd
                                                          (letrec ((g7308
                                                                    (proc)))
                                                            g7308)
                                                          (if cnd
                                                            (letrec ((g7309
                                                                      (letrec ((x7310
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7310))))
                                                              g7309)
                                                            (if cnd
                                                              (letrec ((g7311
                                                                        (letrec ((x7313
                                                                                  (car
                                                                                   args))
                                                                                 (x7312
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7313
                                                                           x7312))))
                                                                g7311)
                                                              (if cnd
                                                                (letrec ((g7314
                                                                          (letrec ((x7317
                                                                                    (car
                                                                                     args))
                                                                                   (x7316
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7315
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7317
                                                                             x7316
                                                                             x7315))))
                                                                  g7314)
                                                                (if cnd
                                                                  (letrec ((g7318
                                                                            (letrec ((x7322
                                                                                      (car
                                                                                       args))
                                                                                     (x7321
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7320
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7319
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7322
                                                                               x7321
                                                                               x7320
                                                                               x7319))))
                                                                    g7318)
                                                                  (if cnd
                                                                    (letrec ((g7323
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
                                                                                         args))
                                                                                       (x7324
                                                                                        (letrec ((x7325
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7325))))
                                                                                (proc
                                                                                 x7329
                                                                                 x7328
                                                                                 x7327
                                                                                 x7326
                                                                                 x7324))))
                                                                      g7323)
                                                                    (if cnd
                                                                      (letrec ((g7330
                                                                                (letrec ((x7338
                                                                                          (car
                                                                                           args))
                                                                                         (x7337
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7336
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7335
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7333
                                                                                          (letrec ((x7334
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7334)))
                                                                                         (x7331
                                                                                          (letrec ((x7332
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7332))))
                                                                                  (proc
                                                                                   x7338
                                                                                   x7337
                                                                                   x7336
                                                                                   x7335
                                                                                   x7333
                                                                                   x7331))))
                                                                        g7330)
                                                                      (if cnd
                                                                        (letrec ((g7339
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
                                                                                               x7343)))
                                                                                           (x7340
                                                                                            (letrec ((x7341
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7341))))
                                                                                    (proc
                                                                                     x7349
                                                                                     x7348
                                                                                     x7347
                                                                                     x7346
                                                                                     x7344
                                                                                     x7342
                                                                                     x7340))))
                                                                          g7339)
                                                                        (letrec ((g7350
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7350)))))))))))
                                                g7305)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7351
                                                        (letrec ((x7353
                                                                  (list? l)))
                                                          (assert x7353)))
                                                       (g7352
                                                        (letrec ((x-cnd7354
                                                                  (null? l)))
                                                          (if x-cnd7354
                                                            #f
                                                            (letrec ((x-cnd7355
                                                                      (letrec ((x7356
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7356
                                                                         e))))
                                                              (if x-cnd7355
                                                                l
                                                                (letrec ((x7357
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7357))))))))
                                                g7352)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7358
                                                        (letrec ((x7359
                                                                  (letrec ((x7360
                                                                            (letrec ((x7361
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7361))))
                                                                    (cdr
                                                                     x7360))))
                                                          (cdr x7359))))
                                                g7358)))
                                           (cadddr
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
                                                          (car x7363))))
                                                g7362)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7366 (random 42)))
                                                g7366)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7367
                                                        (letrec ((x7369
                                                                  (number? x)))
                                                          (assert x7369)))
                                                       (g7368 (= x 0)))
                                                g7368)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7370
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7371
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7371))))
                                                g7370)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7372
                                                        (letrec ((x7373
                                                                  (cdr x)))
                                                          (car x7373))))
                                                g7372)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7374
                                                        (letrec ((val6900
                                                                  (letrec ((x7377
                                                                            (pair?
                                                                             l))
                                                                           (x7375
                                                                            (letrec ((x7376
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7376))))
                                                                    (and x7377
                                                                         x7375))))
                                                          (letrec ((g7378
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7378))))
                                                g7374)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7379
                                                        (letrec ((x7380
                                                                  (letrec ((x7381
                                                                            (letrec ((x7382
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7382))))
                                                                    (cdr
                                                                     x7381))))
                                                          (cdr x7380))))
                                                g7379)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7383
                                                        (letrec ((x-cnd7384
                                                                  (letrec ((x7385
                                                                            #\0))
                                                                    (char<=?
                                                                     x7385
                                                                     c))))
                                                          (if x-cnd7384
                                                            (letrec ((x7386
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7386))
                                                            #f))))
                                                g7383)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7387
                                                        (letrec ((x7389
                                                                  (list? l)))
                                                          (assert x7389)))
                                                       (g7388
                                                        (letrec ((x-cnd7390
                                                                  (null? l)))
                                                          (if x-cnd7390
                                                            #f
                                                            (letrec ((x-cnd7391
                                                                      (letrec ((x7392
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7392
                                                                         k))))
                                                              (if x-cnd7391
                                                                (car l)
                                                                (letrec ((x7393
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7393))))))))
                                                g7388)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7394 (if x #f #t)))
                                                g7394)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7395 (append l1 l2)))
                                                g7395)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7396
                                                        (letrec ((x7398
                                                                  (list? l)))
                                                          (assert x7398)))
                                                       (g7397
                                                        (letrec ((x-cnd7399
                                                                  (null? l)))
                                                          (if x-cnd7399
                                                            #f
                                                            (letrec ((x-cnd7400
                                                                      (letrec ((x7401
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7401
                                                                         e))))
                                                              (if x-cnd7400
                                                                l
                                                                (letrec ((x7402
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7402))))))))
                                                g7397)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7403
                                                        (letrec ((x7404
                                                                  (letrec ((x7405
                                                                            (letrec ((x7406
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7406))))
                                                                    (cdr
                                                                     x7405))))
                                                          (car x7404))))
                                                g7403)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7407
                                                        (letrec ((x7409
                                                                  (list? l)))
                                                          (assert x7409)))
                                                       (g7408
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7410
                                                                              (letrec ((x-cnd7411
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7411
                                                                                  0
                                                                                  (letrec ((x7412
                                                                                            (letrec ((x7413
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7413))))
                                                                                    (+
                                                                                     1
                                                                                     x7412))))))
                                                                      g7410))))
                                                          (letrec ((g7414
                                                                    (rec l)))
                                                            g7414))))
                                                g7408)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7415
                                                        (letrec ((x7418
                                                                  (char? c1)))
                                                          (assert x7418)))
                                                       (g7416
                                                        (letrec ((x7419
                                                                  (char? c2)))
                                                          (assert x7419)))
                                                       (g7417
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7420
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7420))))
                                                g7417)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7421
                                                        (letrec ((x7422
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7422))))
                                                g7421)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7423
                                                        (letrec ((x7424
                                                                  (letrec ((x7425
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7425))))
                                                          (cdr x7424))))
                                                g7423)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7426
                                                        (letrec ((x7428
                                                                  (list? l)))
                                                          (assert x7428)))
                                                       (g7427
                                                        (letrec ((x-cnd7429
                                                                  (null? l)))
                                                          (if x-cnd7429
                                                            #f
                                                            (letrec ((x-cnd7430
                                                                      (letrec ((x7431
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7431
                                                                         k))))
                                                              (if x-cnd7430
                                                                (car l)
                                                                (letrec ((x7432
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7432))))))))
                                                g7427)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7433
                                                        (letrec ((x7434
                                                                  (car x)))
                                                          (car x7434))))
                                                g7433)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7435
                                                        (letrec ((x7438
                                                                  (char? c1)))
                                                          (assert x7438)))
                                                       (g7436
                                                        (letrec ((x7439
                                                                  (char? c2)))
                                                          (assert x7439)))
                                                       (g7437
                                                        (letrec ((x7440
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7440))))
                                                g7437)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7441
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7442
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7442))))
                                                g7441)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7443
                                                        (letrec ((x7446
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7446)))
                                                       (g7444
                                                        (letrec ((x7447
                                                                  (list? l)))
                                                          (assert x7447)))
                                                       (g7445
                                                        (letrec ((x-cnd7448
                                                                  (null? l)))
                                                          (if x-cnd7448
                                                            #t
                                                            (letrec ((x-cnd7449
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7449
                                                                (letrec ((g7450
                                                                          (letrec ((x7452
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7452)))
                                                                         (g7451
                                                                          (letrec ((x7453
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7453))))
                                                                  g7451)
                                                                '()))))))
                                                g7445)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7454
                                                        (letrec ((x7456
                                                                  (number? x)))
                                                          (assert x7456)))
                                                       (g7455
                                                        (letrec ((x-cnd7457
                                                                  (< x 0)))
                                                          (if x-cnd7457
                                                            (- 0 x)
                                                            x))))
                                                g7455)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7458
                                                        (letrec ((x7461
                                                                  (char? c1)))
                                                          (assert x7461)))
                                                       (g7459
                                                        (letrec ((x7462
                                                                  (char? c2)))
                                                          (assert x7462)))
                                                       (g7460
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7463
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7463))))
                                                g7460)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7464
                                                        (letrec ((x7465
                                                                  (letrec ((x7466
                                                                            (letrec ((x7467
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7467))))
                                                                    (cdr
                                                                     x7466))))
                                                          (car x7465))))
                                                g7464)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7468 #f)) g7468)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7469
                                                        (letrec ((x7471
                                                                  (letrec ((x7472
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7472)))
                                                                 (x7470
                                                                  (gcd m n)))
                                                          (/ x7471 x7470))))
                                                g7469)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7473
                                                        (letrec ((x7475
                                                                  (number? x)))
                                                          (assert x7475)))
                                                       (g7474
                                                        (letrec ((x7476
                                                                  (<= x y)))
                                                          (not x7476))))
                                                g7474)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7477
                                                        (letrec ((x7481
                                                                  (list? l)))
                                                          (assert x7481)))
                                                       (g7478
                                                        (letrec ((x7482
                                                                  (number?
                                                                   index)))
                                                          (assert x7482)))
                                                       (g7479
                                                        (letrec ((x7483
                                                                  (letrec ((x7484
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7484))))
                                                          (assert x7483)))
                                                       (g7480
                                                        (letrec ((x-cnd7485
                                                                  (= index 0)))
                                                          (if x-cnd7485
                                                            (car l)
                                                            (letrec ((x7487
                                                                      (cdr l))
                                                                     (x7486
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7487
                                                               x7486))))))
                                                g7480)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7488
                                                        (letrec ((x-cnd7489
                                                                  (= b 0)))
                                                          (if x-cnd7489
                                                            a
                                                            (letrec ((x7490
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7490))))))
                                                g7488)))
                                           (tak
                                            (lambda (x y z)
                                              (letrec ((g7491
                                                        (letrec ((x-cnd7492
                                                                  (< y x)))
                                                          (if x-cnd7492
                                                            (letrec ((x7497
                                                                      (letrec ((x7498
                                                                                (-
                                                                                 x
                                                                                 1)))
                                                                        (tak
                                                                         x7498
                                                                         y
                                                                         z)))
                                                                     (x7495
                                                                      (letrec ((x7496
                                                                                (-
                                                                                 y
                                                                                 1)))
                                                                        (tak
                                                                         x7496
                                                                         z
                                                                         x)))
                                                                     (x7493
                                                                      (letrec ((x7494
                                                                                (-
                                                                                 z
                                                                                 1)))
                                                                        (tak
                                                                         x7494
                                                                         x
                                                                         y))))
                                                              (tak
                                                               x7497
                                                               x7495
                                                               x7493))
                                                            z))))
                                                g7491))))
                                    (letrec ((g7499
                                              (letrec ((x7503
                                                        ((lambda (j6976
                                                                  k6977
                                                                  f6978)
                                                           (letrec ((g7504
                                                                     (lambda (g6973
                                                                              g6974
                                                                              g6975)
                                                                       (letrec ((g7505
                                                                                 (letrec ((x7506
                                                                                           (letrec ((x7509
                                                                                                     (number?/c
                                                                                                      j6976
                                                                                                      k6977
                                                                                                      g6973))
                                                                                                    (x7508
                                                                                                     (number?/c
                                                                                                      j6976
                                                                                                      k6977
                                                                                                      g6974))
                                                                                                    (x7507
                                                                                                     (number?/c
                                                                                                      j6976
                                                                                                      k6977
                                                                                                      g6975)))
                                                                                             (f6978
                                                                                              x7509
                                                                                              x7508
                                                                                              x7507))))
                                                                                   (number?/c
                                                                                    j6976
                                                                                    k6977
                                                                                    x7506))))
                                                                         g7505))))
                                                             g7504))
                                                         'module
                                                         'importer
                                                         tak))
                                                       (x7502 (input))
                                                       (x7501 (input))
                                                       (x7500 (input)))
                                                (x7503 x7502 x7501 x7500))))
                                      g7499))))
                          g6992))))
              g6990)))
    g6989))
