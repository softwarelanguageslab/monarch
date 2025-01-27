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
                                                                                                                (letrec ((x7217
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7216
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7202
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7203
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
                                                                                                                              g7203))))
                                                                                                                  (and x7217
                                                                                                                       x7216
                                                                                                                       x7202)))))
                                                                                                      g7201)))))
                                                                                        g7192)))))
                                                                          g7188)))))
                                                            g7185))))
                                                g7184)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7218
                                                        (letrec ((x7219
                                                                  (letrec ((x7220
                                                                            (letrec ((x7221
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7221))))
                                                                    (car
                                                                     x7220))))
                                                          (cdr x7219))))
                                                g7218)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7222
                                                        (letrec ((x7223
                                                                  (letrec ((x7224
                                                                            (letrec ((x7225
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7225))))
                                                                    (car
                                                                     x7224))))
                                                          (car x7223))))
                                                g7222)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7226 (eq? x y)))
                                                g7226)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7227
                                                        (letrec ((x7229
                                                                  (number? x)))
                                                          (assert x7229)))
                                                       (g7228
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7230
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7231
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7231)))))
                                                            g7230))))
                                                g7228)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7232
                                                        (letrec ((x7235
                                                                  (string?
                                                                   filename)))
                                                          (assert x7235)))
                                                       (g7233
                                                        (letrec ((x7236
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7236)))
                                                       (g7234
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7237
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7238 res))
                                                            g7238))))
                                                g7234)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7239 (cons x '())))
                                                g7239)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7240
                                                        (letrec ((x7243
                                                                  (char? c1)))
                                                          (assert x7243)))
                                                       (g7241
                                                        (letrec ((x7244
                                                                  (char? c2)))
                                                          (assert x7244)))
                                                       (g7242
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7245
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7245))))
                                                g7242)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7246
                                                        (letrec ((x7247
                                                                  (letrec ((x7248
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7248))))
                                                          (cdr x7247))))
                                                g7246)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7249
                                                        (letrec ((x7250
                                                                  (letrec ((x7251
                                                                            (letrec ((x7252
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7252))))
                                                                    (car
                                                                     x7251))))
                                                          (cdr x7250))))
                                                g7249)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7253
                                                        (letrec ((x7254
                                                                  (letrec ((x7255
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7255))))
                                                          (car x7254))))
                                                g7253)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7256
                                                        (letrec ((x7257
                                                                  (letrec ((x7258
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7258))))
                                                          (car x7257))))
                                                g7256)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7259
                                                        (letrec ((x7262
                                                                  (char? c1)))
                                                          (assert x7262)))
                                                       (g7260
                                                        (letrec ((x7263
                                                                  (char? c2)))
                                                          (assert x7263)))
                                                       (g7261
                                                        (letrec ((x7264
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7264))))
                                                g7261)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7265
                                                        (letrec ((x7266
                                                                  (letrec ((x7267
                                                                            (letrec ((x7268
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7268))))
                                                                    (car
                                                                     x7267))))
                                                          (car x7266))))
                                                g7265)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7269
                                                        (letrec ((x7271
                                                                  (number? x)))
                                                          (assert x7271)))
                                                       (g7270 (< x 0)))
                                                g7270)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7272 (memq e l)))
                                                g7272)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7273
                                                        (letrec ((x7274
                                                                  (letrec ((x7275
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7275))))
                                                          (car x7274))))
                                                g7273)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7276 '())) g7276)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7277
                                                        (letrec ((x7279
                                                                  (list? l)))
                                                          (assert x7279)))
                                                       (g7278
                                                        (letrec ((x-cnd7280
                                                                  (null? l)))
                                                          (if x-cnd7280
                                                            '()
                                                            (letrec ((x7283
                                                                      (letrec ((x7284
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7284)))
                                                                     (x7281
                                                                      (letrec ((x7282
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7282))))
                                                              (append
                                                               x7283
                                                               x7281))))))
                                                g7278)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7285
                                                        (letrec ((x7286
                                                                  (letrec ((x7287
                                                                            (letrec ((x7288
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7288))))
                                                                    (car
                                                                     x7287))))
                                                          (car x7286))))
                                                g7285)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7289
                                                        (letrec ((x7290
                                                                  (letrec ((x7291
                                                                            (letrec ((x7292
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7292))))
                                                                    (cdr
                                                                     x7291))))
                                                          (cdr x7290))))
                                                g7289)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7293
                                                        (letrec ((x7295
                                                                  (number? x)))
                                                          (assert x7295)))
                                                       (g7294
                                                        (letrec ((x7296
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7296))))
                                                g7294)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7297
                                                        (letrec ((x7298
                                                                  (letrec ((x7299
                                                                            (letrec ((x7300
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7300))))
                                                                    (car
                                                                     x7299))))
                                                          (car x7298))))
                                                g7297)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7301
                                                        (letrec ((x7304
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7304)))
                                                       (g7302
                                                        (letrec ((x7305
                                                                  (list?
                                                                   args)))
                                                          (assert x7305)))
                                                       (g7303
                                                        (if cnd
                                                          (letrec ((g7306
                                                                    (proc)))
                                                            g7306)
                                                          (if cnd
                                                            (letrec ((g7307
                                                                      (letrec ((x7308
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7308))))
                                                              g7307)
                                                            (if cnd
                                                              (letrec ((g7309
                                                                        (letrec ((x7311
                                                                                  (car
                                                                                   args))
                                                                                 (x7310
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7311
                                                                           x7310))))
                                                                g7309)
                                                              (if cnd
                                                                (letrec ((g7312
                                                                          (letrec ((x7315
                                                                                    (car
                                                                                     args))
                                                                                   (x7314
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7313
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7315
                                                                             x7314
                                                                             x7313))))
                                                                  g7312)
                                                                (if cnd
                                                                  (letrec ((g7316
                                                                            (letrec ((x7320
                                                                                      (car
                                                                                       args))
                                                                                     (x7319
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7318
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7317
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7320
                                                                               x7319
                                                                               x7318
                                                                               x7317))))
                                                                    g7316)
                                                                  (if cnd
                                                                    (letrec ((g7321
                                                                              (letrec ((x7327
                                                                                        (car
                                                                                         args))
                                                                                       (x7326
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7325
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7324
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7322
                                                                                        (letrec ((x7323
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7323))))
                                                                                (proc
                                                                                 x7327
                                                                                 x7326
                                                                                 x7325
                                                                                 x7324
                                                                                 x7322))))
                                                                      g7321)
                                                                    (if cnd
                                                                      (letrec ((g7328
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
                                                                                             x7332)))
                                                                                         (x7329
                                                                                          (letrec ((x7330
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7330))))
                                                                                  (proc
                                                                                   x7336
                                                                                   x7335
                                                                                   x7334
                                                                                   x7333
                                                                                   x7331
                                                                                   x7329))))
                                                                        g7328)
                                                                      (if cnd
                                                                        (letrec ((g7337
                                                                                  (letrec ((x7347
                                                                                            (car
                                                                                             args))
                                                                                           (x7346
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7345
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7344
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7342
                                                                                            (letrec ((x7343
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7343)))
                                                                                           (x7340
                                                                                            (letrec ((x7341
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7341)))
                                                                                           (x7338
                                                                                            (letrec ((x7339
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7339))))
                                                                                    (proc
                                                                                     x7347
                                                                                     x7346
                                                                                     x7345
                                                                                     x7344
                                                                                     x7342
                                                                                     x7340
                                                                                     x7338))))
                                                                          g7337)
                                                                        (letrec ((g7348
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7348)))))))))))
                                                g7303)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7349
                                                        (letrec ((x7351
                                                                  (list? l)))
                                                          (assert x7351)))
                                                       (g7350
                                                        (letrec ((x-cnd7352
                                                                  (null? l)))
                                                          (if x-cnd7352
                                                            #f
                                                            (letrec ((x-cnd7353
                                                                      (letrec ((x7354
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7354
                                                                         e))))
                                                              (if x-cnd7353
                                                                l
                                                                (letrec ((x7355
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7355))))))))
                                                g7350)))
                                           (cddddr
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
                                                          (cdr x7357))))
                                                g7356)))
                                           (cadddr
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
                                                          (car x7361))))
                                                g7360)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7364 (random 42)))
                                                g7364)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7365
                                                        (letrec ((x7367
                                                                  (number? x)))
                                                          (assert x7367)))
                                                       (g7366 (= x 0)))
                                                g7366)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7368
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7369
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7369))))
                                                g7368)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7370
                                                        (letrec ((x7371
                                                                  (cdr x)))
                                                          (car x7371))))
                                                g7370)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7372
                                                        (letrec ((val6900
                                                                  (letrec ((x7375
                                                                            (pair?
                                                                             l))
                                                                           (x7373
                                                                            (letrec ((x7374
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7374))))
                                                                    (and x7375
                                                                         x7373))))
                                                          (letrec ((g7376
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7376))))
                                                g7372)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7377
                                                        (letrec ((x7378
                                                                  (letrec ((x7379
                                                                            (letrec ((x7380
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7380))))
                                                                    (cdr
                                                                     x7379))))
                                                          (cdr x7378))))
                                                g7377)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7381
                                                        (letrec ((x-cnd7382
                                                                  (letrec ((x7383
                                                                            #\0))
                                                                    (char<=?
                                                                     x7383
                                                                     c))))
                                                          (if x-cnd7382
                                                            (letrec ((x7384
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7384))
                                                            #f))))
                                                g7381)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7385
                                                        (letrec ((x7387
                                                                  (list? l)))
                                                          (assert x7387)))
                                                       (g7386
                                                        (letrec ((x-cnd7388
                                                                  (null? l)))
                                                          (if x-cnd7388
                                                            #f
                                                            (letrec ((x-cnd7389
                                                                      (letrec ((x7390
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7390
                                                                         k))))
                                                              (if x-cnd7389
                                                                (car l)
                                                                (letrec ((x7391
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7391))))))))
                                                g7386)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7392 (if x #f #t)))
                                                g7392)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7393 (append l1 l2)))
                                                g7393)))
                                           (memq
                                            (lambda (e l)
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
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7399
                                                                         e))))
                                                              (if x-cnd7398
                                                                l
                                                                (letrec ((x7400
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7400))))))))
                                                g7395)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7401
                                                        (letrec ((x7402
                                                                  (letrec ((x7403
                                                                            (letrec ((x7404
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7404))))
                                                                    (cdr
                                                                     x7403))))
                                                          (car x7402))))
                                                g7401)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7405
                                                        (letrec ((x7407
                                                                  (list? l)))
                                                          (assert x7407)))
                                                       (g7406
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7408
                                                                              (letrec ((x-cnd7409
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7409
                                                                                  0
                                                                                  (letrec ((x7410
                                                                                            (letrec ((x7411
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7411))))
                                                                                    (+
                                                                                     1
                                                                                     x7410))))))
                                                                      g7408))))
                                                          (letrec ((g7412
                                                                    (rec l)))
                                                            g7412))))
                                                g7406)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7413
                                                        (letrec ((x7416
                                                                  (char? c1)))
                                                          (assert x7416)))
                                                       (g7414
                                                        (letrec ((x7417
                                                                  (char? c2)))
                                                          (assert x7417)))
                                                       (g7415
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7418
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7418))))
                                                g7415)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7419
                                                        (letrec ((x7420
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7420))))
                                                g7419)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7421
                                                        (letrec ((x7422
                                                                  (letrec ((x7423
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7423))))
                                                          (cdr x7422))))
                                                g7421)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7424
                                                        (letrec ((x7426
                                                                  (list? l)))
                                                          (assert x7426)))
                                                       (g7425
                                                        (letrec ((x-cnd7427
                                                                  (null? l)))
                                                          (if x-cnd7427
                                                            #f
                                                            (letrec ((x-cnd7428
                                                                      (letrec ((x7429
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7429
                                                                         k))))
                                                              (if x-cnd7428
                                                                (car l)
                                                                (letrec ((x7430
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7430))))))))
                                                g7425)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7431
                                                        (letrec ((x7432
                                                                  (car x)))
                                                          (car x7432))))
                                                g7431)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7433
                                                        (letrec ((x7436
                                                                  (char? c1)))
                                                          (assert x7436)))
                                                       (g7434
                                                        (letrec ((x7437
                                                                  (char? c2)))
                                                          (assert x7437)))
                                                       (g7435
                                                        (letrec ((x7438
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7438))))
                                                g7435)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7439
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7440
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7440))))
                                                g7439)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7441
                                                        (letrec ((x7444
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7444)))
                                                       (g7442
                                                        (letrec ((x7445
                                                                  (list? l)))
                                                          (assert x7445)))
                                                       (g7443
                                                        (letrec ((x-cnd7446
                                                                  (null? l)))
                                                          (if x-cnd7446
                                                            #t
                                                            (letrec ((x-cnd7447
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7447
                                                                (letrec ((g7448
                                                                          (letrec ((x7450
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7450)))
                                                                         (g7449
                                                                          (letrec ((x7451
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7451))))
                                                                  g7449)
                                                                '()))))))
                                                g7443)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7452
                                                        (letrec ((x7454
                                                                  (number? x)))
                                                          (assert x7454)))
                                                       (g7453
                                                        (letrec ((x-cnd7455
                                                                  (< x 0)))
                                                          (if x-cnd7455
                                                            (- 0 x)
                                                            x))))
                                                g7453)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7456
                                                        (letrec ((x7459
                                                                  (char? c1)))
                                                          (assert x7459)))
                                                       (g7457
                                                        (letrec ((x7460
                                                                  (char? c2)))
                                                          (assert x7460)))
                                                       (g7458
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7461
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7461))))
                                                g7458)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7462
                                                        (letrec ((x7463
                                                                  (letrec ((x7464
                                                                            (letrec ((x7465
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7465))))
                                                                    (cdr
                                                                     x7464))))
                                                          (car x7463))))
                                                g7462)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7466 #f)) g7466)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7467
                                                        (letrec ((x7469
                                                                  (letrec ((x7470
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7470)))
                                                                 (x7468
                                                                  (gcd m n)))
                                                          (/ x7469 x7468))))
                                                g7467)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7471
                                                        (letrec ((x7473
                                                                  (number? x)))
                                                          (assert x7473)))
                                                       (g7472
                                                        (letrec ((x7474
                                                                  (<= x y)))
                                                          (not x7474))))
                                                g7472)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7475
                                                        (letrec ((x7479
                                                                  (list? l)))
                                                          (assert x7479)))
                                                       (g7476
                                                        (letrec ((x7480
                                                                  (number?
                                                                   index)))
                                                          (assert x7480)))
                                                       (g7477
                                                        (letrec ((x7481
                                                                  (letrec ((x7482
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7482))))
                                                          (assert x7481)))
                                                       (g7478
                                                        (letrec ((x-cnd7483
                                                                  (= index 0)))
                                                          (if x-cnd7483
                                                            (car l)
                                                            (letrec ((x7485
                                                                      (cdr l))
                                                                     (x7484
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7485
                                                               x7484))))))
                                                g7478)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7486
                                                        (letrec ((x-cnd7487
                                                                  (= b 0)))
                                                          (if x-cnd7487
                                                            a
                                                            (letrec ((x7488
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7488))))))
                                                g7486)))
                                           (recursive-div2
                                            (lambda (l)
                                              (letrec ((g7489
                                                        (letrec ((x-cnd7490
                                                                  (empty? l)))
                                                          (if x-cnd7490
                                                            empty
                                                            (letrec ((x7494
                                                                      (car l))
                                                                     (x7491
                                                                      (letrec ((x7492
                                                                                (letrec ((x7493
                                                                                          (cdr
                                                                                           l)))
                                                                                  (cdr
                                                                                   x7493))))
                                                                        (recursive-div2
                                                                         x7492))))
                                                              (cons
                                                               x7494
                                                               x7491))))))
                                                g7489)))
                                           (even-list/c
                                            (lambda (g6973 g6974 g6975)
                                              (letrec ((g7495
                                                        (letrec ((x-cnd7496
                                                                  ((lambda ()
                                                                     (letrec ((g7497
                                                                               (letrec ((x7498
                                                                                         (letrec ((x7499
                                                                                                   (cons/c
                                                                                                    any/c
                                                                                                    even-list/c)))
                                                                                           (cons/c
                                                                                            any/c
                                                                                            x7499))))
                                                                                 (or/c
                                                                                  null?
                                                                                  x7498))))
                                                                       g7497))
                                                                   g6975)))
                                                          (if x-cnd7496
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
                                                g7495))))
                                    (letrec ((g7500
                                              (letrec ((x7502
                                                        ((lambda (j6977
                                                                  k6978
                                                                  f6979)
                                                           (letrec ((g7503
                                                                     (lambda (g6976)
                                                                       (letrec ((g7504
                                                                                 (letrec ((x7508
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7505
                                                                                           (letrec ((x7506
                                                                                                     (letrec ((x7507
                                                                                                               (even-list/c)))
                                                                                                       (x7507
                                                                                                        j6977
                                                                                                        k6978
                                                                                                        g6976))))
                                                                                             (f6979
                                                                                              x7506))))
                                                                                   (x7508
                                                                                    j6977
                                                                                    k6978
                                                                                    x7505))))
                                                                         g7504))))
                                                             g7503))
                                                         'module
                                                         'importer
                                                         recursive-div2))
                                                       (x7501 (input)))
                                                (x7502 x7501))))
                                      g7500))))
                          g6993))))
              g6991)))
    g6990))
