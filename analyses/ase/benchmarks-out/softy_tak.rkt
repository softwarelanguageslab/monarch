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
                                                                                                                (letrec ((x7216
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7215
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7201
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7202
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
                                                                                                                              g7202))))
                                                                                                                  (and x7216
                                                                                                                       x7215
                                                                                                                       x7201)))))
                                                                                                      g7200)))))
                                                                                        g7191)))))
                                                                          g7187)))))
                                                            g7184))))
                                                g7183)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7217
                                                        (letrec ((x7218
                                                                  (letrec ((x7219
                                                                            (letrec ((x7220
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7220))))
                                                                    (car
                                                                     x7219))))
                                                          (cdr x7218))))
                                                g7217)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7221
                                                        (letrec ((x7222
                                                                  (letrec ((x7223
                                                                            (letrec ((x7224
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7224))))
                                                                    (car
                                                                     x7223))))
                                                          (car x7222))))
                                                g7221)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7225 (eq? x y)))
                                                g7225)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7226
                                                        (letrec ((x7228
                                                                  (number? x)))
                                                          (assert x7228)))
                                                       (g7227
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7229
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7230
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7230)))))
                                                            g7229))))
                                                g7227)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7231
                                                        (letrec ((x7234
                                                                  (string?
                                                                   filename)))
                                                          (assert x7234)))
                                                       (g7232
                                                        (letrec ((x7235
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7235)))
                                                       (g7233
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7236
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7237 res))
                                                            g7237))))
                                                g7233)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7238 (cons x '())))
                                                g7238)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7239
                                                        (letrec ((x7242
                                                                  (char? c1)))
                                                          (assert x7242)))
                                                       (g7240
                                                        (letrec ((x7243
                                                                  (char? c2)))
                                                          (assert x7243)))
                                                       (g7241
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7244
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7244))))
                                                g7241)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7245
                                                        (letrec ((x7246
                                                                  (letrec ((x7247
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7247))))
                                                          (cdr x7246))))
                                                g7245)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7248
                                                        (letrec ((x7249
                                                                  (letrec ((x7250
                                                                            (letrec ((x7251
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7251))))
                                                                    (car
                                                                     x7250))))
                                                          (cdr x7249))))
                                                g7248)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7252
                                                        (letrec ((x7253
                                                                  (letrec ((x7254
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7254))))
                                                          (car x7253))))
                                                g7252)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7255
                                                        (letrec ((x7256
                                                                  (letrec ((x7257
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7257))))
                                                          (car x7256))))
                                                g7255)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7258
                                                        (letrec ((x7261
                                                                  (char? c1)))
                                                          (assert x7261)))
                                                       (g7259
                                                        (letrec ((x7262
                                                                  (char? c2)))
                                                          (assert x7262)))
                                                       (g7260
                                                        (letrec ((x7263
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7263))))
                                                g7260)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7264
                                                        (letrec ((x7265
                                                                  (letrec ((x7266
                                                                            (letrec ((x7267
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7267))))
                                                                    (car
                                                                     x7266))))
                                                          (car x7265))))
                                                g7264)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7268
                                                        (letrec ((x7270
                                                                  (number? x)))
                                                          (assert x7270)))
                                                       (g7269 (< x 0)))
                                                g7269)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7271 (memq e l)))
                                                g7271)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7272
                                                        (letrec ((x7273
                                                                  (letrec ((x7274
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7274))))
                                                          (car x7273))))
                                                g7272)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7275 '())) g7275)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7276
                                                        (letrec ((x7278
                                                                  (list? l)))
                                                          (assert x7278)))
                                                       (g7277
                                                        (letrec ((x-cnd7279
                                                                  (null? l)))
                                                          (if x-cnd7279
                                                            '()
                                                            (letrec ((x7282
                                                                      (letrec ((x7283
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7283)))
                                                                     (x7280
                                                                      (letrec ((x7281
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7281))))
                                                              (append
                                                               x7282
                                                               x7280))))))
                                                g7277)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7284
                                                        (letrec ((x7285
                                                                  (letrec ((x7286
                                                                            (letrec ((x7287
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7287))))
                                                                    (car
                                                                     x7286))))
                                                          (car x7285))))
                                                g7284)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7288
                                                        (letrec ((x7289
                                                                  (letrec ((x7290
                                                                            (letrec ((x7291
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7291))))
                                                                    (cdr
                                                                     x7290))))
                                                          (cdr x7289))))
                                                g7288)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7292
                                                        (letrec ((x7294
                                                                  (number? x)))
                                                          (assert x7294)))
                                                       (g7293
                                                        (letrec ((x7295
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7295))))
                                                g7293)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7296
                                                        (letrec ((x7297
                                                                  (letrec ((x7298
                                                                            (letrec ((x7299
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7299))))
                                                                    (car
                                                                     x7298))))
                                                          (car x7297))))
                                                g7296)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7300
                                                        (letrec ((x7303
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7303)))
                                                       (g7301
                                                        (letrec ((x7304
                                                                  (list?
                                                                   args)))
                                                          (assert x7304)))
                                                       (g7302
                                                        (if cnd
                                                          (letrec ((g7305
                                                                    (proc)))
                                                            g7305)
                                                          (if cnd
                                                            (letrec ((g7306
                                                                      (letrec ((x7307
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7307))))
                                                              g7306)
                                                            (if cnd
                                                              (letrec ((g7308
                                                                        (letrec ((x7310
                                                                                  (car
                                                                                   args))
                                                                                 (x7309
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7310
                                                                           x7309))))
                                                                g7308)
                                                              (if cnd
                                                                (letrec ((g7311
                                                                          (letrec ((x7314
                                                                                    (car
                                                                                     args))
                                                                                   (x7313
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7312
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7314
                                                                             x7313
                                                                             x7312))))
                                                                  g7311)
                                                                (if cnd
                                                                  (letrec ((g7315
                                                                            (letrec ((x7319
                                                                                      (car
                                                                                       args))
                                                                                     (x7318
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7317
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7316
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7319
                                                                               x7318
                                                                               x7317
                                                                               x7316))))
                                                                    g7315)
                                                                  (if cnd
                                                                    (letrec ((g7320
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
                                                                                         args))
                                                                                       (x7321
                                                                                        (letrec ((x7322
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7322))))
                                                                                (proc
                                                                                 x7326
                                                                                 x7325
                                                                                 x7324
                                                                                 x7323
                                                                                 x7321))))
                                                                      g7320)
                                                                    (if cnd
                                                                      (letrec ((g7327
                                                                                (letrec ((x7335
                                                                                          (car
                                                                                           args))
                                                                                         (x7334
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7333
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7332
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7330
                                                                                          (letrec ((x7331
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7331)))
                                                                                         (x7328
                                                                                          (letrec ((x7329
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7329))))
                                                                                  (proc
                                                                                   x7335
                                                                                   x7334
                                                                                   x7333
                                                                                   x7332
                                                                                   x7330
                                                                                   x7328))))
                                                                        g7327)
                                                                      (if cnd
                                                                        (letrec ((g7336
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
                                                                                               x7340)))
                                                                                           (x7337
                                                                                            (letrec ((x7338
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7338))))
                                                                                    (proc
                                                                                     x7346
                                                                                     x7345
                                                                                     x7344
                                                                                     x7343
                                                                                     x7341
                                                                                     x7339
                                                                                     x7337))))
                                                                          g7336)
                                                                        (letrec ((g7347
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7347)))))))))))
                                                g7302)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7348
                                                        (letrec ((x7350
                                                                  (list? l)))
                                                          (assert x7350)))
                                                       (g7349
                                                        (letrec ((x-cnd7351
                                                                  (null? l)))
                                                          (if x-cnd7351
                                                            #f
                                                            (letrec ((x-cnd7352
                                                                      (letrec ((x7353
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7353
                                                                         e))))
                                                              (if x-cnd7352
                                                                l
                                                                (letrec ((x7354
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7354))))))))
                                                g7349)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7355
                                                        (letrec ((x7356
                                                                  (letrec ((x7357
                                                                            (letrec ((x7358
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7358))))
                                                                    (cdr
                                                                     x7357))))
                                                          (cdr x7356))))
                                                g7355)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7359
                                                        (letrec ((x7360
                                                                  (letrec ((x7361
                                                                            (letrec ((x7362
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7362))))
                                                                    (cdr
                                                                     x7361))))
                                                          (car x7360))))
                                                g7359)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7363 (random 42)))
                                                g7363)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7364
                                                        (letrec ((x7366
                                                                  (number? x)))
                                                          (assert x7366)))
                                                       (g7365 (= x 0)))
                                                g7365)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7367
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7368
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7368))))
                                                g7367)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7369
                                                        (letrec ((x7370
                                                                  (cdr x)))
                                                          (car x7370))))
                                                g7369)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7371
                                                        (letrec ((val6900
                                                                  (letrec ((x7374
                                                                            (pair?
                                                                             l))
                                                                           (x7372
                                                                            (letrec ((x7373
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7373))))
                                                                    (and x7374
                                                                         x7372))))
                                                          (letrec ((g7375
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7375))))
                                                g7371)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7376
                                                        (letrec ((x7377
                                                                  (letrec ((x7378
                                                                            (letrec ((x7379
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7379))))
                                                                    (cdr
                                                                     x7378))))
                                                          (cdr x7377))))
                                                g7376)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7380
                                                        (letrec ((x-cnd7381
                                                                  (letrec ((x7382
                                                                            #\0))
                                                                    (char<=?
                                                                     x7382
                                                                     c))))
                                                          (if x-cnd7381
                                                            (letrec ((x7383
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7383))
                                                            #f))))
                                                g7380)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7384
                                                        (letrec ((x7386
                                                                  (list? l)))
                                                          (assert x7386)))
                                                       (g7385
                                                        (letrec ((x-cnd7387
                                                                  (null? l)))
                                                          (if x-cnd7387
                                                            #f
                                                            (letrec ((x-cnd7388
                                                                      (letrec ((x7389
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7389
                                                                         k))))
                                                              (if x-cnd7388
                                                                (car l)
                                                                (letrec ((x7390
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7390))))))))
                                                g7385)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7391 (if x #f #t)))
                                                g7391)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7392 (append l1 l2)))
                                                g7392)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7393
                                                        (letrec ((x7395
                                                                  (list? l)))
                                                          (assert x7395)))
                                                       (g7394
                                                        (letrec ((x-cnd7396
                                                                  (null? l)))
                                                          (if x-cnd7396
                                                            #f
                                                            (letrec ((x-cnd7397
                                                                      (letrec ((x7398
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7398
                                                                         e))))
                                                              (if x-cnd7397
                                                                l
                                                                (letrec ((x7399
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7399))))))))
                                                g7394)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7400
                                                        (letrec ((x7401
                                                                  (letrec ((x7402
                                                                            (letrec ((x7403
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7403))))
                                                                    (cdr
                                                                     x7402))))
                                                          (car x7401))))
                                                g7400)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7404
                                                        (letrec ((x7406
                                                                  (list? l)))
                                                          (assert x7406)))
                                                       (g7405
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7407
                                                                              (letrec ((x-cnd7408
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7408
                                                                                  0
                                                                                  (letrec ((x7409
                                                                                            (letrec ((x7410
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7410))))
                                                                                    (+
                                                                                     1
                                                                                     x7409))))))
                                                                      g7407))))
                                                          (letrec ((g7411
                                                                    (rec l)))
                                                            g7411))))
                                                g7405)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7412
                                                        (letrec ((x7415
                                                                  (char? c1)))
                                                          (assert x7415)))
                                                       (g7413
                                                        (letrec ((x7416
                                                                  (char? c2)))
                                                          (assert x7416)))
                                                       (g7414
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7417
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7417))))
                                                g7414)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7418
                                                        (letrec ((x7419
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7419))))
                                                g7418)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7420
                                                        (letrec ((x7421
                                                                  (letrec ((x7422
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7422))))
                                                          (cdr x7421))))
                                                g7420)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7423
                                                        (letrec ((x7425
                                                                  (list? l)))
                                                          (assert x7425)))
                                                       (g7424
                                                        (letrec ((x-cnd7426
                                                                  (null? l)))
                                                          (if x-cnd7426
                                                            #f
                                                            (letrec ((x-cnd7427
                                                                      (letrec ((x7428
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7428
                                                                         k))))
                                                              (if x-cnd7427
                                                                (car l)
                                                                (letrec ((x7429
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7429))))))))
                                                g7424)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7430
                                                        (letrec ((x7431
                                                                  (car x)))
                                                          (car x7431))))
                                                g7430)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7432
                                                        (letrec ((x7435
                                                                  (char? c1)))
                                                          (assert x7435)))
                                                       (g7433
                                                        (letrec ((x7436
                                                                  (char? c2)))
                                                          (assert x7436)))
                                                       (g7434
                                                        (letrec ((x7437
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7437))))
                                                g7434)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7438
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7439
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7439))))
                                                g7438)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7440
                                                        (letrec ((x7443
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7443)))
                                                       (g7441
                                                        (letrec ((x7444
                                                                  (list? l)))
                                                          (assert x7444)))
                                                       (g7442
                                                        (letrec ((x-cnd7445
                                                                  (null? l)))
                                                          (if x-cnd7445
                                                            #t
                                                            (letrec ((x-cnd7446
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7446
                                                                (letrec ((g7447
                                                                          (letrec ((x7449
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7449)))
                                                                         (g7448
                                                                          (letrec ((x7450
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7450))))
                                                                  g7448)
                                                                '()))))))
                                                g7442)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7451
                                                        (letrec ((x7453
                                                                  (number? x)))
                                                          (assert x7453)))
                                                       (g7452
                                                        (letrec ((x-cnd7454
                                                                  (< x 0)))
                                                          (if x-cnd7454
                                                            (- 0 x)
                                                            x))))
                                                g7452)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7455
                                                        (letrec ((x7458
                                                                  (char? c1)))
                                                          (assert x7458)))
                                                       (g7456
                                                        (letrec ((x7459
                                                                  (char? c2)))
                                                          (assert x7459)))
                                                       (g7457
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7460
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7460))))
                                                g7457)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7461
                                                        (letrec ((x7462
                                                                  (letrec ((x7463
                                                                            (letrec ((x7464
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7464))))
                                                                    (cdr
                                                                     x7463))))
                                                          (car x7462))))
                                                g7461)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7465 #f)) g7465)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7466
                                                        (letrec ((x7468
                                                                  (letrec ((x7469
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7469)))
                                                                 (x7467
                                                                  (gcd m n)))
                                                          (/ x7468 x7467))))
                                                g7466)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7470
                                                        (letrec ((x7472
                                                                  (number? x)))
                                                          (assert x7472)))
                                                       (g7471
                                                        (letrec ((x7473
                                                                  (<= x y)))
                                                          (not x7473))))
                                                g7471)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7474
                                                        (letrec ((x7478
                                                                  (list? l)))
                                                          (assert x7478)))
                                                       (g7475
                                                        (letrec ((x7479
                                                                  (number?
                                                                   index)))
                                                          (assert x7479)))
                                                       (g7476
                                                        (letrec ((x7480
                                                                  (letrec ((x7481
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7481))))
                                                          (assert x7480)))
                                                       (g7477
                                                        (letrec ((x-cnd7482
                                                                  (= index 0)))
                                                          (if x-cnd7482
                                                            (car l)
                                                            (letrec ((x7484
                                                                      (cdr l))
                                                                     (x7483
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7484
                                                               x7483))))))
                                                g7477)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7485
                                                        (letrec ((x-cnd7486
                                                                  (= b 0)))
                                                          (if x-cnd7486
                                                            a
                                                            (letrec ((x7487
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7487))))))
                                                g7485)))
                                           (tak
                                            (lambda (x y z)
                                              (letrec ((g7488
                                                        (letrec ((x-cnd7489
                                                                  (< y x)))
                                                          (if x-cnd7489
                                                            (letrec ((x7494
                                                                      (letrec ((x7495
                                                                                (-
                                                                                 x
                                                                                 1)))
                                                                        (tak
                                                                         x7495
                                                                         y
                                                                         z)))
                                                                     (x7492
                                                                      (letrec ((x7493
                                                                                (-
                                                                                 y
                                                                                 1)))
                                                                        (tak
                                                                         x7493
                                                                         z
                                                                         x)))
                                                                     (x7490
                                                                      (letrec ((x7491
                                                                                (-
                                                                                 z
                                                                                 1)))
                                                                        (tak
                                                                         x7491
                                                                         x
                                                                         y))))
                                                              (tak
                                                               x7494
                                                               x7492
                                                               x7490))
                                                            z))))
                                                g7488))))
                                    (letrec ((g7496
                                              (letrec ((x7500
                                                        ((lambda (j6976
                                                                  k6977
                                                                  f6978)
                                                           (letrec ((g7501
                                                                     (lambda (g6973
                                                                              g6974
                                                                              g6975)
                                                                       (letrec ((g7502
                                                                                 (letrec ((x7503
                                                                                           (letrec ((x7506
                                                                                                     (number?/c
                                                                                                      j6976
                                                                                                      k6977
                                                                                                      g6973))
                                                                                                    (x7505
                                                                                                     (number?/c
                                                                                                      j6976
                                                                                                      k6977
                                                                                                      g6974))
                                                                                                    (x7504
                                                                                                     (number?/c
                                                                                                      j6976
                                                                                                      k6977
                                                                                                      g6975)))
                                                                                             (f6978
                                                                                              x7506
                                                                                              x7505
                                                                                              x7504))))
                                                                                   (number?/c
                                                                                    j6976
                                                                                    k6977
                                                                                    x7503))))
                                                                         g7502))))
                                                             g7501))
                                                         'module
                                                         'importer
                                                         tak))
                                                       (x7499 (input))
                                                       (x7498 (input))
                                                       (x7497 (input)))
                                                (x7500 x7499 x7498 x7497))))
                                      g7496))))
                          g6992))))
              g6990)))
    g6989))
