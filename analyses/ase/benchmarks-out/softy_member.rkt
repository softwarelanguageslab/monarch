(letrec ((any? (lambda (v) (letrec ((g6976 #t)) g6976)))
         (meta (lambda (v) (letrec ((g6977 v)) g6977)))
         (member
          (lambda (v lst)
            (letrec ((g6978
                      (letrec ((g6979
                                (letrec ((x-e6980 lst))
                                  (match
                                   x-e6980
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd6981 (eq? v v1)))
                                       (if x-cnd6981 #t (member v vs)))))))))
                        g6979)))
              g6978)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g6982 (lambda (v) (letrec ((g6983 v)) g6983)))) g6982)))
         (nonzero?
          (lambda (v)
            (letrec ((g6984 (letrec ((x6985 (= v 0))) (not x6985)))) g6984))))
  (letrec ((g6986
            (letrec ((g6987
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g6988 '())
                                 (g6989
                                  (letrec ((real/c
                                            (lambda (g6904 g6905 g6906)
                                              (letrec ((g6990
                                                        (letrec ((x-cnd6991
                                                                  (real?
                                                                   g6906)))
                                                          (if x-cnd6991
                                                            g6906
                                                            (blame
                                                             g6904
                                                             'real?)))))
                                                g6990)))
                                           (boolean?/c
                                            (lambda (g6907 g6908 g6909)
                                              (letrec ((g6992
                                                        (letrec ((x-cnd6993
                                                                  (boolean?
                                                                   g6909)))
                                                          (if x-cnd6993
                                                            g6909
                                                            (blame
                                                             g6907
                                                             'boolean?)))))
                                                g6992)))
                                           (number?/c
                                            (lambda (g6910 g6911 g6912)
                                              (letrec ((g6994
                                                        (letrec ((x-cnd6995
                                                                  (number?
                                                                   g6912)))
                                                          (if x-cnd6995
                                                            g6912
                                                            (blame
                                                             g6910
                                                             'number?)))))
                                                g6994)))
                                           (any/c
                                            (lambda (g6913 g6914 g6915)
                                              (letrec ((g6996
                                                        (letrec ((x-cnd6997
                                                                  ((lambda (v)
                                                                     (letrec ((g6998
                                                                               #t))
                                                                       g6998))
                                                                   g6915)))
                                                          (if x-cnd6997
                                                            g6915
                                                            (blame
                                                             g6913
                                                             '(lambda (v)
                                                                #t))))))
                                                g6996)))
                                           (any?/c
                                            (lambda (g6916 g6917 g6918)
                                              (letrec ((g6999
                                                        (letrec ((x-cnd7000
                                                                  ((lambda (v)
                                                                     (letrec ((g7001
                                                                               #t))
                                                                       g7001))
                                                                   g6918)))
                                                          (if x-cnd7000
                                                            g6918
                                                            (blame
                                                             g6916
                                                             '(lambda (v)
                                                                #t))))))
                                                g6999)))
                                           (cons?/c
                                            (lambda (g6919 g6920 g6921)
                                              (letrec ((g7002
                                                        (letrec ((x-cnd7003
                                                                  (pair?
                                                                   g6921)))
                                                          (if x-cnd7003
                                                            g6921
                                                            (blame
                                                             g6919
                                                             'pair?)))))
                                                g7002)))
                                           (pair?/c
                                            (lambda (g6922 g6923 g6924)
                                              (letrec ((g7004
                                                        (letrec ((x-cnd7005
                                                                  (pair?
                                                                   g6924)))
                                                          (if x-cnd7005
                                                            g6924
                                                            (blame
                                                             g6922
                                                             'pair?)))))
                                                g7004)))
                                           (integer?/c
                                            (lambda (g6925 g6926 g6927)
                                              (letrec ((g7006
                                                        (letrec ((x-cnd7007
                                                                  (integer?
                                                                   g6927)))
                                                          (if x-cnd7007
                                                            g6927
                                                            (blame
                                                             g6925
                                                             'integer?)))))
                                                g7006)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7008
                                                        (lambda (k j v)
                                                          (letrec ((g7009
                                                                    (letrec ((x-cnd7010
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7010
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7009))))
                                                g7008)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7011
                                                        (lambda (k j v)
                                                          (letrec ((g7012
                                                                    (letrec ((x-cnd7013
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7013
                                                                        '()
                                                                        (letrec ((x7017
                                                                                  (letrec ((x7018
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7018)))
                                                                                 (x7014
                                                                                  (letrec ((x7016
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7015
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7016
                                                                                     k
                                                                                     j
                                                                                     x7015))))
                                                                          (cons
                                                                           x7017
                                                                           x7014))))))
                                                            g7012))))
                                                g7011)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7019 #t)) g7019)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7020
                                                        (letrec ((x7021
                                                                  (= v 0)))
                                                          (not x7021))))
                                                g7020)))
                                           (nonzero?/c
                                            (lambda (g6928 g6929 g6930)
                                              (letrec ((g7022
                                                        (letrec ((x-cnd7023
                                                                  ((lambda (v)
                                                                     (letrec ((g7024
                                                                               (letrec ((x7025
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7025))))
                                                                       g7024))
                                                                   g6930)))
                                                          (if x-cnd7023
                                                            g6930
                                                            (blame
                                                             g6928
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7022)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7026 v)) g7026)))
                                           (+
                                            ((lambda (j6933 k6934 f6935)
                                               (letrec ((g7028
                                                         (lambda (g6931 g6932)
                                                           (letrec ((g7029
                                                                     (letrec ((x7030
                                                                               (letrec ((x7032
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6931))
                                                                                        (x7031
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6932)))
                                                                                 (f6935
                                                                                  x7032
                                                                                  x7031))))
                                                                       (number?/c
                                                                        j6933
                                                                        k6934
                                                                        x7030))))
                                                             g7029))))
                                                 g7028))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7027 (orig-+ a b)))
                                                 g7027))))
                                           (-
                                            ((lambda (j6938 k6939 f6940)
                                               (letrec ((g7034
                                                         (lambda (g6936 g6937)
                                                           (letrec ((g7035
                                                                     (letrec ((x7036
                                                                               (letrec ((x7038
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6936))
                                                                                        (x7037
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6937)))
                                                                                 (f6940
                                                                                  x7038
                                                                                  x7037))))
                                                                       (number?/c
                                                                        j6938
                                                                        k6939
                                                                        x7036))))
                                                             g7035))))
                                                 g7034))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7033 (orig-- a b)))
                                                 g7033))))
                                           (*
                                            ((lambda (j6943 k6944 f6945)
                                               (letrec ((g7040
                                                         (lambda (g6941 g6942)
                                                           (letrec ((g7041
                                                                     (letrec ((x7042
                                                                               (letrec ((x7044
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6941))
                                                                                        (x7043
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6942)))
                                                                                 (f6945
                                                                                  x7044
                                                                                  x7043))))
                                                                       (number?/c
                                                                        j6943
                                                                        k6944
                                                                        x7042))))
                                                             g7041))))
                                                 g7040))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7039 (orig-* a b)))
                                                 g7039))))
                                           (/
                                            ((lambda (j6948 k6949 f6950)
                                               (letrec ((g7046
                                                         (lambda (g6946 g6947)
                                                           (letrec ((g7047
                                                                     (letrec ((x7048
                                                                               (letrec ((x7050
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6946))
                                                                                        (x7049
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6947)))
                                                                                 (f6950
                                                                                  x7050
                                                                                  x7049))))
                                                                       (number?/c
                                                                        j6948
                                                                        k6949
                                                                        x7048))))
                                                             g7047))))
                                                 g7046))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7045 (orig-/ a b)))
                                                 g7045))))
                                           (car
                                            ((lambda (j6952 k6953 f6954)
                                               (letrec ((g7052
                                                         (lambda (g6951)
                                                           (letrec ((g7053
                                                                     (letrec ((x7054
                                                                               (letrec ((x7055
                                                                                         (pair?/c
                                                                                          j6952
                                                                                          k6953
                                                                                          g6951)))
                                                                                 (f6954
                                                                                  x7055))))
                                                                       (any/c
                                                                        j6952
                                                                        k6953
                                                                        x7054))))
                                                             g7053))))
                                                 g7052))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7051 (orig-car p)))
                                                 g7051))))
                                           (cdr
                                            ((lambda (j6956 k6957 f6958)
                                               (letrec ((g7057
                                                         (lambda (g6955)
                                                           (letrec ((g7058
                                                                     (letrec ((x7059
                                                                               (letrec ((x7060
                                                                                         (pair?/c
                                                                                          j6956
                                                                                          k6957
                                                                                          g6955)))
                                                                                 (f6958
                                                                                  x7060))))
                                                                       (any/c
                                                                        j6956
                                                                        k6957
                                                                        x7059))))
                                                             g7058))))
                                                 g7057))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7056 (orig-cdr p)))
                                                 g7056))))
                                           (cons
                                            ((lambda (j6961 k6962 f6963)
                                               (letrec ((g7062
                                                         (lambda (g6959 g6960)
                                                           (letrec ((g7063
                                                                     (letrec ((x7064
                                                                               (letrec ((x7066
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6959))
                                                                                        (x7065
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6960)))
                                                                                 (f6963
                                                                                  x7066
                                                                                  x7065))))
                                                                       (pair?/c
                                                                        j6961
                                                                        k6962
                                                                        x7064))))
                                                             g7063))))
                                                 g7062))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7061 (cons a b)))
                                                 g7061))))
                                           (vector-ref
                                            ((lambda (j6965 k6966 f6967)
                                               (letrec ((g7068
                                                         (lambda (g6964)
                                                           (letrec ((g7069
                                                                     (letrec ((x7070
                                                                               (letrec ((x7071
                                                                                         (vector?/c
                                                                                          j6965
                                                                                          k6966
                                                                                          g6964)))
                                                                                 (f6967
                                                                                  x7071))))
                                                                       (integer?/c
                                                                        j6965
                                                                        k6966
                                                                        x7070))))
                                                             g7069))))
                                                 g7068))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7067
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7067))))
                                           (vector-set!
                                            ((lambda (j6970 k6971 f6972)
                                               (letrec ((g7073
                                                         (lambda (g6968 g6969)
                                                           (letrec ((g7074
                                                                     (letrec ((x7075
                                                                               (letrec ((x7077
                                                                                         (vector?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6968))
                                                                                        (x7076
                                                                                         (integer?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6969)))
                                                                                 (f6972
                                                                                  x7077
                                                                                  x7076))))
                                                                       (any/c
                                                                        j6970
                                                                        k6971
                                                                        x7075))))
                                                             g7074))))
                                                 g7073))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7072
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7072))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7078 #t)) g7078)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7079
                                                        (letrec ((x7080
                                                                  (letrec ((x7081
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7081))))
                                                          (cdr x7080))))
                                                g7079)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7082
                                                        (letrec ((x7085
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7085)))
                                                       (g7083
                                                        (letrec ((x7086
                                                                  (list? l)))
                                                          (assert x7086)))
                                                       (g7084
                                                        (letrec ((x-cnd7087
                                                                  (null? l)))
                                                          (if x-cnd7087
                                                            '()
                                                            (letrec ((x7090
                                                                      (letrec ((x7091
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7091)))
                                                                     (x7088
                                                                      (letrec ((x7089
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7089))))
                                                              (cons
                                                               x7090
                                                               x7088))))))
                                                g7084)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7092
                                                        (letrec ((x7093
                                                                  (car x)))
                                                          (cdr x7093))))
                                                g7092)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7094
                                                        (letrec ((x7095
                                                                  (letrec ((x7096
                                                                            (letrec ((x7097
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7097))))
                                                                    (cdr
                                                                     x7096))))
                                                          (car x7095))))
                                                g7094)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7098
                                                        (letrec ((x7099
                                                                  (letrec ((x7100
                                                                            (letrec ((x7101
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7101))))
                                                                    (car
                                                                     x7100))))
                                                          (cdr x7099))))
                                                g7098)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7102
                                                        (letrec ((x7105
                                                                  (string?
                                                                   filename)))
                                                          (assert x7105)))
                                                       (g7103
                                                        (letrec ((x7106
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7106)))
                                                       (g7104
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7107
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7108 res))
                                                            g7108))))
                                                g7104)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7109
                                                        (letrec ((x7110
                                                                  (letrec ((x7111
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7111))))
                                                          (car x7110))))
                                                g7109)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7112
                                                        (letrec ((x7113
                                                                  (letrec ((x7114
                                                                            (letrec ((x7115
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7115))))
                                                                    (car
                                                                     x7114))))
                                                          (cdr x7113))))
                                                g7112)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7116
                                                        (letrec ((x7118
                                                                  (list? l)))
                                                          (assert x7118)))
                                                       (g7117
                                                        (letrec ((x-cnd7119
                                                                  (null? l)))
                                                          (if x-cnd7119
                                                            #f
                                                            (letrec ((x-cnd7120
                                                                      (letrec ((x7121
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7121
                                                                         k))))
                                                              (if x-cnd7120
                                                                (car l)
                                                                (letrec ((x7122
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7122))))))))
                                                g7117)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7123
                                                        (letrec ((x7124
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7124))))
                                                g7123)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7125
                                                        (letrec ((x7127
                                                                  (list? l)))
                                                          (assert x7127)))
                                                       (g7126
                                                        (letrec ((x-cnd7128
                                                                  (null? l)))
                                                          (if x-cnd7128
                                                            ""
                                                            (letrec ((x7131
                                                                      (letrec ((x7132
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7132)))
                                                                     (x7129
                                                                      (letrec ((x7130
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7130))))
                                                              (string-append
                                                               x7131
                                                               x7129))))))
                                                g7126)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7133
                                                        (letrec ((x7136
                                                                  (char? c1)))
                                                          (assert x7136)))
                                                       (g7134
                                                        (letrec ((x7137
                                                                  (char? c2)))
                                                          (assert x7137)))
                                                       (g7135
                                                        (letrec ((val6887
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7138
                                                                    (if val6887
                                                                      val6887
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7138))))
                                                g7135)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7139
                                                        (letrec ((x7140
                                                                  (letrec ((x7141
                                                                            (letrec ((x7142
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7142))))
                                                                    (cdr
                                                                     x7141))))
                                                          (cdr x7140))))
                                                g7139)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7143
                                                        (letrec ((x7146
                                                                  (list? l)))
                                                          (assert x7146)))
                                                       (g7144
                                                        (letrec ((x7147
                                                                  (numer?)))
                                                          (assert x7147)))
                                                       (g7145
                                                        (letrec ((x-cnd7148
                                                                  (zero? k)))
                                                          (if x-cnd7148
                                                            x
                                                            (letrec ((x7150
                                                                      (cdr x))
                                                                     (x7149
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7150
                                                               x7149))))))
                                                g7145)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7151 '())) g7151)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7152
                                                        (letrec ((x-cnd7153
                                                                  (letrec ((x7154
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7154))))
                                                          (if x-cnd7153
                                                            (letrec ((x7155
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7155))
                                                            #f))))
                                                g7152)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7156
                                                        (letrec ((x7158
                                                                  (number? x)))
                                                          (assert x7158)))
                                                       (g7157
                                                        (letrec ((val6888
                                                                  (< x y)))
                                                          (letrec ((g7159
                                                                    (if val6888
                                                                      val6888
                                                                      (letrec ((val6889
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7160
                                                                                  (if val6889
                                                                                    val6889
                                                                                    #f)))
                                                                          g7160)))))
                                                            g7159))))
                                                g7157)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7161
                                                        (letrec ((val6890
                                                                  (letrec ((x7162
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7162
                                                                     9))))
                                                          (letrec ((g7163
                                                                    (if val6890
                                                                      val6890
                                                                      (letrec ((val6891
                                                                                (letrec ((x7164
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7164
                                                                                   10))))
                                                                        (letrec ((g7165
                                                                                  (if val6891
                                                                                    val6891
                                                                                    (letrec ((x7166
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7166
                                                                                       32)))))
                                                                          g7165)))))
                                                            g7163))))
                                                g7161)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7167
                                                        (letrec ((x7168
                                                                  (letrec ((x7169
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7169))))
                                                          (cdr x7168))))
                                                g7167)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7170
                                                        (letrec ((x7172
                                                                  (number? x)))
                                                          (assert x7172)))
                                                       (g7171 (> x 0)))
                                                g7171)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7173 #f)) g7173)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7174
                                                        (letrec ((x7175
                                                                  (cdr x)))
                                                          (cdr x7175))))
                                                g7174)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7176
                                                        (letrec ((x7178
                                                                  (number? x)))
                                                          (assert x7178)))
                                                       (g7177
                                                        (letrec ((x-cnd7179
                                                                  (< x 0)))
                                                          (if x-cnd7179
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7177)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7180
                                                        (letrec ((val6892
                                                                  (eq? a b)))
                                                          (letrec ((g7181
                                                                    (if val6892
                                                                      val6892
                                                                      (letrec ((val6893
                                                                                (letrec ((x7183
                                                                                          (null?
                                                                                           a))
                                                                                         (x7182
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7183
                                                                                       x7182))))
                                                                        (letrec ((g7184
                                                                                  (if val6893
                                                                                    val6893
                                                                                    (letrec ((val6894
                                                                                              (letrec ((x7187
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7186
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7185
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7187
                                                                                                     x7186
                                                                                                     x7185))))
                                                                                      (letrec ((g7188
                                                                                                (if val6894
                                                                                                  val6894
                                                                                                  (letrec ((val6895
                                                                                                            (letrec ((x7196
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7195
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7192
                                                                                                                      (letrec ((x7194
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7193
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7194
                                                                                                                         x7193)))
                                                                                                                     (x7189
                                                                                                                      (letrec ((x7191
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7190
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7191
                                                                                                                         x7190))))
                                                                                                              (and x7196
                                                                                                                   x7195
                                                                                                                   x7192
                                                                                                                   x7189))))
                                                                                                    (letrec ((g7197
                                                                                                              (if val6895
                                                                                                                val6895
                                                                                                                (letrec ((x7216
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7215
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7198
                                                                                                                          (letrec ((x7212
                                                                                                                                    (letrec ((x7213
                                                                                                                                              (letrec ((x7214
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7214))))
                                                                                                                                      (x7213)))
                                                                                                                                   (x7199
                                                                                                                                    (letrec ((x7210
                                                                                                                                              (letrec ((x7211
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7211
                                                                                                                                                 n)))
                                                                                                                                             (x7200
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7201
                                                                                                                                                                    (letrec ((x7208
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7202
                                                                                                                                                                              (letrec ((x7205
                                                                                                                                                                                        (letrec ((x7207
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7206
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7207
                                                                                                                                                                                           x7206)))
                                                                                                                                                                                       (x7203
                                                                                                                                                                                        (letrec ((x7204
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7204))))
                                                                                                                                                                                (and x7205
                                                                                                                                                                                     x7203))))
                                                                                                                                                                      (or x7208
                                                                                                                                                                          x7202))))
                                                                                                                                                            g7201))))
                                                                                                                                                (letrec ((g7209
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7209))))
                                                                                                                                      (and x7210
                                                                                                                                           x7200))))
                                                                                                                            (let x7212 x7199))))
                                                                                                                  (and x7216
                                                                                                                       x7215
                                                                                                                       x7198)))))
                                                                                                      g7197)))))
                                                                                        g7188)))))
                                                                          g7184)))))
                                                            g7181))))
                                                g7180)))
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
                                           (member
                                            (lambda (x l)
                                              (letrec ((g7488
                                                        (letrec ((x-cnd7489
                                                                  (empty? l)))
                                                          (if x-cnd7489
                                                            empty
                                                            (letrec ((x-cnd7490
                                                                      (letrec ((x7491
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x
                                                                         x7491))))
                                                              (if x-cnd7490
                                                                l
                                                                (letrec ((x7492
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   x
                                                                   x7492))))))))
                                                g7488))))
                                    (letrec ((g7493
                                              ((lambda (j6973 k6974 f6975)
                                                 (letrec ((g7494
                                                           (lambda ()
                                                             (letrec ((g7495
                                                                       (letrec ((x7497
                                                                                 (letrec ((x7499
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7498
                                                                                           (listof
                                                                                            any/c)))
                                                                                   (any/c
                                                                                    x7499
                                                                                    x7498)))
                                                                                (x7496
                                                                                 (f6975)))
                                                                         (x7497
                                                                          j6973
                                                                          k6974
                                                                          x7496))))
                                                               g7495))))
                                                   g7494))
                                               'module
                                               'importer
                                               member)))
                                      g7493))))
                          g6989))))
              g6987)))
    g6986))
