(letrec ((any? (lambda (v) (letrec ((g6980 #t)) g6980)))
         (meta (lambda (v) (letrec ((g6981 v)) g6981)))
         (member
          (lambda (v lst)
            (letrec ((g6982
                      (letrec ((g6983
                                (letrec ((x-e6984 lst))
                                  (match
                                   x-e6984
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd6985 (eq? v v1)))
                                       (if x-cnd6985 #t (member v vs)))))))))
                        g6983)))
              g6982)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g6986 (lambda (v) (letrec ((g6987 v)) g6987)))) g6986)))
         (nonzero?
          (lambda (v)
            (letrec ((g6988 (letrec ((x6989 (= v 0))) (not x6989)))) g6988))))
  (letrec ((g6990
            (letrec ((g6991
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g6992 '())
                                 (g6993
                                  (letrec ((real/c
                                            (lambda (g6904 g6905 g6906)
                                              (letrec ((g6994
                                                        (letrec ((x-cnd6995
                                                                  (real?
                                                                   g6906)))
                                                          (if x-cnd6995
                                                            g6906
                                                            (blame
                                                             g6904
                                                             'real?)))))
                                                g6994)))
                                           (boolean?/c
                                            (lambda (g6907 g6908 g6909)
                                              (letrec ((g6996
                                                        (letrec ((x-cnd6997
                                                                  (boolean?
                                                                   g6909)))
                                                          (if x-cnd6997
                                                            g6909
                                                            (blame
                                                             g6907
                                                             'boolean?)))))
                                                g6996)))
                                           (number?/c
                                            (lambda (g6910 g6911 g6912)
                                              (letrec ((g6998
                                                        (letrec ((x-cnd6999
                                                                  (number?
                                                                   g6912)))
                                                          (if x-cnd6999
                                                            g6912
                                                            (blame
                                                             g6910
                                                             'number?)))))
                                                g6998)))
                                           (any/c
                                            (lambda (g6913 g6914 g6915)
                                              (letrec ((g7000
                                                        (letrec ((x-cnd7001
                                                                  ((lambda (v)
                                                                     (letrec ((g7002
                                                                               #t))
                                                                       g7002))
                                                                   g6915)))
                                                          (if x-cnd7001
                                                            g6915
                                                            (blame
                                                             g6913
                                                             '(lambda (v)
                                                                #t))))))
                                                g7000)))
                                           (any?/c
                                            (lambda (g6916 g6917 g6918)
                                              (letrec ((g7003
                                                        (letrec ((x-cnd7004
                                                                  ((lambda (v)
                                                                     (letrec ((g7005
                                                                               #t))
                                                                       g7005))
                                                                   g6918)))
                                                          (if x-cnd7004
                                                            g6918
                                                            (blame
                                                             g6916
                                                             '(lambda (v)
                                                                #t))))))
                                                g7003)))
                                           (cons?/c
                                            (lambda (g6919 g6920 g6921)
                                              (letrec ((g7006
                                                        (letrec ((x-cnd7007
                                                                  (pair?
                                                                   g6921)))
                                                          (if x-cnd7007
                                                            g6921
                                                            (blame
                                                             g6919
                                                             'pair?)))))
                                                g7006)))
                                           (pair?/c
                                            (lambda (g6922 g6923 g6924)
                                              (letrec ((g7008
                                                        (letrec ((x-cnd7009
                                                                  (pair?
                                                                   g6924)))
                                                          (if x-cnd7009
                                                            g6924
                                                            (blame
                                                             g6922
                                                             'pair?)))))
                                                g7008)))
                                           (integer?/c
                                            (lambda (g6925 g6926 g6927)
                                              (letrec ((g7010
                                                        (letrec ((x-cnd7011
                                                                  (integer?
                                                                   g6927)))
                                                          (if x-cnd7011
                                                            g6927
                                                            (blame
                                                             g6925
                                                             'integer?)))))
                                                g7010)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7012
                                                        (lambda (k j v)
                                                          (letrec ((g7013
                                                                    (letrec ((x-cnd7014
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7014
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7013))))
                                                g7012)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7015
                                                        (lambda (k j v)
                                                          (letrec ((g7016
                                                                    (letrec ((x-cnd7017
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7017
                                                                        '()
                                                                        (letrec ((x7021
                                                                                  (letrec ((x7022
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7022)))
                                                                                 (x7018
                                                                                  (letrec ((x7020
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7019
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7020
                                                                                     k
                                                                                     j
                                                                                     x7019))))
                                                                          (cons
                                                                           x7021
                                                                           x7018))))))
                                                            g7016))))
                                                g7015)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7023 #t)) g7023)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7024
                                                        (letrec ((x7025
                                                                  (= v 0)))
                                                          (not x7025))))
                                                g7024)))
                                           (nonzero?/c
                                            (lambda (g6928 g6929 g6930)
                                              (letrec ((g7026
                                                        (letrec ((x-cnd7027
                                                                  ((lambda (v)
                                                                     (letrec ((g7028
                                                                               (letrec ((x7029
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7029))))
                                                                       g7028))
                                                                   g6930)))
                                                          (if x-cnd7027
                                                            g6930
                                                            (blame
                                                             g6928
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7026)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7030 v)) g7030)))
                                           (+
                                            ((lambda (j6933 k6934 f6935)
                                               (letrec ((g7032
                                                         (lambda (g6931 g6932)
                                                           (letrec ((g7033
                                                                     (letrec ((x7034
                                                                               (letrec ((x7036
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6931))
                                                                                        (x7035
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6932)))
                                                                                 (f6935
                                                                                  x7036
                                                                                  x7035))))
                                                                       (number?/c
                                                                        j6933
                                                                        k6934
                                                                        x7034))))
                                                             g7033))))
                                                 g7032))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7031 (orig-+ a b)))
                                                 g7031))))
                                           (-
                                            ((lambda (j6938 k6939 f6940)
                                               (letrec ((g7038
                                                         (lambda (g6936 g6937)
                                                           (letrec ((g7039
                                                                     (letrec ((x7040
                                                                               (letrec ((x7042
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6936))
                                                                                        (x7041
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6937)))
                                                                                 (f6940
                                                                                  x7042
                                                                                  x7041))))
                                                                       (number?/c
                                                                        j6938
                                                                        k6939
                                                                        x7040))))
                                                             g7039))))
                                                 g7038))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7037 (orig-- a b)))
                                                 g7037))))
                                           (*
                                            ((lambda (j6943 k6944 f6945)
                                               (letrec ((g7044
                                                         (lambda (g6941 g6942)
                                                           (letrec ((g7045
                                                                     (letrec ((x7046
                                                                               (letrec ((x7048
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6941))
                                                                                        (x7047
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6942)))
                                                                                 (f6945
                                                                                  x7048
                                                                                  x7047))))
                                                                       (number?/c
                                                                        j6943
                                                                        k6944
                                                                        x7046))))
                                                             g7045))))
                                                 g7044))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7043 (orig-* a b)))
                                                 g7043))))
                                           (/
                                            ((lambda (j6948 k6949 f6950)
                                               (letrec ((g7050
                                                         (lambda (g6946 g6947)
                                                           (letrec ((g7051
                                                                     (letrec ((x7052
                                                                               (letrec ((x7054
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6946))
                                                                                        (x7053
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6947)))
                                                                                 (f6950
                                                                                  x7054
                                                                                  x7053))))
                                                                       (number?/c
                                                                        j6948
                                                                        k6949
                                                                        x7052))))
                                                             g7051))))
                                                 g7050))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7049 (orig-/ a b)))
                                                 g7049))))
                                           (car
                                            ((lambda (j6952 k6953 f6954)
                                               (letrec ((g7056
                                                         (lambda (g6951)
                                                           (letrec ((g7057
                                                                     (letrec ((x7058
                                                                               (letrec ((x7059
                                                                                         (pair?/c
                                                                                          j6952
                                                                                          k6953
                                                                                          g6951)))
                                                                                 (f6954
                                                                                  x7059))))
                                                                       (any/c
                                                                        j6952
                                                                        k6953
                                                                        x7058))))
                                                             g7057))))
                                                 g7056))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7055 (orig-car p)))
                                                 g7055))))
                                           (cdr
                                            ((lambda (j6956 k6957 f6958)
                                               (letrec ((g7061
                                                         (lambda (g6955)
                                                           (letrec ((g7062
                                                                     (letrec ((x7063
                                                                               (letrec ((x7064
                                                                                         (pair?/c
                                                                                          j6956
                                                                                          k6957
                                                                                          g6955)))
                                                                                 (f6958
                                                                                  x7064))))
                                                                       (any/c
                                                                        j6956
                                                                        k6957
                                                                        x7063))))
                                                             g7062))))
                                                 g7061))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7060 (orig-cdr p)))
                                                 g7060))))
                                           (cons
                                            ((lambda (j6961 k6962 f6963)
                                               (letrec ((g7066
                                                         (lambda (g6959 g6960)
                                                           (letrec ((g7067
                                                                     (letrec ((x7068
                                                                               (letrec ((x7070
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6959))
                                                                                        (x7069
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6960)))
                                                                                 (f6963
                                                                                  x7070
                                                                                  x7069))))
                                                                       (pair?/c
                                                                        j6961
                                                                        k6962
                                                                        x7068))))
                                                             g7067))))
                                                 g7066))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7065 (cons a b)))
                                                 g7065))))
                                           (vector-ref
                                            ((lambda (j6965 k6966 f6967)
                                               (letrec ((g7072
                                                         (lambda (g6964)
                                                           (letrec ((g7073
                                                                     (letrec ((x7074
                                                                               (letrec ((x7075
                                                                                         (vector?/c
                                                                                          j6965
                                                                                          k6966
                                                                                          g6964)))
                                                                                 (f6967
                                                                                  x7075))))
                                                                       (integer?/c
                                                                        j6965
                                                                        k6966
                                                                        x7074))))
                                                             g7073))))
                                                 g7072))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7071
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7071))))
                                           (vector-set!
                                            ((lambda (j6970 k6971 f6972)
                                               (letrec ((g7077
                                                         (lambda (g6968 g6969)
                                                           (letrec ((g7078
                                                                     (letrec ((x7079
                                                                               (letrec ((x7081
                                                                                         (vector?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6968))
                                                                                        (x7080
                                                                                         (integer?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6969)))
                                                                                 (f6972
                                                                                  x7081
                                                                                  x7080))))
                                                                       (any/c
                                                                        j6970
                                                                        k6971
                                                                        x7079))))
                                                             g7078))))
                                                 g7077))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7076
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7076))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7082 #t)) g7082)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7083
                                                        (letrec ((x7084
                                                                  (letrec ((x7085
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7085))))
                                                          (cdr x7084))))
                                                g7083)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7086
                                                        (letrec ((x7089
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7089)))
                                                       (g7087
                                                        (letrec ((x7090
                                                                  (list? l)))
                                                          (assert x7090)))
                                                       (g7088
                                                        (letrec ((x-cnd7091
                                                                  (null? l)))
                                                          (if x-cnd7091
                                                            '()
                                                            (letrec ((x7094
                                                                      (letrec ((x7095
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7095)))
                                                                     (x7092
                                                                      (letrec ((x7093
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7093))))
                                                              (cons
                                                               x7094
                                                               x7092))))))
                                                g7088)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7096
                                                        (letrec ((x7097
                                                                  (car x)))
                                                          (cdr x7097))))
                                                g7096)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7098
                                                        (letrec ((x7099
                                                                  (letrec ((x7100
                                                                            (letrec ((x7101
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7101))))
                                                                    (cdr
                                                                     x7100))))
                                                          (car x7099))))
                                                g7098)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7102
                                                        (letrec ((x7103
                                                                  (letrec ((x7104
                                                                            (letrec ((x7105
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7105))))
                                                                    (car
                                                                     x7104))))
                                                          (cdr x7103))))
                                                g7102)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7106
                                                        (letrec ((x7109
                                                                  (string?
                                                                   filename)))
                                                          (assert x7109)))
                                                       (g7107
                                                        (letrec ((x7110
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7110)))
                                                       (g7108
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7111
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7112 res))
                                                            g7112))))
                                                g7108)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7113
                                                        (letrec ((x7114
                                                                  (letrec ((x7115
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7115))))
                                                          (car x7114))))
                                                g7113)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7116
                                                        (letrec ((x7117
                                                                  (letrec ((x7118
                                                                            (letrec ((x7119
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7119))))
                                                                    (car
                                                                     x7118))))
                                                          (cdr x7117))))
                                                g7116)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7120
                                                        (letrec ((x7122
                                                                  (list? l)))
                                                          (assert x7122)))
                                                       (g7121
                                                        (letrec ((x-cnd7123
                                                                  (null? l)))
                                                          (if x-cnd7123
                                                            #f
                                                            (letrec ((x-cnd7124
                                                                      (letrec ((x7125
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7125
                                                                         k))))
                                                              (if x-cnd7124
                                                                (car l)
                                                                (letrec ((x7126
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7126))))))))
                                                g7121)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7127
                                                        (letrec ((x7128
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7128))))
                                                g7127)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7129
                                                        (letrec ((x7131
                                                                  (list? l)))
                                                          (assert x7131)))
                                                       (g7130
                                                        (letrec ((x-cnd7132
                                                                  (null? l)))
                                                          (if x-cnd7132
                                                            ""
                                                            (letrec ((x7135
                                                                      (letrec ((x7136
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7136)))
                                                                     (x7133
                                                                      (letrec ((x7134
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7134))))
                                                              (string-append
                                                               x7135
                                                               x7133))))))
                                                g7130)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7137
                                                        (letrec ((x7140
                                                                  (char? c1)))
                                                          (assert x7140)))
                                                       (g7138
                                                        (letrec ((x7141
                                                                  (char? c2)))
                                                          (assert x7141)))
                                                       (g7139
                                                        (letrec ((val6887
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7142
                                                                    (if val6887
                                                                      val6887
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7142))))
                                                g7139)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7143
                                                        (letrec ((x7144
                                                                  (letrec ((x7145
                                                                            (letrec ((x7146
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7146))))
                                                                    (cdr
                                                                     x7145))))
                                                          (cdr x7144))))
                                                g7143)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7147
                                                        (letrec ((x7150
                                                                  (list? l)))
                                                          (assert x7150)))
                                                       (g7148
                                                        (letrec ((x7151
                                                                  (numer?)))
                                                          (assert x7151)))
                                                       (g7149
                                                        (letrec ((x-cnd7152
                                                                  (zero? k)))
                                                          (if x-cnd7152
                                                            x
                                                            (letrec ((x7154
                                                                      (cdr x))
                                                                     (x7153
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7154
                                                               x7153))))))
                                                g7149)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7155 '())) g7155)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7156
                                                        (letrec ((x-cnd7157
                                                                  (letrec ((x7158
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7158))))
                                                          (if x-cnd7157
                                                            (letrec ((x7159
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7159))
                                                            #f))))
                                                g7156)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7160
                                                        (letrec ((x7162
                                                                  (number? x)))
                                                          (assert x7162)))
                                                       (g7161
                                                        (letrec ((val6888
                                                                  (< x y)))
                                                          (letrec ((g7163
                                                                    (if val6888
                                                                      val6888
                                                                      (letrec ((val6889
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7164
                                                                                  (if val6889
                                                                                    val6889
                                                                                    #f)))
                                                                          g7164)))))
                                                            g7163))))
                                                g7161)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7165
                                                        (letrec ((val6890
                                                                  (letrec ((x7166
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7166
                                                                     9))))
                                                          (letrec ((g7167
                                                                    (if val6890
                                                                      val6890
                                                                      (letrec ((val6891
                                                                                (letrec ((x7168
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7168
                                                                                   10))))
                                                                        (letrec ((g7169
                                                                                  (if val6891
                                                                                    val6891
                                                                                    (letrec ((x7170
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7170
                                                                                       32)))))
                                                                          g7169)))))
                                                            g7167))))
                                                g7165)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7171
                                                        (letrec ((x7172
                                                                  (letrec ((x7173
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7173))))
                                                          (cdr x7172))))
                                                g7171)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7174
                                                        (letrec ((x7176
                                                                  (number? x)))
                                                          (assert x7176)))
                                                       (g7175 (> x 0)))
                                                g7175)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7177 #f)) g7177)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7178
                                                        (letrec ((x7179
                                                                  (cdr x)))
                                                          (cdr x7179))))
                                                g7178)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7180
                                                        (letrec ((x7182
                                                                  (number? x)))
                                                          (assert x7182)))
                                                       (g7181
                                                        (letrec ((x-cnd7183
                                                                  (< x 0)))
                                                          (if x-cnd7183
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7181)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7184
                                                        (letrec ((val6892
                                                                  (eq? a b)))
                                                          (letrec ((g7185
                                                                    (if val6892
                                                                      val6892
                                                                      (letrec ((val6893
                                                                                (letrec ((x7187
                                                                                          (null?
                                                                                           a))
                                                                                         (x7186
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7187
                                                                                       x7186))))
                                                                        (letrec ((g7188
                                                                                  (if val6893
                                                                                    val6893
                                                                                    (letrec ((val6894
                                                                                              (letrec ((x7191
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7190
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7189
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7191
                                                                                                     x7190
                                                                                                     x7189))))
                                                                                      (letrec ((g7192
                                                                                                (if val6894
                                                                                                  val6894
                                                                                                  (letrec ((val6895
                                                                                                            (letrec ((x7200
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7199
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7196
                                                                                                                      (letrec ((x7198
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7197
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7198
                                                                                                                         x7197)))
                                                                                                                     (x7193
                                                                                                                      (letrec ((x7195
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7194
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7195
                                                                                                                         x7194))))
                                                                                                              (and x7200
                                                                                                                   x7199
                                                                                                                   x7196
                                                                                                                   x7193))))
                                                                                                    (letrec ((g7201
                                                                                                              (if val6895
                                                                                                                val6895
                                                                                                                (letrec ((x7220
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7219
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7202
                                                                                                                          (letrec ((x7216
                                                                                                                                    (letrec ((x7217
                                                                                                                                              (letrec ((x7218
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7218))))
                                                                                                                                      (x7217)))
                                                                                                                                   (x7203
                                                                                                                                    (letrec ((x7214
                                                                                                                                              (letrec ((x7215
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7215
                                                                                                                                                 n)))
                                                                                                                                             (x7204
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7205
                                                                                                                                                                    (letrec ((x7212
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7206
                                                                                                                                                                              (letrec ((x7209
                                                                                                                                                                                        (letrec ((x7211
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7210
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7211
                                                                                                                                                                                           x7210)))
                                                                                                                                                                                       (x7207
                                                                                                                                                                                        (letrec ((x7208
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7208))))
                                                                                                                                                                                (and x7209
                                                                                                                                                                                     x7207))))
                                                                                                                                                                      (or x7212
                                                                                                                                                                          x7206))))
                                                                                                                                                            g7205))))
                                                                                                                                                (letrec ((g7213
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7213))))
                                                                                                                                      (and x7214
                                                                                                                                           x7204))))
                                                                                                                            (let x7216 x7203))))
                                                                                                                  (and x7220
                                                                                                                       x7219
                                                                                                                       x7202)))))
                                                                                                      g7201)))))
                                                                                        g7192)))))
                                                                          g7188)))))
                                                            g7185))))
                                                g7184)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7221
                                                        (letrec ((x7222
                                                                  (letrec ((x7223
                                                                            (letrec ((x7224
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7224))))
                                                                    (car
                                                                     x7223))))
                                                          (cdr x7222))))
                                                g7221)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7225
                                                        (letrec ((x7226
                                                                  (letrec ((x7227
                                                                            (letrec ((x7228
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7228))))
                                                                    (car
                                                                     x7227))))
                                                          (car x7226))))
                                                g7225)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7229 (eq? x y)))
                                                g7229)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7230
                                                        (letrec ((x7232
                                                                  (number? x)))
                                                          (assert x7232)))
                                                       (g7231
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7233
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7234
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7234)))))
                                                            g7233))))
                                                g7231)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7235
                                                        (letrec ((x7238
                                                                  (string?
                                                                   filename)))
                                                          (assert x7238)))
                                                       (g7236
                                                        (letrec ((x7239
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7239)))
                                                       (g7237
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7240
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7241 res))
                                                            g7241))))
                                                g7237)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7242 (cons x '())))
                                                g7242)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7243
                                                        (letrec ((x7246
                                                                  (char? c1)))
                                                          (assert x7246)))
                                                       (g7244
                                                        (letrec ((x7247
                                                                  (char? c2)))
                                                          (assert x7247)))
                                                       (g7245
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7248
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7248))))
                                                g7245)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7249
                                                        (letrec ((x7250
                                                                  (letrec ((x7251
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7251))))
                                                          (cdr x7250))))
                                                g7249)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7252
                                                        (letrec ((x7253
                                                                  (letrec ((x7254
                                                                            (letrec ((x7255
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7255))))
                                                                    (car
                                                                     x7254))))
                                                          (cdr x7253))))
                                                g7252)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7256
                                                        (letrec ((x7257
                                                                  (letrec ((x7258
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7258))))
                                                          (car x7257))))
                                                g7256)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7259
                                                        (letrec ((x7260
                                                                  (letrec ((x7261
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7261))))
                                                          (car x7260))))
                                                g7259)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7262
                                                        (letrec ((x7265
                                                                  (char? c1)))
                                                          (assert x7265)))
                                                       (g7263
                                                        (letrec ((x7266
                                                                  (char? c2)))
                                                          (assert x7266)))
                                                       (g7264
                                                        (letrec ((x7267
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7267))))
                                                g7264)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7268
                                                        (letrec ((x7269
                                                                  (letrec ((x7270
                                                                            (letrec ((x7271
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7271))))
                                                                    (car
                                                                     x7270))))
                                                          (car x7269))))
                                                g7268)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7272
                                                        (letrec ((x7274
                                                                  (number? x)))
                                                          (assert x7274)))
                                                       (g7273 (< x 0)))
                                                g7273)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7275 (memq e l)))
                                                g7275)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7276
                                                        (letrec ((x7277
                                                                  (letrec ((x7278
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7278))))
                                                          (car x7277))))
                                                g7276)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7279 '())) g7279)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7280
                                                        (letrec ((x7282
                                                                  (list? l)))
                                                          (assert x7282)))
                                                       (g7281
                                                        (letrec ((x-cnd7283
                                                                  (null? l)))
                                                          (if x-cnd7283
                                                            '()
                                                            (letrec ((x7286
                                                                      (letrec ((x7287
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7287)))
                                                                     (x7284
                                                                      (letrec ((x7285
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7285))))
                                                              (append
                                                               x7286
                                                               x7284))))))
                                                g7281)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7288
                                                        (letrec ((x7289
                                                                  (letrec ((x7290
                                                                            (letrec ((x7291
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7291))))
                                                                    (car
                                                                     x7290))))
                                                          (car x7289))))
                                                g7288)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7292
                                                        (letrec ((x7293
                                                                  (letrec ((x7294
                                                                            (letrec ((x7295
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7295))))
                                                                    (cdr
                                                                     x7294))))
                                                          (cdr x7293))))
                                                g7292)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7296
                                                        (letrec ((x7298
                                                                  (number? x)))
                                                          (assert x7298)))
                                                       (g7297
                                                        (letrec ((x7299
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7299))))
                                                g7297)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7300
                                                        (letrec ((x7301
                                                                  (letrec ((x7302
                                                                            (letrec ((x7303
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7303))))
                                                                    (car
                                                                     x7302))))
                                                          (car x7301))))
                                                g7300)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7304
                                                        (letrec ((x7307
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7307)))
                                                       (g7305
                                                        (letrec ((x7308
                                                                  (list?
                                                                   args)))
                                                          (assert x7308)))
                                                       (g7306
                                                        (if cnd
                                                          (letrec ((g7309
                                                                    (proc)))
                                                            g7309)
                                                          (if cnd
                                                            (letrec ((g7310
                                                                      (letrec ((x7311
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7311))))
                                                              g7310)
                                                            (if cnd
                                                              (letrec ((g7312
                                                                        (letrec ((x7314
                                                                                  (car
                                                                                   args))
                                                                                 (x7313
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7314
                                                                           x7313))))
                                                                g7312)
                                                              (if cnd
                                                                (letrec ((g7315
                                                                          (letrec ((x7318
                                                                                    (car
                                                                                     args))
                                                                                   (x7317
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7316
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7318
                                                                             x7317
                                                                             x7316))))
                                                                  g7315)
                                                                (if cnd
                                                                  (letrec ((g7319
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
                                                                                       args)))
                                                                              (proc
                                                                               x7323
                                                                               x7322
                                                                               x7321
                                                                               x7320))))
                                                                    g7319)
                                                                  (if cnd
                                                                    (letrec ((g7324
                                                                              (letrec ((x7330
                                                                                        (car
                                                                                         args))
                                                                                       (x7329
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7328
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7327
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7325
                                                                                        (letrec ((x7326
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7326))))
                                                                                (proc
                                                                                 x7330
                                                                                 x7329
                                                                                 x7328
                                                                                 x7327
                                                                                 x7325))))
                                                                      g7324)
                                                                    (if cnd
                                                                      (letrec ((g7331
                                                                                (letrec ((x7339
                                                                                          (car
                                                                                           args))
                                                                                         (x7338
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7337
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7336
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7334
                                                                                          (letrec ((x7335
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7335)))
                                                                                         (x7332
                                                                                          (letrec ((x7333
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7333))))
                                                                                  (proc
                                                                                   x7339
                                                                                   x7338
                                                                                   x7337
                                                                                   x7336
                                                                                   x7334
                                                                                   x7332))))
                                                                        g7331)
                                                                      (if cnd
                                                                        (letrec ((g7340
                                                                                  (letrec ((x7350
                                                                                            (car
                                                                                             args))
                                                                                           (x7349
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7348
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7347
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7345
                                                                                            (letrec ((x7346
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7346)))
                                                                                           (x7343
                                                                                            (letrec ((x7344
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7344)))
                                                                                           (x7341
                                                                                            (letrec ((x7342
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7342))))
                                                                                    (proc
                                                                                     x7350
                                                                                     x7349
                                                                                     x7348
                                                                                     x7347
                                                                                     x7345
                                                                                     x7343
                                                                                     x7341))))
                                                                          g7340)
                                                                        (letrec ((g7351
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7351)))))))))))
                                                g7306)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7352
                                                        (letrec ((x7354
                                                                  (list? l)))
                                                          (assert x7354)))
                                                       (g7353
                                                        (letrec ((x-cnd7355
                                                                  (null? l)))
                                                          (if x-cnd7355
                                                            #f
                                                            (letrec ((x-cnd7356
                                                                      (letrec ((x7357
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7357
                                                                         e))))
                                                              (if x-cnd7356
                                                                l
                                                                (letrec ((x7358
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7358))))))))
                                                g7353)))
                                           (cddddr
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
                                                          (cdr x7360))))
                                                g7359)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7363
                                                        (letrec ((x7364
                                                                  (letrec ((x7365
                                                                            (letrec ((x7366
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7366))))
                                                                    (cdr
                                                                     x7365))))
                                                          (car x7364))))
                                                g7363)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7367 (random 42)))
                                                g7367)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7368
                                                        (letrec ((x7370
                                                                  (number? x)))
                                                          (assert x7370)))
                                                       (g7369 (= x 0)))
                                                g7369)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7371
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7372
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7372))))
                                                g7371)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7373
                                                        (letrec ((x7374
                                                                  (cdr x)))
                                                          (car x7374))))
                                                g7373)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7375
                                                        (letrec ((val6900
                                                                  (letrec ((x7378
                                                                            (pair?
                                                                             l))
                                                                           (x7376
                                                                            (letrec ((x7377
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7377))))
                                                                    (and x7378
                                                                         x7376))))
                                                          (letrec ((g7379
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7379))))
                                                g7375)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7380
                                                        (letrec ((x7381
                                                                  (letrec ((x7382
                                                                            (letrec ((x7383
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7383))))
                                                                    (cdr
                                                                     x7382))))
                                                          (cdr x7381))))
                                                g7380)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7384
                                                        (letrec ((x-cnd7385
                                                                  (letrec ((x7386
                                                                            #\0))
                                                                    (char<=?
                                                                     x7386
                                                                     c))))
                                                          (if x-cnd7385
                                                            (letrec ((x7387
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7387))
                                                            #f))))
                                                g7384)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7388
                                                        (letrec ((x7390
                                                                  (list? l)))
                                                          (assert x7390)))
                                                       (g7389
                                                        (letrec ((x-cnd7391
                                                                  (null? l)))
                                                          (if x-cnd7391
                                                            #f
                                                            (letrec ((x-cnd7392
                                                                      (letrec ((x7393
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7393
                                                                         k))))
                                                              (if x-cnd7392
                                                                (car l)
                                                                (letrec ((x7394
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7394))))))))
                                                g7389)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7395 (if x #f #t)))
                                                g7395)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7396 (append l1 l2)))
                                                g7396)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7397
                                                        (letrec ((x7399
                                                                  (list? l)))
                                                          (assert x7399)))
                                                       (g7398
                                                        (letrec ((x-cnd7400
                                                                  (null? l)))
                                                          (if x-cnd7400
                                                            #f
                                                            (letrec ((x-cnd7401
                                                                      (letrec ((x7402
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7402
                                                                         e))))
                                                              (if x-cnd7401
                                                                l
                                                                (letrec ((x7403
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7403))))))))
                                                g7398)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7404
                                                        (letrec ((x7405
                                                                  (letrec ((x7406
                                                                            (letrec ((x7407
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7407))))
                                                                    (cdr
                                                                     x7406))))
                                                          (car x7405))))
                                                g7404)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7408
                                                        (letrec ((x7410
                                                                  (list? l)))
                                                          (assert x7410)))
                                                       (g7409
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7411
                                                                              (letrec ((x-cnd7412
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7412
                                                                                  0
                                                                                  (letrec ((x7413
                                                                                            (letrec ((x7414
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7414))))
                                                                                    (+
                                                                                     1
                                                                                     x7413))))))
                                                                      g7411))))
                                                          (letrec ((g7415
                                                                    (rec l)))
                                                            g7415))))
                                                g7409)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7416
                                                        (letrec ((x7419
                                                                  (char? c1)))
                                                          (assert x7419)))
                                                       (g7417
                                                        (letrec ((x7420
                                                                  (char? c2)))
                                                          (assert x7420)))
                                                       (g7418
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7421
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7421))))
                                                g7418)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7422
                                                        (letrec ((x7423
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7423))))
                                                g7422)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7424
                                                        (letrec ((x7425
                                                                  (letrec ((x7426
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7426))))
                                                          (cdr x7425))))
                                                g7424)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7427
                                                        (letrec ((x7429
                                                                  (list? l)))
                                                          (assert x7429)))
                                                       (g7428
                                                        (letrec ((x-cnd7430
                                                                  (null? l)))
                                                          (if x-cnd7430
                                                            #f
                                                            (letrec ((x-cnd7431
                                                                      (letrec ((x7432
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7432
                                                                         k))))
                                                              (if x-cnd7431
                                                                (car l)
                                                                (letrec ((x7433
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7433))))))))
                                                g7428)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7434
                                                        (letrec ((x7435
                                                                  (car x)))
                                                          (car x7435))))
                                                g7434)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7436
                                                        (letrec ((x7439
                                                                  (char? c1)))
                                                          (assert x7439)))
                                                       (g7437
                                                        (letrec ((x7440
                                                                  (char? c2)))
                                                          (assert x7440)))
                                                       (g7438
                                                        (letrec ((x7441
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7441))))
                                                g7438)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7442
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7443
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7443))))
                                                g7442)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7444
                                                        (letrec ((x7447
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7447)))
                                                       (g7445
                                                        (letrec ((x7448
                                                                  (list? l)))
                                                          (assert x7448)))
                                                       (g7446
                                                        (letrec ((x-cnd7449
                                                                  (null? l)))
                                                          (if x-cnd7449
                                                            #t
                                                            (letrec ((x-cnd7450
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7450
                                                                (letrec ((g7451
                                                                          (letrec ((x7453
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7453)))
                                                                         (g7452
                                                                          (letrec ((x7454
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7454))))
                                                                  g7452)
                                                                '()))))))
                                                g7446)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7455
                                                        (letrec ((x7457
                                                                  (number? x)))
                                                          (assert x7457)))
                                                       (g7456
                                                        (letrec ((x-cnd7458
                                                                  (< x 0)))
                                                          (if x-cnd7458
                                                            (- 0 x)
                                                            x))))
                                                g7456)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7459
                                                        (letrec ((x7462
                                                                  (char? c1)))
                                                          (assert x7462)))
                                                       (g7460
                                                        (letrec ((x7463
                                                                  (char? c2)))
                                                          (assert x7463)))
                                                       (g7461
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7464
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7464))))
                                                g7461)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7465
                                                        (letrec ((x7466
                                                                  (letrec ((x7467
                                                                            (letrec ((x7468
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7468))))
                                                                    (cdr
                                                                     x7467))))
                                                          (car x7466))))
                                                g7465)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7469 #f)) g7469)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7470
                                                        (letrec ((x7472
                                                                  (letrec ((x7473
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7473)))
                                                                 (x7471
                                                                  (gcd m n)))
                                                          (/ x7472 x7471))))
                                                g7470)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7474
                                                        (letrec ((x7476
                                                                  (number? x)))
                                                          (assert x7476)))
                                                       (g7475
                                                        (letrec ((x7477
                                                                  (<= x y)))
                                                          (not x7477))))
                                                g7475)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7478
                                                        (letrec ((x7482
                                                                  (list? l)))
                                                          (assert x7482)))
                                                       (g7479
                                                        (letrec ((x7483
                                                                  (number?
                                                                   index)))
                                                          (assert x7483)))
                                                       (g7480
                                                        (letrec ((x7484
                                                                  (letrec ((x7485
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7485))))
                                                          (assert x7484)))
                                                       (g7481
                                                        (letrec ((x-cnd7486
                                                                  (= index 0)))
                                                          (if x-cnd7486
                                                            (car l)
                                                            (letrec ((x7488
                                                                      (cdr l))
                                                                     (x7487
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7488
                                                               x7487))))))
                                                g7481)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7489
                                                        (letrec ((x-cnd7490
                                                                  (= b 0)))
                                                          (if x-cnd7490
                                                            a
                                                            (letrec ((x7491
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7491))))))
                                                g7489)))
                                           (recursive-div2
                                            (lambda (l)
                                              (letrec ((g7492
                                                        (letrec ((x-cnd7493
                                                                  (empty? l)))
                                                          (if x-cnd7493
                                                            empty
                                                            (letrec ((x7497
                                                                      (car l))
                                                                     (x7494
                                                                      (letrec ((x7495
                                                                                (letrec ((x7496
                                                                                          (cdr
                                                                                           l)))
                                                                                  (cdr
                                                                                   x7496))))
                                                                        (recursive-div2
                                                                         x7495))))
                                                              (cons
                                                               x7497
                                                               x7494))))))
                                                g7492)))
                                           (even-list/c
                                            (lambda (g6973 g6974 g6975)
                                              (letrec ((g7498
                                                        (letrec ((x-cnd7499
                                                                  ((lambda ()
                                                                     (letrec ((g7500
                                                                               (letrec ((x7501
                                                                                         (letrec ((x7502
                                                                                                   (cons/c
                                                                                                    any/c
                                                                                                    even-list/c)))
                                                                                           (cons/c
                                                                                            any/c
                                                                                            x7502))))
                                                                                 (or/c
                                                                                  null?
                                                                                  x7501))))
                                                                       g7500))
                                                                   g6975)))
                                                          (if x-cnd7499
                                                            g6975
                                                            (blame
                                                             g6973
                                                             '(lambda ()
                                                                (or/c
                                                                 null?
                                                                 (cons/c
                                                                  any/c
                                                                  (cons/c
                                                                   any/c
                                                                   even-list/c)))))))))
                                                g7498))))
                                    (letrec ((g7503
                                              (letrec ((x7505
                                                        ((lambda (j6977
                                                                  k6978
                                                                  f6979)
                                                           (letrec ((g7506
                                                                     (lambda (g6976)
                                                                       (letrec ((g7507
                                                                                 (letrec ((x7511
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7508
                                                                                           (letrec ((x7509
                                                                                                     (letrec ((x7510
                                                                                                               (even-list/c)))
                                                                                                       (x7510
                                                                                                        j6977
                                                                                                        k6978
                                                                                                        g6976))))
                                                                                             (f6979
                                                                                              x7509))))
                                                                                   (x7511
                                                                                    j6977
                                                                                    k6978
                                                                                    x7508))))
                                                                         g7507))))
                                                             g7506))
                                                         'module
                                                         'importer
                                                         recursive-div2))
                                                       (x7504 (input)))
                                                (x7505 x7504))))
                                      g7503))))
                          g6993))))
              g6991)))
    g6990))
