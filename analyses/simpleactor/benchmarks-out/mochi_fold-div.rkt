(letrec ((any? (lambda (v) (letrec ((g6982 #t)) g6982)))
         (meta (lambda (v) (letrec ((g6983 v)) g6983)))
         (member
          (lambda (v lst)
            (letrec ((g6984
                      (letrec ((g6985
                                (letrec ((x-e6986 lst))
                                  (match
                                   x-e6986
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd6987 (eq? v v1)))
                                       (if x-cnd6987 #t (member v vs)))))))))
                        g6985)))
              g6984)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g6988 (lambda (v) (letrec ((g6989 v)) g6989)))) g6988)))
         (nonzero?
          (lambda (v)
            (letrec ((g6990 (letrec ((x6991 (= v 0))) (not x6991)))) g6990))))
  (letrec ((g6992
            (letrec ((g6993
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g6994 '())
                                 (g6995
                                  (letrec ((real/c
                                            (lambda (g6904 g6905 g6906)
                                              (letrec ((g6996
                                                        (letrec ((x-cnd6997
                                                                  (real?
                                                                   g6906)))
                                                          (if x-cnd6997
                                                            g6906
                                                            (blame
                                                             g6904
                                                             'real?)))))
                                                g6996)))
                                           (boolean?/c
                                            (lambda (g6907 g6908 g6909)
                                              (letrec ((g6998
                                                        (letrec ((x-cnd6999
                                                                  (boolean?
                                                                   g6909)))
                                                          (if x-cnd6999
                                                            g6909
                                                            (blame
                                                             g6907
                                                             'boolean?)))))
                                                g6998)))
                                           (number?/c
                                            (lambda (g6910 g6911 g6912)
                                              (letrec ((g7000
                                                        (letrec ((x-cnd7001
                                                                  (number?
                                                                   g6912)))
                                                          (if x-cnd7001
                                                            g6912
                                                            (blame
                                                             g6910
                                                             'number?)))))
                                                g7000)))
                                           (any/c
                                            (lambda (g6913 g6914 g6915)
                                              (letrec ((g7002
                                                        (letrec ((x-cnd7003
                                                                  ((lambda (v)
                                                                     (letrec ((g7004
                                                                               #t))
                                                                       g7004))
                                                                   g6915)))
                                                          (if x-cnd7003
                                                            g6915
                                                            (blame
                                                             g6913
                                                             '(lambda (v)
                                                                #t))))))
                                                g7002)))
                                           (any?/c
                                            (lambda (g6916 g6917 g6918)
                                              (letrec ((g7005
                                                        (letrec ((x-cnd7006
                                                                  ((lambda (v)
                                                                     (letrec ((g7007
                                                                               #t))
                                                                       g7007))
                                                                   g6918)))
                                                          (if x-cnd7006
                                                            g6918
                                                            (blame
                                                             g6916
                                                             '(lambda (v)
                                                                #t))))))
                                                g7005)))
                                           (cons?/c
                                            (lambda (g6919 g6920 g6921)
                                              (letrec ((g7008
                                                        (letrec ((x-cnd7009
                                                                  (pair?
                                                                   g6921)))
                                                          (if x-cnd7009
                                                            g6921
                                                            (blame
                                                             g6919
                                                             'pair?)))))
                                                g7008)))
                                           (pair?/c
                                            (lambda (g6922 g6923 g6924)
                                              (letrec ((g7010
                                                        (letrec ((x-cnd7011
                                                                  (pair?
                                                                   g6924)))
                                                          (if x-cnd7011
                                                            g6924
                                                            (blame
                                                             g6922
                                                             'pair?)))))
                                                g7010)))
                                           (integer?/c
                                            (lambda (g6925 g6926 g6927)
                                              (letrec ((g7012
                                                        (letrec ((x-cnd7013
                                                                  (integer?
                                                                   g6927)))
                                                          (if x-cnd7013
                                                            g6927
                                                            (blame
                                                             g6925
                                                             'integer?)))))
                                                g7012)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7014
                                                        (lambda (k j v)
                                                          (letrec ((g7015
                                                                    (letrec ((x-cnd7016
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7016
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7015))))
                                                g7014)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7017
                                                        (lambda (k j v)
                                                          (letrec ((g7018
                                                                    (letrec ((x-cnd7019
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7019
                                                                        '()
                                                                        (letrec ((x7023
                                                                                  (letrec ((x7024
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7024)))
                                                                                 (x7020
                                                                                  (letrec ((x7022
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7021
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7022
                                                                                     k
                                                                                     j
                                                                                     x7021))))
                                                                          (cons
                                                                           x7023
                                                                           x7020))))))
                                                            g7018))))
                                                g7017)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7025 #t)) g7025)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7026
                                                        (letrec ((x7027
                                                                  (= v 0)))
                                                          (not x7027))))
                                                g7026)))
                                           (nonzero?/c
                                            (lambda (g6928 g6929 g6930)
                                              (letrec ((g7028
                                                        (letrec ((x-cnd7029
                                                                  ((lambda (v)
                                                                     (letrec ((g7030
                                                                               (letrec ((x7031
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7031))))
                                                                       g7030))
                                                                   g6930)))
                                                          (if x-cnd7029
                                                            g6930
                                                            (blame
                                                             g6928
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7028)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7032 v)) g7032)))
                                           (+
                                            ((lambda (j6933 k6934 f6935)
                                               (letrec ((g7034
                                                         (lambda (g6931 g6932)
                                                           (letrec ((g7035
                                                                     (letrec ((x7036
                                                                               (letrec ((x7038
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6931))
                                                                                        (x7037
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6932)))
                                                                                 (f6935
                                                                                  x7038
                                                                                  x7037))))
                                                                       (number?/c
                                                                        j6933
                                                                        k6934
                                                                        x7036))))
                                                             g7035))))
                                                 g7034))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7033 (orig-+ a b)))
                                                 g7033))))
                                           (-
                                            ((lambda (j6938 k6939 f6940)
                                               (letrec ((g7040
                                                         (lambda (g6936 g6937)
                                                           (letrec ((g7041
                                                                     (letrec ((x7042
                                                                               (letrec ((x7044
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6936))
                                                                                        (x7043
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6937)))
                                                                                 (f6940
                                                                                  x7044
                                                                                  x7043))))
                                                                       (number?/c
                                                                        j6938
                                                                        k6939
                                                                        x7042))))
                                                             g7041))))
                                                 g7040))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7039 (orig-- a b)))
                                                 g7039))))
                                           (*
                                            ((lambda (j6943 k6944 f6945)
                                               (letrec ((g7046
                                                         (lambda (g6941 g6942)
                                                           (letrec ((g7047
                                                                     (letrec ((x7048
                                                                               (letrec ((x7050
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6941))
                                                                                        (x7049
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6942)))
                                                                                 (f6945
                                                                                  x7050
                                                                                  x7049))))
                                                                       (number?/c
                                                                        j6943
                                                                        k6944
                                                                        x7048))))
                                                             g7047))))
                                                 g7046))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7045 (orig-* a b)))
                                                 g7045))))
                                           (/
                                            ((lambda (j6948 k6949 f6950)
                                               (letrec ((g7052
                                                         (lambda (g6946 g6947)
                                                           (letrec ((g7053
                                                                     (letrec ((x7054
                                                                               (letrec ((x7056
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6946))
                                                                                        (x7055
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6947)))
                                                                                 (f6950
                                                                                  x7056
                                                                                  x7055))))
                                                                       (number?/c
                                                                        j6948
                                                                        k6949
                                                                        x7054))))
                                                             g7053))))
                                                 g7052))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7051 (orig-/ a b)))
                                                 g7051))))
                                           (car
                                            ((lambda (j6952 k6953 f6954)
                                               (letrec ((g7058
                                                         (lambda (g6951)
                                                           (letrec ((g7059
                                                                     (letrec ((x7060
                                                                               (letrec ((x7061
                                                                                         (pair?/c
                                                                                          j6952
                                                                                          k6953
                                                                                          g6951)))
                                                                                 (f6954
                                                                                  x7061))))
                                                                       (any/c
                                                                        j6952
                                                                        k6953
                                                                        x7060))))
                                                             g7059))))
                                                 g7058))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7057 (orig-car p)))
                                                 g7057))))
                                           (cdr
                                            ((lambda (j6956 k6957 f6958)
                                               (letrec ((g7063
                                                         (lambda (g6955)
                                                           (letrec ((g7064
                                                                     (letrec ((x7065
                                                                               (letrec ((x7066
                                                                                         (pair?/c
                                                                                          j6956
                                                                                          k6957
                                                                                          g6955)))
                                                                                 (f6958
                                                                                  x7066))))
                                                                       (any/c
                                                                        j6956
                                                                        k6957
                                                                        x7065))))
                                                             g7064))))
                                                 g7063))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7062 (orig-cdr p)))
                                                 g7062))))
                                           (cons
                                            ((lambda (j6961 k6962 f6963)
                                               (letrec ((g7068
                                                         (lambda (g6959 g6960)
                                                           (letrec ((g7069
                                                                     (letrec ((x7070
                                                                               (letrec ((x7072
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6959))
                                                                                        (x7071
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6960)))
                                                                                 (f6963
                                                                                  x7072
                                                                                  x7071))))
                                                                       (pair?/c
                                                                        j6961
                                                                        k6962
                                                                        x7070))))
                                                             g7069))))
                                                 g7068))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7067 (cons a b)))
                                                 g7067))))
                                           (vector-ref
                                            ((lambda (j6965 k6966 f6967)
                                               (letrec ((g7074
                                                         (lambda (g6964)
                                                           (letrec ((g7075
                                                                     (letrec ((x7076
                                                                               (letrec ((x7077
                                                                                         (vector?/c
                                                                                          j6965
                                                                                          k6966
                                                                                          g6964)))
                                                                                 (f6967
                                                                                  x7077))))
                                                                       (integer?/c
                                                                        j6965
                                                                        k6966
                                                                        x7076))))
                                                             g7075))))
                                                 g7074))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7073
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7073))))
                                           (vector-set!
                                            ((lambda (j6970 k6971 f6972)
                                               (letrec ((g7079
                                                         (lambda (g6968 g6969)
                                                           (letrec ((g7080
                                                                     (letrec ((x7081
                                                                               (letrec ((x7083
                                                                                         (vector?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6968))
                                                                                        (x7082
                                                                                         (integer?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6969)))
                                                                                 (f6972
                                                                                  x7083
                                                                                  x7082))))
                                                                       (any/c
                                                                        j6970
                                                                        k6971
                                                                        x7081))))
                                                             g7080))))
                                                 g7079))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7078
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7078))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7084 #t)) g7084)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7085
                                                        (letrec ((x7086
                                                                  (letrec ((x7087
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7087))))
                                                          (cdr x7086))))
                                                g7085)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7088
                                                        (letrec ((x7091
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7091)))
                                                       (g7089
                                                        (letrec ((x7092
                                                                  (list? l)))
                                                          (assert x7092)))
                                                       (g7090
                                                        (letrec ((x-cnd7093
                                                                  (null? l)))
                                                          (if x-cnd7093
                                                            '()
                                                            (letrec ((x7096
                                                                      (letrec ((x7097
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7097)))
                                                                     (x7094
                                                                      (letrec ((x7095
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7095))))
                                                              (cons
                                                               x7096
                                                               x7094))))))
                                                g7090)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7098
                                                        (letrec ((x7099
                                                                  (car x)))
                                                          (cdr x7099))))
                                                g7098)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7100
                                                        (letrec ((x7101
                                                                  (letrec ((x7102
                                                                            (letrec ((x7103
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7103))))
                                                                    (cdr
                                                                     x7102))))
                                                          (car x7101))))
                                                g7100)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7104
                                                        (letrec ((x7105
                                                                  (letrec ((x7106
                                                                            (letrec ((x7107
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7107))))
                                                                    (car
                                                                     x7106))))
                                                          (cdr x7105))))
                                                g7104)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7108
                                                        (letrec ((x7111
                                                                  (string?
                                                                   filename)))
                                                          (assert x7111)))
                                                       (g7109
                                                        (letrec ((x7112
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7112)))
                                                       (g7110
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7113
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7114 res))
                                                            g7114))))
                                                g7110)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7115
                                                        (letrec ((x7116
                                                                  (letrec ((x7117
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7117))))
                                                          (car x7116))))
                                                g7115)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7118
                                                        (letrec ((x7119
                                                                  (letrec ((x7120
                                                                            (letrec ((x7121
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7121))))
                                                                    (car
                                                                     x7120))))
                                                          (cdr x7119))))
                                                g7118)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7122
                                                        (letrec ((x7124
                                                                  (list? l)))
                                                          (assert x7124)))
                                                       (g7123
                                                        (letrec ((x-cnd7125
                                                                  (null? l)))
                                                          (if x-cnd7125
                                                            #f
                                                            (letrec ((x-cnd7126
                                                                      (letrec ((x7127
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7127
                                                                         k))))
                                                              (if x-cnd7126
                                                                (car l)
                                                                (letrec ((x7128
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7128))))))))
                                                g7123)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7129
                                                        (letrec ((x7130
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7130))))
                                                g7129)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7131
                                                        (letrec ((x7133
                                                                  (list? l)))
                                                          (assert x7133)))
                                                       (g7132
                                                        (letrec ((x-cnd7134
                                                                  (null? l)))
                                                          (if x-cnd7134
                                                            ""
                                                            (letrec ((x7137
                                                                      (letrec ((x7138
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7138)))
                                                                     (x7135
                                                                      (letrec ((x7136
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7136))))
                                                              (string-append
                                                               x7137
                                                               x7135))))))
                                                g7132)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7139
                                                        (letrec ((x7142
                                                                  (char? c1)))
                                                          (assert x7142)))
                                                       (g7140
                                                        (letrec ((x7143
                                                                  (char? c2)))
                                                          (assert x7143)))
                                                       (g7141
                                                        (letrec ((val6887
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7144
                                                                    (if val6887
                                                                      val6887
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7144))))
                                                g7141)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7145
                                                        (letrec ((x7146
                                                                  (letrec ((x7147
                                                                            (letrec ((x7148
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7148))))
                                                                    (cdr
                                                                     x7147))))
                                                          (cdr x7146))))
                                                g7145)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7149
                                                        (letrec ((x7152
                                                                  (list? l)))
                                                          (assert x7152)))
                                                       (g7150
                                                        (letrec ((x7153
                                                                  (numer?)))
                                                          (assert x7153)))
                                                       (g7151
                                                        (letrec ((x-cnd7154
                                                                  (zero? k)))
                                                          (if x-cnd7154
                                                            x
                                                            (letrec ((x7156
                                                                      (cdr x))
                                                                     (x7155
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7156
                                                               x7155))))))
                                                g7151)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7157 '())) g7157)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7158
                                                        (letrec ((x-cnd7159
                                                                  (letrec ((x7160
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7160))))
                                                          (if x-cnd7159
                                                            (letrec ((x7161
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7161))
                                                            #f))))
                                                g7158)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7162
                                                        (letrec ((x7164
                                                                  (number? x)))
                                                          (assert x7164)))
                                                       (g7163
                                                        (letrec ((val6888
                                                                  (< x y)))
                                                          (letrec ((g7165
                                                                    (if val6888
                                                                      val6888
                                                                      (letrec ((val6889
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7166
                                                                                  (if val6889
                                                                                    val6889
                                                                                    #f)))
                                                                          g7166)))))
                                                            g7165))))
                                                g7163)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7167
                                                        (letrec ((val6890
                                                                  (letrec ((x7168
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7168
                                                                     9))))
                                                          (letrec ((g7169
                                                                    (if val6890
                                                                      val6890
                                                                      (letrec ((val6891
                                                                                (letrec ((x7170
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7170
                                                                                   10))))
                                                                        (letrec ((g7171
                                                                                  (if val6891
                                                                                    val6891
                                                                                    (letrec ((x7172
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7172
                                                                                       32)))))
                                                                          g7171)))))
                                                            g7169))))
                                                g7167)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7173
                                                        (letrec ((x7174
                                                                  (letrec ((x7175
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7175))))
                                                          (cdr x7174))))
                                                g7173)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7176
                                                        (letrec ((x7178
                                                                  (number? x)))
                                                          (assert x7178)))
                                                       (g7177 (> x 0)))
                                                g7177)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7179 #f)) g7179)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7180
                                                        (letrec ((x7181
                                                                  (cdr x)))
                                                          (cdr x7181))))
                                                g7180)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7182
                                                        (letrec ((x7184
                                                                  (number? x)))
                                                          (assert x7184)))
                                                       (g7183
                                                        (letrec ((x-cnd7185
                                                                  (< x 0)))
                                                          (if x-cnd7185
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7183)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7186
                                                        (letrec ((val6892
                                                                  (eq? a b)))
                                                          (letrec ((g7187
                                                                    (if val6892
                                                                      val6892
                                                                      (letrec ((val6893
                                                                                (letrec ((x7189
                                                                                          (null?
                                                                                           a))
                                                                                         (x7188
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7189
                                                                                       x7188))))
                                                                        (letrec ((g7190
                                                                                  (if val6893
                                                                                    val6893
                                                                                    (letrec ((val6894
                                                                                              (letrec ((x7193
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7192
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7191
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7193
                                                                                                     x7192
                                                                                                     x7191))))
                                                                                      (letrec ((g7194
                                                                                                (if val6894
                                                                                                  val6894
                                                                                                  (letrec ((val6895
                                                                                                            (letrec ((x7202
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7201
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7198
                                                                                                                      (letrec ((x7200
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7199
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7200
                                                                                                                         x7199)))
                                                                                                                     (x7195
                                                                                                                      (letrec ((x7197
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7196
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7197
                                                                                                                         x7196))))
                                                                                                              (and x7202
                                                                                                                   x7201
                                                                                                                   x7198
                                                                                                                   x7195))))
                                                                                                    (letrec ((g7203
                                                                                                              (if val6895
                                                                                                                val6895
                                                                                                                (letrec ((x7222
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7221
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7204
                                                                                                                          (letrec ((x7218
                                                                                                                                    (letrec ((x7219
                                                                                                                                              (letrec ((x7220
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7220))))
                                                                                                                                      (x7219)))
                                                                                                                                   (x7205
                                                                                                                                    (letrec ((x7216
                                                                                                                                              (letrec ((x7217
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7217
                                                                                                                                                 n)))
                                                                                                                                             (x7206
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7207
                                                                                                                                                                    (letrec ((x7214
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7208
                                                                                                                                                                              (letrec ((x7211
                                                                                                                                                                                        (letrec ((x7213
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7212
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7213
                                                                                                                                                                                           x7212)))
                                                                                                                                                                                       (x7209
                                                                                                                                                                                        (letrec ((x7210
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7210))))
                                                                                                                                                                                (and x7211
                                                                                                                                                                                     x7209))))
                                                                                                                                                                      (or x7214
                                                                                                                                                                          x7208))))
                                                                                                                                                            g7207))))
                                                                                                                                                (letrec ((g7215
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7215))))
                                                                                                                                      (and x7216
                                                                                                                                           x7206))))
                                                                                                                            (let x7218 x7205))))
                                                                                                                  (and x7222
                                                                                                                       x7221
                                                                                                                       x7204)))))
                                                                                                      g7203)))))
                                                                                        g7194)))))
                                                                          g7190)))))
                                                            g7187))))
                                                g7186)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7223
                                                        (letrec ((x7224
                                                                  (letrec ((x7225
                                                                            (letrec ((x7226
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7226))))
                                                                    (car
                                                                     x7225))))
                                                          (cdr x7224))))
                                                g7223)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7227
                                                        (letrec ((x7228
                                                                  (letrec ((x7229
                                                                            (letrec ((x7230
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7230))))
                                                                    (car
                                                                     x7229))))
                                                          (car x7228))))
                                                g7227)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7231 (eq? x y)))
                                                g7231)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7232
                                                        (letrec ((x7234
                                                                  (number? x)))
                                                          (assert x7234)))
                                                       (g7233
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7235
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7236
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7236)))))
                                                            g7235))))
                                                g7233)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7237
                                                        (letrec ((x7240
                                                                  (string?
                                                                   filename)))
                                                          (assert x7240)))
                                                       (g7238
                                                        (letrec ((x7241
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7241)))
                                                       (g7239
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7242
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7243 res))
                                                            g7243))))
                                                g7239)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7244 (cons x '())))
                                                g7244)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7245
                                                        (letrec ((x7248
                                                                  (char? c1)))
                                                          (assert x7248)))
                                                       (g7246
                                                        (letrec ((x7249
                                                                  (char? c2)))
                                                          (assert x7249)))
                                                       (g7247
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7250
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7250))))
                                                g7247)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7251
                                                        (letrec ((x7252
                                                                  (letrec ((x7253
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7253))))
                                                          (cdr x7252))))
                                                g7251)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7254
                                                        (letrec ((x7255
                                                                  (letrec ((x7256
                                                                            (letrec ((x7257
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7257))))
                                                                    (car
                                                                     x7256))))
                                                          (cdr x7255))))
                                                g7254)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7258
                                                        (letrec ((x7259
                                                                  (letrec ((x7260
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7260))))
                                                          (car x7259))))
                                                g7258)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7261
                                                        (letrec ((x7262
                                                                  (letrec ((x7263
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7263))))
                                                          (car x7262))))
                                                g7261)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7264
                                                        (letrec ((x7267
                                                                  (char? c1)))
                                                          (assert x7267)))
                                                       (g7265
                                                        (letrec ((x7268
                                                                  (char? c2)))
                                                          (assert x7268)))
                                                       (g7266
                                                        (letrec ((x7269
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7269))))
                                                g7266)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7270
                                                        (letrec ((x7271
                                                                  (letrec ((x7272
                                                                            (letrec ((x7273
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7273))))
                                                                    (car
                                                                     x7272))))
                                                          (car x7271))))
                                                g7270)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7274
                                                        (letrec ((x7276
                                                                  (number? x)))
                                                          (assert x7276)))
                                                       (g7275 (< x 0)))
                                                g7275)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7277 (memq e l)))
                                                g7277)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7278
                                                        (letrec ((x7279
                                                                  (letrec ((x7280
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7280))))
                                                          (car x7279))))
                                                g7278)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7281 '())) g7281)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7282
                                                        (letrec ((x7284
                                                                  (list? l)))
                                                          (assert x7284)))
                                                       (g7283
                                                        (letrec ((x-cnd7285
                                                                  (null? l)))
                                                          (if x-cnd7285
                                                            '()
                                                            (letrec ((x7288
                                                                      (letrec ((x7289
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7289)))
                                                                     (x7286
                                                                      (letrec ((x7287
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7287))))
                                                              (append
                                                               x7288
                                                               x7286))))))
                                                g7283)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7290
                                                        (letrec ((x7291
                                                                  (letrec ((x7292
                                                                            (letrec ((x7293
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7293))))
                                                                    (car
                                                                     x7292))))
                                                          (car x7291))))
                                                g7290)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7294
                                                        (letrec ((x7295
                                                                  (letrec ((x7296
                                                                            (letrec ((x7297
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7297))))
                                                                    (cdr
                                                                     x7296))))
                                                          (cdr x7295))))
                                                g7294)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7298
                                                        (letrec ((x7300
                                                                  (number? x)))
                                                          (assert x7300)))
                                                       (g7299
                                                        (letrec ((x7301
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7301))))
                                                g7299)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7302
                                                        (letrec ((x7303
                                                                  (letrec ((x7304
                                                                            (letrec ((x7305
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7305))))
                                                                    (car
                                                                     x7304))))
                                                          (car x7303))))
                                                g7302)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7306
                                                        (letrec ((x7309
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7309)))
                                                       (g7307
                                                        (letrec ((x7310
                                                                  (list?
                                                                   args)))
                                                          (assert x7310)))
                                                       (g7308
                                                        (if cnd
                                                          (letrec ((g7311
                                                                    (proc)))
                                                            g7311)
                                                          (if cnd
                                                            (letrec ((g7312
                                                                      (letrec ((x7313
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7313))))
                                                              g7312)
                                                            (if cnd
                                                              (letrec ((g7314
                                                                        (letrec ((x7316
                                                                                  (car
                                                                                   args))
                                                                                 (x7315
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7316
                                                                           x7315))))
                                                                g7314)
                                                              (if cnd
                                                                (letrec ((g7317
                                                                          (letrec ((x7320
                                                                                    (car
                                                                                     args))
                                                                                   (x7319
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7318
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7320
                                                                             x7319
                                                                             x7318))))
                                                                  g7317)
                                                                (if cnd
                                                                  (letrec ((g7321
                                                                            (letrec ((x7325
                                                                                      (car
                                                                                       args))
                                                                                     (x7324
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7323
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7322
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7325
                                                                               x7324
                                                                               x7323
                                                                               x7322))))
                                                                    g7321)
                                                                  (if cnd
                                                                    (letrec ((g7326
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
                                                                                           x7328))))
                                                                                (proc
                                                                                 x7332
                                                                                 x7331
                                                                                 x7330
                                                                                 x7329
                                                                                 x7327))))
                                                                      g7326)
                                                                    (if cnd
                                                                      (letrec ((g7333
                                                                                (letrec ((x7341
                                                                                          (car
                                                                                           args))
                                                                                         (x7340
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7339
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7338
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7336
                                                                                          (letrec ((x7337
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7337)))
                                                                                         (x7334
                                                                                          (letrec ((x7335
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7335))))
                                                                                  (proc
                                                                                   x7341
                                                                                   x7340
                                                                                   x7339
                                                                                   x7338
                                                                                   x7336
                                                                                   x7334))))
                                                                        g7333)
                                                                      (if cnd
                                                                        (letrec ((g7342
                                                                                  (letrec ((x7352
                                                                                            (car
                                                                                             args))
                                                                                           (x7351
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7350
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7349
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7347
                                                                                            (letrec ((x7348
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7348)))
                                                                                           (x7345
                                                                                            (letrec ((x7346
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7346)))
                                                                                           (x7343
                                                                                            (letrec ((x7344
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7344))))
                                                                                    (proc
                                                                                     x7352
                                                                                     x7351
                                                                                     x7350
                                                                                     x7349
                                                                                     x7347
                                                                                     x7345
                                                                                     x7343))))
                                                                          g7342)
                                                                        (letrec ((g7353
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7353)))))))))))
                                                g7308)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7354
                                                        (letrec ((x7356
                                                                  (list? l)))
                                                          (assert x7356)))
                                                       (g7355
                                                        (letrec ((x-cnd7357
                                                                  (null? l)))
                                                          (if x-cnd7357
                                                            #f
                                                            (letrec ((x-cnd7358
                                                                      (letrec ((x7359
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7359
                                                                         e))))
                                                              (if x-cnd7358
                                                                l
                                                                (letrec ((x7360
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7360))))))))
                                                g7355)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7361
                                                        (letrec ((x7362
                                                                  (letrec ((x7363
                                                                            (letrec ((x7364
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7364))))
                                                                    (cdr
                                                                     x7363))))
                                                          (cdr x7362))))
                                                g7361)))
                                           (cadddr
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
                                                          (car x7366))))
                                                g7365)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7369 (random 42)))
                                                g7369)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7370
                                                        (letrec ((x7372
                                                                  (number? x)))
                                                          (assert x7372)))
                                                       (g7371 (= x 0)))
                                                g7371)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7373
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7374
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7374))))
                                                g7373)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7375
                                                        (letrec ((x7376
                                                                  (cdr x)))
                                                          (car x7376))))
                                                g7375)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7377
                                                        (letrec ((val6900
                                                                  (letrec ((x7380
                                                                            (pair?
                                                                             l))
                                                                           (x7378
                                                                            (letrec ((x7379
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7379))))
                                                                    (and x7380
                                                                         x7378))))
                                                          (letrec ((g7381
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7381))))
                                                g7377)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7382
                                                        (letrec ((x7383
                                                                  (letrec ((x7384
                                                                            (letrec ((x7385
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7385))))
                                                                    (cdr
                                                                     x7384))))
                                                          (cdr x7383))))
                                                g7382)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7386
                                                        (letrec ((x-cnd7387
                                                                  (letrec ((x7388
                                                                            #\0))
                                                                    (char<=?
                                                                     x7388
                                                                     c))))
                                                          (if x-cnd7387
                                                            (letrec ((x7389
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7389))
                                                            #f))))
                                                g7386)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
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
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7395
                                                                         k))))
                                                              (if x-cnd7394
                                                                (car l)
                                                                (letrec ((x7396
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7396))))))))
                                                g7391)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7397 (if x #f #t)))
                                                g7397)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7398 (append l1 l2)))
                                                g7398)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7399
                                                        (letrec ((x7401
                                                                  (list? l)))
                                                          (assert x7401)))
                                                       (g7400
                                                        (letrec ((x-cnd7402
                                                                  (null? l)))
                                                          (if x-cnd7402
                                                            #f
                                                            (letrec ((x-cnd7403
                                                                      (letrec ((x7404
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7404
                                                                         e))))
                                                              (if x-cnd7403
                                                                l
                                                                (letrec ((x7405
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7405))))))))
                                                g7400)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7406
                                                        (letrec ((x7407
                                                                  (letrec ((x7408
                                                                            (letrec ((x7409
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7409))))
                                                                    (cdr
                                                                     x7408))))
                                                          (car x7407))))
                                                g7406)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7410
                                                        (letrec ((x7412
                                                                  (list? l)))
                                                          (assert x7412)))
                                                       (g7411
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7413
                                                                              (letrec ((x-cnd7414
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7414
                                                                                  0
                                                                                  (letrec ((x7415
                                                                                            (letrec ((x7416
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7416))))
                                                                                    (+
                                                                                     1
                                                                                     x7415))))))
                                                                      g7413))))
                                                          (letrec ((g7417
                                                                    (rec l)))
                                                            g7417))))
                                                g7411)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7418
                                                        (letrec ((x7421
                                                                  (char? c1)))
                                                          (assert x7421)))
                                                       (g7419
                                                        (letrec ((x7422
                                                                  (char? c2)))
                                                          (assert x7422)))
                                                       (g7420
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7423
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7423))))
                                                g7420)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7424
                                                        (letrec ((x7425
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7425))))
                                                g7424)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7426
                                                        (letrec ((x7427
                                                                  (letrec ((x7428
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7428))))
                                                          (cdr x7427))))
                                                g7426)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7429
                                                        (letrec ((x7431
                                                                  (list? l)))
                                                          (assert x7431)))
                                                       (g7430
                                                        (letrec ((x-cnd7432
                                                                  (null? l)))
                                                          (if x-cnd7432
                                                            #f
                                                            (letrec ((x-cnd7433
                                                                      (letrec ((x7434
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7434
                                                                         k))))
                                                              (if x-cnd7433
                                                                (car l)
                                                                (letrec ((x7435
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7435))))))))
                                                g7430)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7436
                                                        (letrec ((x7437
                                                                  (car x)))
                                                          (car x7437))))
                                                g7436)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7438
                                                        (letrec ((x7441
                                                                  (char? c1)))
                                                          (assert x7441)))
                                                       (g7439
                                                        (letrec ((x7442
                                                                  (char? c2)))
                                                          (assert x7442)))
                                                       (g7440
                                                        (letrec ((x7443
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7443))))
                                                g7440)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7444
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7445
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7445))))
                                                g7444)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7446
                                                        (letrec ((x7449
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7449)))
                                                       (g7447
                                                        (letrec ((x7450
                                                                  (list? l)))
                                                          (assert x7450)))
                                                       (g7448
                                                        (letrec ((x-cnd7451
                                                                  (null? l)))
                                                          (if x-cnd7451
                                                            #t
                                                            (letrec ((x-cnd7452
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7452
                                                                (letrec ((g7453
                                                                          (letrec ((x7455
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7455)))
                                                                         (g7454
                                                                          (letrec ((x7456
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7456))))
                                                                  g7454)
                                                                '()))))))
                                                g7448)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7457
                                                        (letrec ((x7459
                                                                  (number? x)))
                                                          (assert x7459)))
                                                       (g7458
                                                        (letrec ((x-cnd7460
                                                                  (< x 0)))
                                                          (if x-cnd7460
                                                            (- 0 x)
                                                            x))))
                                                g7458)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7461
                                                        (letrec ((x7464
                                                                  (char? c1)))
                                                          (assert x7464)))
                                                       (g7462
                                                        (letrec ((x7465
                                                                  (char? c2)))
                                                          (assert x7465)))
                                                       (g7463
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7466
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7466))))
                                                g7463)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7467
                                                        (letrec ((x7468
                                                                  (letrec ((x7469
                                                                            (letrec ((x7470
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7470))))
                                                                    (cdr
                                                                     x7469))))
                                                          (car x7468))))
                                                g7467)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7471 #f)) g7471)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7472
                                                        (letrec ((x7474
                                                                  (letrec ((x7475
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7475)))
                                                                 (x7473
                                                                  (gcd m n)))
                                                          (/ x7474 x7473))))
                                                g7472)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7476
                                                        (letrec ((x7478
                                                                  (number? x)))
                                                          (assert x7478)))
                                                       (g7477
                                                        (letrec ((x7479
                                                                  (<= x y)))
                                                          (not x7479))))
                                                g7477)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7480
                                                        (letrec ((x7484
                                                                  (list? l)))
                                                          (assert x7484)))
                                                       (g7481
                                                        (letrec ((x7485
                                                                  (number?
                                                                   index)))
                                                          (assert x7485)))
                                                       (g7482
                                                        (letrec ((x7486
                                                                  (letrec ((x7487
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7487))))
                                                          (assert x7486)))
                                                       (g7483
                                                        (letrec ((x-cnd7488
                                                                  (= index 0)))
                                                          (if x-cnd7488
                                                            (car l)
                                                            (letrec ((x7490
                                                                      (cdr l))
                                                                     (x7489
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7490
                                                               x7489))))))
                                                g7483)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7491
                                                        (letrec ((x-cnd7492
                                                                  (= b 0)))
                                                          (if x-cnd7492
                                                            a
                                                            (letrec ((x7493
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7493))))))
                                                g7491)))
                                           (foldl
                                            (lambda (f z l)
                                              (letrec ((g7494
                                                        (letrec ((x-cnd7495
                                                                  (empty? l)))
                                                          (if x-cnd7495
                                                            z
                                                            (letrec ((x7497
                                                                      (letrec ((x7498
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         z
                                                                         x7498)))
                                                                     (x7496
                                                                      (cdr l)))
                                                              (foldl
                                                               f
                                                               x7497
                                                               x7496))))))
                                                g7494)))
                                           (randpos
                                            (lambda (rand)
                                              (letrec ((g7499
                                                        (letrec ((n (rand)))
                                                          (letrec ((g7500
                                                                    (letrec ((x-cnd7501
                                                                              (>
                                                                               n
                                                                               0)))
                                                                      (if x-cnd7501
                                                                        n
                                                                        (randpos
                                                                         rand)))))
                                                            g7500))))
                                                g7499)))
                                           (mk-list
                                            (lambda (rand n)
                                              (letrec ((g7502
                                                        (letrec ((x-cnd7503
                                                                  (<= n 0)))
                                                          (if x-cnd7503
                                                            empty
                                                            (letrec ((x7506
                                                                      (randpos
                                                                       rand))
                                                                     (x7504
                                                                      (letrec ((x7505
                                                                                (-
                                                                                 n
                                                                                 1)))
                                                                        (mk-list
                                                                         rand
                                                                         x7505))))
                                                              (cons
                                                               x7506
                                                               x7504))))))
                                                g7502)))
                                           (main
                                            (lambda (rand n m)
                                              (letrec ((g7507
                                                        (letrec ((x7508
                                                                  (mk-list
                                                                   rand
                                                                   n)))
                                                          (foldl / m x7508))))
                                                g7507))))
                                    (letrec ((g7509
                                              (letrec ((x7513
                                                        ((lambda (j6976
                                                                  k6977
                                                                  f6978)
                                                           (letrec ((g7514
                                                                     (lambda (g6973
                                                                              g6974
                                                                              g6975)
                                                                       (letrec ((g7515
                                                                                 (letrec ((x7516
                                                                                           (letrec ((x7519
                                                                                                     ((lambda (j6979
                                                                                                               k6980
                                                                                                               f6981)
                                                                                                        (letrec ((g7520
                                                                                                                  (lambda ()
                                                                                                                    (letrec ((g7521
                                                                                                                              (letrec ((x7522
                                                                                                                                        (f6981)))
                                                                                                                                (integer?/c
                                                                                                                                 j6979
                                                                                                                                 k6980
                                                                                                                                 x7522))))
                                                                                                                      g7521))))
                                                                                                          g7520))
                                                                                                      j6976
                                                                                                      k6977
                                                                                                      g6973))
                                                                                                    (x7518
                                                                                                     (integer?/c
                                                                                                      j6976
                                                                                                      k6977
                                                                                                      g6974))
                                                                                                    (x7517
                                                                                                     (integer?/c
                                                                                                      j6976
                                                                                                      k6977
                                                                                                      g6975)))
                                                                                             (f6978
                                                                                              x7519
                                                                                              x7518
                                                                                              x7517))))
                                                                                   (real?/c
                                                                                    j6976
                                                                                    k6977
                                                                                    x7516))))
                                                                         g7515))))
                                                             g7514))
                                                         'module
                                                         'importer
                                                         main))
                                                       (x7512 (input))
                                                       (x7511 (input))
                                                       (x7510 (input)))
                                                (x7513 x7512 x7511 x7510))))
                                      g7509))))
                          g6995))))
              g6993)))
    g6992))
