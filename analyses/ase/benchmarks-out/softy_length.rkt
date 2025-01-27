(letrec ((any? (lambda (v) (letrec ((g6977 #t)) g6977)))
         (meta (lambda (v) (letrec ((g6978 v)) g6978)))
         (member
          (lambda (v lst)
            (letrec ((g6979
                      (letrec ((g6980
                                (letrec ((x-e6981 lst))
                                  (match
                                   x-e6981
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd6982 (eq? v v1)))
                                       (if x-cnd6982 #t (member v vs)))))))))
                        g6980)))
              g6979)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g6983 (lambda (v) (letrec ((g6984 v)) g6984)))) g6983)))
         (nonzero?
          (lambda (v)
            (letrec ((g6985 (letrec ((x6986 (= v 0))) (not x6986)))) g6985))))
  (letrec ((g6987
            (letrec ((g6988
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g6989 '())
                                 (g6990
                                  (letrec ((real/c
                                            (lambda (g6904 g6905 g6906)
                                              (letrec ((g6991
                                                        (letrec ((x-cnd6992
                                                                  (real?
                                                                   g6906)))
                                                          (if x-cnd6992
                                                            g6906
                                                            (blame
                                                             g6904
                                                             'real?)))))
                                                g6991)))
                                           (boolean?/c
                                            (lambda (g6907 g6908 g6909)
                                              (letrec ((g6993
                                                        (letrec ((x-cnd6994
                                                                  (boolean?
                                                                   g6909)))
                                                          (if x-cnd6994
                                                            g6909
                                                            (blame
                                                             g6907
                                                             'boolean?)))))
                                                g6993)))
                                           (number?/c
                                            (lambda (g6910 g6911 g6912)
                                              (letrec ((g6995
                                                        (letrec ((x-cnd6996
                                                                  (number?
                                                                   g6912)))
                                                          (if x-cnd6996
                                                            g6912
                                                            (blame
                                                             g6910
                                                             'number?)))))
                                                g6995)))
                                           (any/c
                                            (lambda (g6913 g6914 g6915)
                                              (letrec ((g6997
                                                        (letrec ((x-cnd6998
                                                                  ((lambda (v)
                                                                     (letrec ((g6999
                                                                               #t))
                                                                       g6999))
                                                                   g6915)))
                                                          (if x-cnd6998
                                                            g6915
                                                            (blame
                                                             g6913
                                                             '(lambda (v)
                                                                #t))))))
                                                g6997)))
                                           (any?/c
                                            (lambda (g6916 g6917 g6918)
                                              (letrec ((g7000
                                                        (letrec ((x-cnd7001
                                                                  ((lambda (v)
                                                                     (letrec ((g7002
                                                                               #t))
                                                                       g7002))
                                                                   g6918)))
                                                          (if x-cnd7001
                                                            g6918
                                                            (blame
                                                             g6916
                                                             '(lambda (v)
                                                                #t))))))
                                                g7000)))
                                           (cons?/c
                                            (lambda (g6919 g6920 g6921)
                                              (letrec ((g7003
                                                        (letrec ((x-cnd7004
                                                                  (pair?
                                                                   g6921)))
                                                          (if x-cnd7004
                                                            g6921
                                                            (blame
                                                             g6919
                                                             'pair?)))))
                                                g7003)))
                                           (pair?/c
                                            (lambda (g6922 g6923 g6924)
                                              (letrec ((g7005
                                                        (letrec ((x-cnd7006
                                                                  (pair?
                                                                   g6924)))
                                                          (if x-cnd7006
                                                            g6924
                                                            (blame
                                                             g6922
                                                             'pair?)))))
                                                g7005)))
                                           (integer?/c
                                            (lambda (g6925 g6926 g6927)
                                              (letrec ((g7007
                                                        (letrec ((x-cnd7008
                                                                  (integer?
                                                                   g6927)))
                                                          (if x-cnd7008
                                                            g6927
                                                            (blame
                                                             g6925
                                                             'integer?)))))
                                                g7007)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7009
                                                        (lambda (k j v)
                                                          (letrec ((g7010
                                                                    (letrec ((x-cnd7011
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7011
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7010))))
                                                g7009)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7012
                                                        (lambda (k j v)
                                                          (letrec ((g7013
                                                                    (letrec ((x-cnd7014
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7014
                                                                        '()
                                                                        (letrec ((x7018
                                                                                  (letrec ((x7019
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7019)))
                                                                                 (x7015
                                                                                  (letrec ((x7017
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7016
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7017
                                                                                     k
                                                                                     j
                                                                                     x7016))))
                                                                          (cons
                                                                           x7018
                                                                           x7015))))))
                                                            g7013))))
                                                g7012)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7020 #t)) g7020)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7021
                                                        (letrec ((x7022
                                                                  (= v 0)))
                                                          (not x7022))))
                                                g7021)))
                                           (nonzero?/c
                                            (lambda (g6928 g6929 g6930)
                                              (letrec ((g7023
                                                        (letrec ((x-cnd7024
                                                                  ((lambda (v)
                                                                     (letrec ((g7025
                                                                               (letrec ((x7026
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7026))))
                                                                       g7025))
                                                                   g6930)))
                                                          (if x-cnd7024
                                                            g6930
                                                            (blame
                                                             g6928
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7023)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7027 v)) g7027)))
                                           (+
                                            ((lambda (j6933 k6934 f6935)
                                               (letrec ((g7029
                                                         (lambda (g6931 g6932)
                                                           (letrec ((g7030
                                                                     (letrec ((x7031
                                                                               (letrec ((x7033
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6931))
                                                                                        (x7032
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6932)))
                                                                                 (f6935
                                                                                  x7033
                                                                                  x7032))))
                                                                       (number?/c
                                                                        j6933
                                                                        k6934
                                                                        x7031))))
                                                             g7030))))
                                                 g7029))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7028 (orig-+ a b)))
                                                 g7028))))
                                           (-
                                            ((lambda (j6938 k6939 f6940)
                                               (letrec ((g7035
                                                         (lambda (g6936 g6937)
                                                           (letrec ((g7036
                                                                     (letrec ((x7037
                                                                               (letrec ((x7039
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6936))
                                                                                        (x7038
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6937)))
                                                                                 (f6940
                                                                                  x7039
                                                                                  x7038))))
                                                                       (number?/c
                                                                        j6938
                                                                        k6939
                                                                        x7037))))
                                                             g7036))))
                                                 g7035))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7034 (orig-- a b)))
                                                 g7034))))
                                           (*
                                            ((lambda (j6943 k6944 f6945)
                                               (letrec ((g7041
                                                         (lambda (g6941 g6942)
                                                           (letrec ((g7042
                                                                     (letrec ((x7043
                                                                               (letrec ((x7045
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6941))
                                                                                        (x7044
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6942)))
                                                                                 (f6945
                                                                                  x7045
                                                                                  x7044))))
                                                                       (number?/c
                                                                        j6943
                                                                        k6944
                                                                        x7043))))
                                                             g7042))))
                                                 g7041))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7040 (orig-* a b)))
                                                 g7040))))
                                           (/
                                            ((lambda (j6948 k6949 f6950)
                                               (letrec ((g7047
                                                         (lambda (g6946 g6947)
                                                           (letrec ((g7048
                                                                     (letrec ((x7049
                                                                               (letrec ((x7051
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6946))
                                                                                        (x7050
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6947)))
                                                                                 (f6950
                                                                                  x7051
                                                                                  x7050))))
                                                                       (number?/c
                                                                        j6948
                                                                        k6949
                                                                        x7049))))
                                                             g7048))))
                                                 g7047))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7046 (orig-/ a b)))
                                                 g7046))))
                                           (car
                                            ((lambda (j6952 k6953 f6954)
                                               (letrec ((g7053
                                                         (lambda (g6951)
                                                           (letrec ((g7054
                                                                     (letrec ((x7055
                                                                               (letrec ((x7056
                                                                                         (pair?/c
                                                                                          j6952
                                                                                          k6953
                                                                                          g6951)))
                                                                                 (f6954
                                                                                  x7056))))
                                                                       (any/c
                                                                        j6952
                                                                        k6953
                                                                        x7055))))
                                                             g7054))))
                                                 g7053))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7052 (orig-car p)))
                                                 g7052))))
                                           (cdr
                                            ((lambda (j6956 k6957 f6958)
                                               (letrec ((g7058
                                                         (lambda (g6955)
                                                           (letrec ((g7059
                                                                     (letrec ((x7060
                                                                               (letrec ((x7061
                                                                                         (pair?/c
                                                                                          j6956
                                                                                          k6957
                                                                                          g6955)))
                                                                                 (f6958
                                                                                  x7061))))
                                                                       (any/c
                                                                        j6956
                                                                        k6957
                                                                        x7060))))
                                                             g7059))))
                                                 g7058))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7057 (orig-cdr p)))
                                                 g7057))))
                                           (cons
                                            ((lambda (j6961 k6962 f6963)
                                               (letrec ((g7063
                                                         (lambda (g6959 g6960)
                                                           (letrec ((g7064
                                                                     (letrec ((x7065
                                                                               (letrec ((x7067
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6959))
                                                                                        (x7066
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6960)))
                                                                                 (f6963
                                                                                  x7067
                                                                                  x7066))))
                                                                       (pair?/c
                                                                        j6961
                                                                        k6962
                                                                        x7065))))
                                                             g7064))))
                                                 g7063))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7062 (cons a b)))
                                                 g7062))))
                                           (vector-ref
                                            ((lambda (j6965 k6966 f6967)
                                               (letrec ((g7069
                                                         (lambda (g6964)
                                                           (letrec ((g7070
                                                                     (letrec ((x7071
                                                                               (letrec ((x7072
                                                                                         (vector?/c
                                                                                          j6965
                                                                                          k6966
                                                                                          g6964)))
                                                                                 (f6967
                                                                                  x7072))))
                                                                       (integer?/c
                                                                        j6965
                                                                        k6966
                                                                        x7071))))
                                                             g7070))))
                                                 g7069))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7068
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7068))))
                                           (vector-set!
                                            ((lambda (j6970 k6971 f6972)
                                               (letrec ((g7074
                                                         (lambda (g6968 g6969)
                                                           (letrec ((g7075
                                                                     (letrec ((x7076
                                                                               (letrec ((x7078
                                                                                         (vector?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6968))
                                                                                        (x7077
                                                                                         (integer?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6969)))
                                                                                 (f6972
                                                                                  x7078
                                                                                  x7077))))
                                                                       (any/c
                                                                        j6970
                                                                        k6971
                                                                        x7076))))
                                                             g7075))))
                                                 g7074))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7073
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7073))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7079 #t)) g7079)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7080
                                                        (letrec ((x7081
                                                                  (letrec ((x7082
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7082))))
                                                          (cdr x7081))))
                                                g7080)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7083
                                                        (letrec ((x7086
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7086)))
                                                       (g7084
                                                        (letrec ((x7087
                                                                  (list? l)))
                                                          (assert x7087)))
                                                       (g7085
                                                        (letrec ((x-cnd7088
                                                                  (null? l)))
                                                          (if x-cnd7088
                                                            '()
                                                            (letrec ((x7091
                                                                      (letrec ((x7092
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7092)))
                                                                     (x7089
                                                                      (letrec ((x7090
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7090))))
                                                              (cons
                                                               x7091
                                                               x7089))))))
                                                g7085)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7093
                                                        (letrec ((x7094
                                                                  (car x)))
                                                          (cdr x7094))))
                                                g7093)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7095
                                                        (letrec ((x7096
                                                                  (letrec ((x7097
                                                                            (letrec ((x7098
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7098))))
                                                                    (cdr
                                                                     x7097))))
                                                          (car x7096))))
                                                g7095)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7099
                                                        (letrec ((x7100
                                                                  (letrec ((x7101
                                                                            (letrec ((x7102
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7102))))
                                                                    (car
                                                                     x7101))))
                                                          (cdr x7100))))
                                                g7099)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7103
                                                        (letrec ((x7106
                                                                  (string?
                                                                   filename)))
                                                          (assert x7106)))
                                                       (g7104
                                                        (letrec ((x7107
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7107)))
                                                       (g7105
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7108
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7109 res))
                                                            g7109))))
                                                g7105)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7110
                                                        (letrec ((x7111
                                                                  (letrec ((x7112
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7112))))
                                                          (car x7111))))
                                                g7110)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7113
                                                        (letrec ((x7114
                                                                  (letrec ((x7115
                                                                            (letrec ((x7116
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7116))))
                                                                    (car
                                                                     x7115))))
                                                          (cdr x7114))))
                                                g7113)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7117
                                                        (letrec ((x7119
                                                                  (list? l)))
                                                          (assert x7119)))
                                                       (g7118
                                                        (letrec ((x-cnd7120
                                                                  (null? l)))
                                                          (if x-cnd7120
                                                            #f
                                                            (letrec ((x-cnd7121
                                                                      (letrec ((x7122
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7122
                                                                         k))))
                                                              (if x-cnd7121
                                                                (car l)
                                                                (letrec ((x7123
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7123))))))))
                                                g7118)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7124
                                                        (letrec ((x7125
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7125))))
                                                g7124)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7126
                                                        (letrec ((x7128
                                                                  (list? l)))
                                                          (assert x7128)))
                                                       (g7127
                                                        (letrec ((x-cnd7129
                                                                  (null? l)))
                                                          (if x-cnd7129
                                                            ""
                                                            (letrec ((x7132
                                                                      (letrec ((x7133
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7133)))
                                                                     (x7130
                                                                      (letrec ((x7131
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7131))))
                                                              (string-append
                                                               x7132
                                                               x7130))))))
                                                g7127)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7134
                                                        (letrec ((x7137
                                                                  (char? c1)))
                                                          (assert x7137)))
                                                       (g7135
                                                        (letrec ((x7138
                                                                  (char? c2)))
                                                          (assert x7138)))
                                                       (g7136
                                                        (letrec ((val6887
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7139
                                                                    (if val6887
                                                                      val6887
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7139))))
                                                g7136)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7140
                                                        (letrec ((x7141
                                                                  (letrec ((x7142
                                                                            (letrec ((x7143
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7143))))
                                                                    (cdr
                                                                     x7142))))
                                                          (cdr x7141))))
                                                g7140)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7144
                                                        (letrec ((x7147
                                                                  (list? l)))
                                                          (assert x7147)))
                                                       (g7145
                                                        (letrec ((x7148
                                                                  (numer?)))
                                                          (assert x7148)))
                                                       (g7146
                                                        (letrec ((x-cnd7149
                                                                  (zero? k)))
                                                          (if x-cnd7149
                                                            x
                                                            (letrec ((x7151
                                                                      (cdr x))
                                                                     (x7150
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7151
                                                               x7150))))))
                                                g7146)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7152 '())) g7152)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7153
                                                        (letrec ((x-cnd7154
                                                                  (letrec ((x7155
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7155))))
                                                          (if x-cnd7154
                                                            (letrec ((x7156
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7156))
                                                            #f))))
                                                g7153)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7157
                                                        (letrec ((x7159
                                                                  (number? x)))
                                                          (assert x7159)))
                                                       (g7158
                                                        (letrec ((val6888
                                                                  (< x y)))
                                                          (letrec ((g7160
                                                                    (if val6888
                                                                      val6888
                                                                      (letrec ((val6889
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7161
                                                                                  (if val6889
                                                                                    val6889
                                                                                    #f)))
                                                                          g7161)))))
                                                            g7160))))
                                                g7158)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7162
                                                        (letrec ((val6890
                                                                  (letrec ((x7163
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7163
                                                                     9))))
                                                          (letrec ((g7164
                                                                    (if val6890
                                                                      val6890
                                                                      (letrec ((val6891
                                                                                (letrec ((x7165
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7165
                                                                                   10))))
                                                                        (letrec ((g7166
                                                                                  (if val6891
                                                                                    val6891
                                                                                    (letrec ((x7167
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7167
                                                                                       32)))))
                                                                          g7166)))))
                                                            g7164))))
                                                g7162)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7168
                                                        (letrec ((x7169
                                                                  (letrec ((x7170
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7170))))
                                                          (cdr x7169))))
                                                g7168)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7171
                                                        (letrec ((x7173
                                                                  (number? x)))
                                                          (assert x7173)))
                                                       (g7172 (> x 0)))
                                                g7172)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7174 #f)) g7174)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7175
                                                        (letrec ((x7176
                                                                  (cdr x)))
                                                          (cdr x7176))))
                                                g7175)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7177
                                                        (letrec ((x7179
                                                                  (number? x)))
                                                          (assert x7179)))
                                                       (g7178
                                                        (letrec ((x-cnd7180
                                                                  (< x 0)))
                                                          (if x-cnd7180
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7178)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7181
                                                        (letrec ((val6892
                                                                  (eq? a b)))
                                                          (letrec ((g7182
                                                                    (if val6892
                                                                      val6892
                                                                      (letrec ((val6893
                                                                                (letrec ((x7184
                                                                                          (null?
                                                                                           a))
                                                                                         (x7183
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7184
                                                                                       x7183))))
                                                                        (letrec ((g7185
                                                                                  (if val6893
                                                                                    val6893
                                                                                    (letrec ((val6894
                                                                                              (letrec ((x7188
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7187
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7186
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7188
                                                                                                     x7187
                                                                                                     x7186))))
                                                                                      (letrec ((g7189
                                                                                                (if val6894
                                                                                                  val6894
                                                                                                  (letrec ((val6895
                                                                                                            (letrec ((x7197
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7196
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7193
                                                                                                                      (letrec ((x7195
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7194
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7195
                                                                                                                         x7194)))
                                                                                                                     (x7190
                                                                                                                      (letrec ((x7192
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7191
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7192
                                                                                                                         x7191))))
                                                                                                              (and x7197
                                                                                                                   x7196
                                                                                                                   x7193
                                                                                                                   x7190))))
                                                                                                    (letrec ((g7198
                                                                                                              (if val6895
                                                                                                                val6895
                                                                                                                (letrec ((x7214
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7213
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7199
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7200
                                                                                                                                      (letrec ((x7211
                                                                                                                                                (letrec ((x7212
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7212
                                                                                                                                                   n)))
                                                                                                                                               (x7201
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7202
                                                                                                                                                                      (letrec ((x7209
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7203
                                                                                                                                                                                (letrec ((x7206
                                                                                                                                                                                          (letrec ((x7208
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7207
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7208
                                                                                                                                                                                             x7207)))
                                                                                                                                                                                         (x7204
                                                                                                                                                                                          (letrec ((x7205
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7205))))
                                                                                                                                                                                  (and x7206
                                                                                                                                                                                       x7204))))
                                                                                                                                                                        (or x7209
                                                                                                                                                                            x7203))))
                                                                                                                                                              g7202))))
                                                                                                                                                  (letrec ((g7210
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7210))))
                                                                                                                                        (and x7211
                                                                                                                                             x7201))))
                                                                                                                              g7200))))
                                                                                                                  (and x7214
                                                                                                                       x7213
                                                                                                                       x7199)))))
                                                                                                      g7198)))))
                                                                                        g7189)))))
                                                                          g7185)))))
                                                            g7182))))
                                                g7181)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7215
                                                        (letrec ((x7216
                                                                  (letrec ((x7217
                                                                            (letrec ((x7218
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7218))))
                                                                    (car
                                                                     x7217))))
                                                          (cdr x7216))))
                                                g7215)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7219
                                                        (letrec ((x7220
                                                                  (letrec ((x7221
                                                                            (letrec ((x7222
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7222))))
                                                                    (car
                                                                     x7221))))
                                                          (car x7220))))
                                                g7219)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7223 (eq? x y)))
                                                g7223)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7224
                                                        (letrec ((x7226
                                                                  (number? x)))
                                                          (assert x7226)))
                                                       (g7225
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7227
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7228
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7228)))))
                                                            g7227))))
                                                g7225)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7229
                                                        (letrec ((x7232
                                                                  (string?
                                                                   filename)))
                                                          (assert x7232)))
                                                       (g7230
                                                        (letrec ((x7233
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7233)))
                                                       (g7231
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7234
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7235 res))
                                                            g7235))))
                                                g7231)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7236 (cons x '())))
                                                g7236)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7237
                                                        (letrec ((x7240
                                                                  (char? c1)))
                                                          (assert x7240)))
                                                       (g7238
                                                        (letrec ((x7241
                                                                  (char? c2)))
                                                          (assert x7241)))
                                                       (g7239
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7242
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7242))))
                                                g7239)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7243
                                                        (letrec ((x7244
                                                                  (letrec ((x7245
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7245))))
                                                          (cdr x7244))))
                                                g7243)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7246
                                                        (letrec ((x7247
                                                                  (letrec ((x7248
                                                                            (letrec ((x7249
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7249))))
                                                                    (car
                                                                     x7248))))
                                                          (cdr x7247))))
                                                g7246)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7250
                                                        (letrec ((x7251
                                                                  (letrec ((x7252
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7252))))
                                                          (car x7251))))
                                                g7250)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7253
                                                        (letrec ((x7254
                                                                  (letrec ((x7255
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7255))))
                                                          (car x7254))))
                                                g7253)))
                                           (char-ci>?
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
                                                        (letrec ((x7261
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7261))))
                                                g7258)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7262
                                                        (letrec ((x7263
                                                                  (letrec ((x7264
                                                                            (letrec ((x7265
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7265))))
                                                                    (car
                                                                     x7264))))
                                                          (car x7263))))
                                                g7262)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7266
                                                        (letrec ((x7268
                                                                  (number? x)))
                                                          (assert x7268)))
                                                       (g7267 (< x 0)))
                                                g7267)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7269 (memq e l)))
                                                g7269)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7270
                                                        (letrec ((x7271
                                                                  (letrec ((x7272
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7272))))
                                                          (car x7271))))
                                                g7270)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7273 '())) g7273)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7274
                                                        (letrec ((x7276
                                                                  (list? l)))
                                                          (assert x7276)))
                                                       (g7275
                                                        (letrec ((x-cnd7277
                                                                  (null? l)))
                                                          (if x-cnd7277
                                                            '()
                                                            (letrec ((x7280
                                                                      (letrec ((x7281
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7281)))
                                                                     (x7278
                                                                      (letrec ((x7279
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7279))))
                                                              (append
                                                               x7280
                                                               x7278))))))
                                                g7275)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7282
                                                        (letrec ((x7283
                                                                  (letrec ((x7284
                                                                            (letrec ((x7285
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7285))))
                                                                    (car
                                                                     x7284))))
                                                          (car x7283))))
                                                g7282)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7286
                                                        (letrec ((x7287
                                                                  (letrec ((x7288
                                                                            (letrec ((x7289
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7289))))
                                                                    (cdr
                                                                     x7288))))
                                                          (cdr x7287))))
                                                g7286)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7290
                                                        (letrec ((x7292
                                                                  (number? x)))
                                                          (assert x7292)))
                                                       (g7291
                                                        (letrec ((x7293
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7293))))
                                                g7291)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7294
                                                        (letrec ((x7295
                                                                  (letrec ((x7296
                                                                            (letrec ((x7297
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7297))))
                                                                    (car
                                                                     x7296))))
                                                          (car x7295))))
                                                g7294)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7298
                                                        (letrec ((x7301
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7301)))
                                                       (g7299
                                                        (letrec ((x7302
                                                                  (list?
                                                                   args)))
                                                          (assert x7302)))
                                                       (g7300
                                                        (if cnd
                                                          (letrec ((g7303
                                                                    (proc)))
                                                            g7303)
                                                          (if cnd
                                                            (letrec ((g7304
                                                                      (letrec ((x7305
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7305))))
                                                              g7304)
                                                            (if cnd
                                                              (letrec ((g7306
                                                                        (letrec ((x7308
                                                                                  (car
                                                                                   args))
                                                                                 (x7307
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7308
                                                                           x7307))))
                                                                g7306)
                                                              (if cnd
                                                                (letrec ((g7309
                                                                          (letrec ((x7312
                                                                                    (car
                                                                                     args))
                                                                                   (x7311
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7310
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7312
                                                                             x7311
                                                                             x7310))))
                                                                  g7309)
                                                                (if cnd
                                                                  (letrec ((g7313
                                                                            (letrec ((x7317
                                                                                      (car
                                                                                       args))
                                                                                     (x7316
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7315
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7314
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7317
                                                                               x7316
                                                                               x7315
                                                                               x7314))))
                                                                    g7313)
                                                                  (if cnd
                                                                    (letrec ((g7318
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
                                                                                         args))
                                                                                       (x7319
                                                                                        (letrec ((x7320
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7320))))
                                                                                (proc
                                                                                 x7324
                                                                                 x7323
                                                                                 x7322
                                                                                 x7321
                                                                                 x7319))))
                                                                      g7318)
                                                                    (if cnd
                                                                      (letrec ((g7325
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
                                                                                             x7329)))
                                                                                         (x7326
                                                                                          (letrec ((x7327
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7327))))
                                                                                  (proc
                                                                                   x7333
                                                                                   x7332
                                                                                   x7331
                                                                                   x7330
                                                                                   x7328
                                                                                   x7326))))
                                                                        g7325)
                                                                      (if cnd
                                                                        (letrec ((g7334
                                                                                  (letrec ((x7344
                                                                                            (car
                                                                                             args))
                                                                                           (x7343
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7342
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7341
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7339
                                                                                            (letrec ((x7340
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7340)))
                                                                                           (x7337
                                                                                            (letrec ((x7338
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7338)))
                                                                                           (x7335
                                                                                            (letrec ((x7336
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7336))))
                                                                                    (proc
                                                                                     x7344
                                                                                     x7343
                                                                                     x7342
                                                                                     x7341
                                                                                     x7339
                                                                                     x7337
                                                                                     x7335))))
                                                                          g7334)
                                                                        (letrec ((g7345
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7345)))))))))))
                                                g7300)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7346
                                                        (letrec ((x7348
                                                                  (list? l)))
                                                          (assert x7348)))
                                                       (g7347
                                                        (letrec ((x-cnd7349
                                                                  (null? l)))
                                                          (if x-cnd7349
                                                            #f
                                                            (letrec ((x-cnd7350
                                                                      (letrec ((x7351
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7351
                                                                         e))))
                                                              (if x-cnd7350
                                                                l
                                                                (letrec ((x7352
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7352))))))))
                                                g7347)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7353
                                                        (letrec ((x7354
                                                                  (letrec ((x7355
                                                                            (letrec ((x7356
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7356))))
                                                                    (cdr
                                                                     x7355))))
                                                          (cdr x7354))))
                                                g7353)))
                                           (cadddr
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
                                                          (car x7358))))
                                                g7357)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7361 (random 42)))
                                                g7361)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7362
                                                        (letrec ((x7364
                                                                  (number? x)))
                                                          (assert x7364)))
                                                       (g7363 (= x 0)))
                                                g7363)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7365
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7366
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7366))))
                                                g7365)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7367
                                                        (letrec ((x7368
                                                                  (cdr x)))
                                                          (car x7368))))
                                                g7367)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7369
                                                        (letrec ((val6900
                                                                  (letrec ((x7372
                                                                            (pair?
                                                                             l))
                                                                           (x7370
                                                                            (letrec ((x7371
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7371))))
                                                                    (and x7372
                                                                         x7370))))
                                                          (letrec ((g7373
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7373))))
                                                g7369)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7374
                                                        (letrec ((x7375
                                                                  (letrec ((x7376
                                                                            (letrec ((x7377
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7377))))
                                                                    (cdr
                                                                     x7376))))
                                                          (cdr x7375))))
                                                g7374)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7378
                                                        (letrec ((x-cnd7379
                                                                  (letrec ((x7380
                                                                            #\0))
                                                                    (char<=?
                                                                     x7380
                                                                     c))))
                                                          (if x-cnd7379
                                                            (letrec ((x7381
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7381))
                                                            #f))))
                                                g7378)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7382
                                                        (letrec ((x7384
                                                                  (list? l)))
                                                          (assert x7384)))
                                                       (g7383
                                                        (letrec ((x-cnd7385
                                                                  (null? l)))
                                                          (if x-cnd7385
                                                            #f
                                                            (letrec ((x-cnd7386
                                                                      (letrec ((x7387
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7387
                                                                         k))))
                                                              (if x-cnd7386
                                                                (car l)
                                                                (letrec ((x7388
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7388))))))))
                                                g7383)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7389 (if x #f #t)))
                                                g7389)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7390 (append l1 l2)))
                                                g7390)))
                                           (memq
                                            (lambda (e l)
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
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7396
                                                                         e))))
                                                              (if x-cnd7395
                                                                l
                                                                (letrec ((x7397
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7397))))))))
                                                g7392)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7398
                                                        (letrec ((x7399
                                                                  (letrec ((x7400
                                                                            (letrec ((x7401
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7401))))
                                                                    (cdr
                                                                     x7400))))
                                                          (car x7399))))
                                                g7398)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7402
                                                        (letrec ((x7404
                                                                  (list? l)))
                                                          (assert x7404)))
                                                       (g7403
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7405
                                                                              (letrec ((x-cnd7406
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7406
                                                                                  0
                                                                                  (letrec ((x7407
                                                                                            (letrec ((x7408
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7408))))
                                                                                    (+
                                                                                     1
                                                                                     x7407))))))
                                                                      g7405))))
                                                          (letrec ((g7409
                                                                    (rec l)))
                                                            g7409))))
                                                g7403)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7410
                                                        (letrec ((x7413
                                                                  (char? c1)))
                                                          (assert x7413)))
                                                       (g7411
                                                        (letrec ((x7414
                                                                  (char? c2)))
                                                          (assert x7414)))
                                                       (g7412
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7415
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7415))))
                                                g7412)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7416
                                                        (letrec ((x7417
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7417))))
                                                g7416)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7418
                                                        (letrec ((x7419
                                                                  (letrec ((x7420
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7420))))
                                                          (cdr x7419))))
                                                g7418)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7421
                                                        (letrec ((x7423
                                                                  (list? l)))
                                                          (assert x7423)))
                                                       (g7422
                                                        (letrec ((x-cnd7424
                                                                  (null? l)))
                                                          (if x-cnd7424
                                                            #f
                                                            (letrec ((x-cnd7425
                                                                      (letrec ((x7426
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7426
                                                                         k))))
                                                              (if x-cnd7425
                                                                (car l)
                                                                (letrec ((x7427
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7427))))))))
                                                g7422)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7428
                                                        (letrec ((x7429
                                                                  (car x)))
                                                          (car x7429))))
                                                g7428)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7430
                                                        (letrec ((x7433
                                                                  (char? c1)))
                                                          (assert x7433)))
                                                       (g7431
                                                        (letrec ((x7434
                                                                  (char? c2)))
                                                          (assert x7434)))
                                                       (g7432
                                                        (letrec ((x7435
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7435))))
                                                g7432)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7436
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7437
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7437))))
                                                g7436)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7438
                                                        (letrec ((x7441
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7441)))
                                                       (g7439
                                                        (letrec ((x7442
                                                                  (list? l)))
                                                          (assert x7442)))
                                                       (g7440
                                                        (letrec ((x-cnd7443
                                                                  (null? l)))
                                                          (if x-cnd7443
                                                            #t
                                                            (letrec ((x-cnd7444
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7444
                                                                (letrec ((g7445
                                                                          (letrec ((x7447
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7447)))
                                                                         (g7446
                                                                          (letrec ((x7448
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7448))))
                                                                  g7446)
                                                                '()))))))
                                                g7440)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7449
                                                        (letrec ((x7451
                                                                  (number? x)))
                                                          (assert x7451)))
                                                       (g7450
                                                        (letrec ((x-cnd7452
                                                                  (< x 0)))
                                                          (if x-cnd7452
                                                            (- 0 x)
                                                            x))))
                                                g7450)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7453
                                                        (letrec ((x7456
                                                                  (char? c1)))
                                                          (assert x7456)))
                                                       (g7454
                                                        (letrec ((x7457
                                                                  (char? c2)))
                                                          (assert x7457)))
                                                       (g7455
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7458
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7458))))
                                                g7455)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7459
                                                        (letrec ((x7460
                                                                  (letrec ((x7461
                                                                            (letrec ((x7462
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7462))))
                                                                    (cdr
                                                                     x7461))))
                                                          (car x7460))))
                                                g7459)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7463 #f)) g7463)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7464
                                                        (letrec ((x7466
                                                                  (letrec ((x7467
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7467)))
                                                                 (x7465
                                                                  (gcd m n)))
                                                          (/ x7466 x7465))))
                                                g7464)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7468
                                                        (letrec ((x7470
                                                                  (number? x)))
                                                          (assert x7470)))
                                                       (g7469
                                                        (letrec ((x7471
                                                                  (<= x y)))
                                                          (not x7471))))
                                                g7469)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7472
                                                        (letrec ((x7476
                                                                  (list? l)))
                                                          (assert x7476)))
                                                       (g7473
                                                        (letrec ((x7477
                                                                  (number?
                                                                   index)))
                                                          (assert x7477)))
                                                       (g7474
                                                        (letrec ((x7478
                                                                  (letrec ((x7479
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7479))))
                                                          (assert x7478)))
                                                       (g7475
                                                        (letrec ((x-cnd7480
                                                                  (= index 0)))
                                                          (if x-cnd7480
                                                            (car l)
                                                            (letrec ((x7482
                                                                      (cdr l))
                                                                     (x7481
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7482
                                                               x7481))))))
                                                g7475)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7483
                                                        (letrec ((x-cnd7484
                                                                  (= b 0)))
                                                          (if x-cnd7484
                                                            a
                                                            (letrec ((x7485
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7485))))))
                                                g7483)))
                                           (len
                                            (lambda (xs)
                                              (letrec ((g7486
                                                        (letrec ((x-cnd7487
                                                                  (empty? xs)))
                                                          (if x-cnd7487
                                                            0
                                                            (letrec ((x7488
                                                                      (letrec ((x7489
                                                                                (cdr
                                                                                 xs)))
                                                                        (len
                                                                         x7489))))
                                                              (+ 1 x7488))))))
                                                g7486))))
                                    (letrec ((g7490
                                              (letrec ((x7492
                                                        ((lambda (j6974
                                                                  k6975
                                                                  f6976)
                                                           (letrec ((g7493
                                                                     (lambda (g6973)
                                                                       (letrec ((g7494
                                                                                 (letrec ((x7498
                                                                                           (letrec ((x7499
                                                                                                     (>=/c
                                                                                                      0)))
                                                                                             (and/c
                                                                                              integer?/c
                                                                                              x7499)))
                                                                                          (x7495
                                                                                           (letrec ((x7496
                                                                                                     (letrec ((x7497
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7497
                                                                                                        j6974
                                                                                                        k6975
                                                                                                        g6973))))
                                                                                             (f6976
                                                                                              x7496))))
                                                                                   (x7498
                                                                                    j6974
                                                                                    k6975
                                                                                    x7495))))
                                                                         g7494))))
                                                             g7493))
                                                         'module
                                                         'importer
                                                         len))
                                                       (x7491 (input)))
                                                (x7492 x7491))))
                                      g7490))))
                          g6990))))
              g6988)))
    g6987))
