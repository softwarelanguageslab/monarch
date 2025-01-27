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
                                                                                                                (letrec ((x7213
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7212
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7198
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7199
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
                                                                                                                              g7199))))
                                                                                                                  (and x7213
                                                                                                                       x7212
                                                                                                                       x7198)))))
                                                                                                      g7197)))))
                                                                                        g7188)))))
                                                                          g7184)))))
                                                            g7181))))
                                                g7180)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7214
                                                        (letrec ((x7215
                                                                  (letrec ((x7216
                                                                            (letrec ((x7217
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7217))))
                                                                    (car
                                                                     x7216))))
                                                          (cdr x7215))))
                                                g7214)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7218
                                                        (letrec ((x7219
                                                                  (letrec ((x7220
                                                                            (letrec ((x7221
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7221))))
                                                                    (car
                                                                     x7220))))
                                                          (car x7219))))
                                                g7218)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7222 (eq? x y)))
                                                g7222)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7223
                                                        (letrec ((x7225
                                                                  (number? x)))
                                                          (assert x7225)))
                                                       (g7224
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7226
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7227
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7227)))))
                                                            g7226))))
                                                g7224)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7228
                                                        (letrec ((x7231
                                                                  (string?
                                                                   filename)))
                                                          (assert x7231)))
                                                       (g7229
                                                        (letrec ((x7232
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7232)))
                                                       (g7230
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7233
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7234 res))
                                                            g7234))))
                                                g7230)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7235 (cons x '())))
                                                g7235)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7236
                                                        (letrec ((x7239
                                                                  (char? c1)))
                                                          (assert x7239)))
                                                       (g7237
                                                        (letrec ((x7240
                                                                  (char? c2)))
                                                          (assert x7240)))
                                                       (g7238
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7241
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7241))))
                                                g7238)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7242
                                                        (letrec ((x7243
                                                                  (letrec ((x7244
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7244))))
                                                          (cdr x7243))))
                                                g7242)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7245
                                                        (letrec ((x7246
                                                                  (letrec ((x7247
                                                                            (letrec ((x7248
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7248))))
                                                                    (car
                                                                     x7247))))
                                                          (cdr x7246))))
                                                g7245)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7249
                                                        (letrec ((x7250
                                                                  (letrec ((x7251
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7251))))
                                                          (car x7250))))
                                                g7249)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7252
                                                        (letrec ((x7253
                                                                  (letrec ((x7254
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7254))))
                                                          (car x7253))))
                                                g7252)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7255
                                                        (letrec ((x7258
                                                                  (char? c1)))
                                                          (assert x7258)))
                                                       (g7256
                                                        (letrec ((x7259
                                                                  (char? c2)))
                                                          (assert x7259)))
                                                       (g7257
                                                        (letrec ((x7260
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7260))))
                                                g7257)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7261
                                                        (letrec ((x7262
                                                                  (letrec ((x7263
                                                                            (letrec ((x7264
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7264))))
                                                                    (car
                                                                     x7263))))
                                                          (car x7262))))
                                                g7261)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7265
                                                        (letrec ((x7267
                                                                  (number? x)))
                                                          (assert x7267)))
                                                       (g7266 (< x 0)))
                                                g7266)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7268 (memq e l)))
                                                g7268)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7269
                                                        (letrec ((x7270
                                                                  (letrec ((x7271
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7271))))
                                                          (car x7270))))
                                                g7269)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7272 '())) g7272)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7273
                                                        (letrec ((x7275
                                                                  (list? l)))
                                                          (assert x7275)))
                                                       (g7274
                                                        (letrec ((x-cnd7276
                                                                  (null? l)))
                                                          (if x-cnd7276
                                                            '()
                                                            (letrec ((x7279
                                                                      (letrec ((x7280
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7280)))
                                                                     (x7277
                                                                      (letrec ((x7278
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7278))))
                                                              (append
                                                               x7279
                                                               x7277))))))
                                                g7274)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7281
                                                        (letrec ((x7282
                                                                  (letrec ((x7283
                                                                            (letrec ((x7284
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7284))))
                                                                    (car
                                                                     x7283))))
                                                          (car x7282))))
                                                g7281)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7285
                                                        (letrec ((x7286
                                                                  (letrec ((x7287
                                                                            (letrec ((x7288
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7288))))
                                                                    (cdr
                                                                     x7287))))
                                                          (cdr x7286))))
                                                g7285)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7289
                                                        (letrec ((x7291
                                                                  (number? x)))
                                                          (assert x7291)))
                                                       (g7290
                                                        (letrec ((x7292
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7292))))
                                                g7290)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7293
                                                        (letrec ((x7294
                                                                  (letrec ((x7295
                                                                            (letrec ((x7296
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7296))))
                                                                    (car
                                                                     x7295))))
                                                          (car x7294))))
                                                g7293)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7297
                                                        (letrec ((x7300
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7300)))
                                                       (g7298
                                                        (letrec ((x7301
                                                                  (list?
                                                                   args)))
                                                          (assert x7301)))
                                                       (g7299
                                                        (if cnd
                                                          (letrec ((g7302
                                                                    (proc)))
                                                            g7302)
                                                          (if cnd
                                                            (letrec ((g7303
                                                                      (letrec ((x7304
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7304))))
                                                              g7303)
                                                            (if cnd
                                                              (letrec ((g7305
                                                                        (letrec ((x7307
                                                                                  (car
                                                                                   args))
                                                                                 (x7306
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7307
                                                                           x7306))))
                                                                g7305)
                                                              (if cnd
                                                                (letrec ((g7308
                                                                          (letrec ((x7311
                                                                                    (car
                                                                                     args))
                                                                                   (x7310
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7309
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7311
                                                                             x7310
                                                                             x7309))))
                                                                  g7308)
                                                                (if cnd
                                                                  (letrec ((g7312
                                                                            (letrec ((x7316
                                                                                      (car
                                                                                       args))
                                                                                     (x7315
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7314
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7313
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7316
                                                                               x7315
                                                                               x7314
                                                                               x7313))))
                                                                    g7312)
                                                                  (if cnd
                                                                    (letrec ((g7317
                                                                              (letrec ((x7323
                                                                                        (car
                                                                                         args))
                                                                                       (x7322
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7321
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7320
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7318
                                                                                        (letrec ((x7319
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7319))))
                                                                                (proc
                                                                                 x7323
                                                                                 x7322
                                                                                 x7321
                                                                                 x7320
                                                                                 x7318))))
                                                                      g7317)
                                                                    (if cnd
                                                                      (letrec ((g7324
                                                                                (letrec ((x7332
                                                                                          (car
                                                                                           args))
                                                                                         (x7331
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7330
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7329
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7327
                                                                                          (letrec ((x7328
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7328)))
                                                                                         (x7325
                                                                                          (letrec ((x7326
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7326))))
                                                                                  (proc
                                                                                   x7332
                                                                                   x7331
                                                                                   x7330
                                                                                   x7329
                                                                                   x7327
                                                                                   x7325))))
                                                                        g7324)
                                                                      (if cnd
                                                                        (letrec ((g7333
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
                                                                                               x7339)))
                                                                                           (x7336
                                                                                            (letrec ((x7337
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7337)))
                                                                                           (x7334
                                                                                            (letrec ((x7335
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7335))))
                                                                                    (proc
                                                                                     x7343
                                                                                     x7342
                                                                                     x7341
                                                                                     x7340
                                                                                     x7338
                                                                                     x7336
                                                                                     x7334))))
                                                                          g7333)
                                                                        (letrec ((g7344
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7344)))))))))))
                                                g7299)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7345
                                                        (letrec ((x7347
                                                                  (list? l)))
                                                          (assert x7347)))
                                                       (g7346
                                                        (letrec ((x-cnd7348
                                                                  (null? l)))
                                                          (if x-cnd7348
                                                            #f
                                                            (letrec ((x-cnd7349
                                                                      (letrec ((x7350
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7350
                                                                         e))))
                                                              (if x-cnd7349
                                                                l
                                                                (letrec ((x7351
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7351))))))))
                                                g7346)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7352
                                                        (letrec ((x7353
                                                                  (letrec ((x7354
                                                                            (letrec ((x7355
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7355))))
                                                                    (cdr
                                                                     x7354))))
                                                          (cdr x7353))))
                                                g7352)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7356
                                                        (letrec ((x7357
                                                                  (letrec ((x7358
                                                                            (letrec ((x7359
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7359))))
                                                                    (cdr
                                                                     x7358))))
                                                          (car x7357))))
                                                g7356)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7360 (random 42)))
                                                g7360)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7361
                                                        (letrec ((x7363
                                                                  (number? x)))
                                                          (assert x7363)))
                                                       (g7362 (= x 0)))
                                                g7362)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7364
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7365
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7365))))
                                                g7364)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7366
                                                        (letrec ((x7367
                                                                  (cdr x)))
                                                          (car x7367))))
                                                g7366)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7368
                                                        (letrec ((val6900
                                                                  (letrec ((x7371
                                                                            (pair?
                                                                             l))
                                                                           (x7369
                                                                            (letrec ((x7370
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7370))))
                                                                    (and x7371
                                                                         x7369))))
                                                          (letrec ((g7372
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7372))))
                                                g7368)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7373
                                                        (letrec ((x7374
                                                                  (letrec ((x7375
                                                                            (letrec ((x7376
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7376))))
                                                                    (cdr
                                                                     x7375))))
                                                          (cdr x7374))))
                                                g7373)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7377
                                                        (letrec ((x-cnd7378
                                                                  (letrec ((x7379
                                                                            #\0))
                                                                    (char<=?
                                                                     x7379
                                                                     c))))
                                                          (if x-cnd7378
                                                            (letrec ((x7380
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7380))
                                                            #f))))
                                                g7377)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7381
                                                        (letrec ((x7383
                                                                  (list? l)))
                                                          (assert x7383)))
                                                       (g7382
                                                        (letrec ((x-cnd7384
                                                                  (null? l)))
                                                          (if x-cnd7384
                                                            #f
                                                            (letrec ((x-cnd7385
                                                                      (letrec ((x7386
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7386
                                                                         k))))
                                                              (if x-cnd7385
                                                                (car l)
                                                                (letrec ((x7387
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7387))))))))
                                                g7382)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7388 (if x #f #t)))
                                                g7388)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7389 (append l1 l2)))
                                                g7389)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7390
                                                        (letrec ((x7392
                                                                  (list? l)))
                                                          (assert x7392)))
                                                       (g7391
                                                        (letrec ((x-cnd7393
                                                                  (null? l)))
                                                          (if x-cnd7393
                                                            #f
                                                            (letrec ((x-cnd7394
                                                                      (letrec ((x7395
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7395
                                                                         e))))
                                                              (if x-cnd7394
                                                                l
                                                                (letrec ((x7396
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7396))))))))
                                                g7391)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7397
                                                        (letrec ((x7398
                                                                  (letrec ((x7399
                                                                            (letrec ((x7400
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7400))))
                                                                    (cdr
                                                                     x7399))))
                                                          (car x7398))))
                                                g7397)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7401
                                                        (letrec ((x7403
                                                                  (list? l)))
                                                          (assert x7403)))
                                                       (g7402
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7404
                                                                              (letrec ((x-cnd7405
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7405
                                                                                  0
                                                                                  (letrec ((x7406
                                                                                            (letrec ((x7407
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7407))))
                                                                                    (+
                                                                                     1
                                                                                     x7406))))))
                                                                      g7404))))
                                                          (letrec ((g7408
                                                                    (rec l)))
                                                            g7408))))
                                                g7402)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7409
                                                        (letrec ((x7412
                                                                  (char? c1)))
                                                          (assert x7412)))
                                                       (g7410
                                                        (letrec ((x7413
                                                                  (char? c2)))
                                                          (assert x7413)))
                                                       (g7411
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7414
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7414))))
                                                g7411)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7415
                                                        (letrec ((x7416
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7416))))
                                                g7415)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7417
                                                        (letrec ((x7418
                                                                  (letrec ((x7419
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7419))))
                                                          (cdr x7418))))
                                                g7417)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7420
                                                        (letrec ((x7422
                                                                  (list? l)))
                                                          (assert x7422)))
                                                       (g7421
                                                        (letrec ((x-cnd7423
                                                                  (null? l)))
                                                          (if x-cnd7423
                                                            #f
                                                            (letrec ((x-cnd7424
                                                                      (letrec ((x7425
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7425
                                                                         k))))
                                                              (if x-cnd7424
                                                                (car l)
                                                                (letrec ((x7426
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7426))))))))
                                                g7421)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7427
                                                        (letrec ((x7428
                                                                  (car x)))
                                                          (car x7428))))
                                                g7427)))
                                           (char>?
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
                                                        (letrec ((x7434
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7434))))
                                                g7431)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7435
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7436
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7436))))
                                                g7435)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7437
                                                        (letrec ((x7440
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7440)))
                                                       (g7438
                                                        (letrec ((x7441
                                                                  (list? l)))
                                                          (assert x7441)))
                                                       (g7439
                                                        (letrec ((x-cnd7442
                                                                  (null? l)))
                                                          (if x-cnd7442
                                                            #t
                                                            (letrec ((x-cnd7443
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7443
                                                                (letrec ((g7444
                                                                          (letrec ((x7446
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7446)))
                                                                         (g7445
                                                                          (letrec ((x7447
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7447))))
                                                                  g7445)
                                                                '()))))))
                                                g7439)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7448
                                                        (letrec ((x7450
                                                                  (number? x)))
                                                          (assert x7450)))
                                                       (g7449
                                                        (letrec ((x-cnd7451
                                                                  (< x 0)))
                                                          (if x-cnd7451
                                                            (- 0 x)
                                                            x))))
                                                g7449)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7452
                                                        (letrec ((x7455
                                                                  (char? c1)))
                                                          (assert x7455)))
                                                       (g7453
                                                        (letrec ((x7456
                                                                  (char? c2)))
                                                          (assert x7456)))
                                                       (g7454
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7457
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7457))))
                                                g7454)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7458
                                                        (letrec ((x7459
                                                                  (letrec ((x7460
                                                                            (letrec ((x7461
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7461))))
                                                                    (cdr
                                                                     x7460))))
                                                          (car x7459))))
                                                g7458)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7462 #f)) g7462)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7463
                                                        (letrec ((x7465
                                                                  (letrec ((x7466
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7466)))
                                                                 (x7464
                                                                  (gcd m n)))
                                                          (/ x7465 x7464))))
                                                g7463)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7467
                                                        (letrec ((x7469
                                                                  (number? x)))
                                                          (assert x7469)))
                                                       (g7468
                                                        (letrec ((x7470
                                                                  (<= x y)))
                                                          (not x7470))))
                                                g7468)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7471
                                                        (letrec ((x7475
                                                                  (list? l)))
                                                          (assert x7475)))
                                                       (g7472
                                                        (letrec ((x7476
                                                                  (number?
                                                                   index)))
                                                          (assert x7476)))
                                                       (g7473
                                                        (letrec ((x7477
                                                                  (letrec ((x7478
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7478))))
                                                          (assert x7477)))
                                                       (g7474
                                                        (letrec ((x-cnd7479
                                                                  (= index 0)))
                                                          (if x-cnd7479
                                                            (car l)
                                                            (letrec ((x7481
                                                                      (cdr l))
                                                                     (x7480
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7481
                                                               x7480))))))
                                                g7474)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7482
                                                        (letrec ((x-cnd7483
                                                                  (= b 0)))
                                                          (if x-cnd7483
                                                            a
                                                            (letrec ((x7484
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7484))))))
                                                g7482)))
                                           (member
                                            (lambda (x l)
                                              (letrec ((g7485
                                                        (letrec ((x-cnd7486
                                                                  (empty? l)))
                                                          (if x-cnd7486
                                                            empty
                                                            (letrec ((x-cnd7487
                                                                      (letrec ((x7488
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x
                                                                         x7488))))
                                                              (if x-cnd7487
                                                                l
                                                                (letrec ((x7489
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   x
                                                                   x7489))))))))
                                                g7485))))
                                    (letrec ((g7490
                                              ((lambda (j6973 k6974 f6975)
                                                 (letrec ((g7491
                                                           (lambda ()
                                                             (letrec ((g7492
                                                                       (letrec ((x7494
                                                                                 (letrec ((x7496
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7495
                                                                                           (listof
                                                                                            any/c)))
                                                                                   (any/c
                                                                                    x7496
                                                                                    x7495)))
                                                                                (x7493
                                                                                 (f6975)))
                                                                         (x7494
                                                                          j6973
                                                                          k6974
                                                                          x7493))))
                                                               g7492))))
                                                   g7491))
                                               'module
                                               'importer
                                               member)))
                                      g7490))))
                          g6989))))
              g6987)))
    g6986))
