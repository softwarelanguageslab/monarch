(letrec ((any? (lambda (v) (letrec ((g6987 #t)) g6987)))
         (meta (lambda (v) (letrec ((g6988 v)) g6988)))
         (member
          (lambda (v lst)
            (letrec ((g6989
                      (letrec ((g6990
                                (letrec ((x-e6991 lst))
                                  (match
                                   x-e6991
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd6992 (eq? v v1)))
                                       (if x-cnd6992 #t (member v vs)))))))))
                        g6990)))
              g6989)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g6993 (lambda (v) (letrec ((g6994 v)) g6994)))) g6993)))
         (nonzero?
          (lambda (v)
            (letrec ((g6995 (letrec ((x6996 (= v 0))) (not x6996)))) g6995))))
  (letrec ((g6997
            (letrec ((g6998
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g6999 '())
                                 (g7000
                                  (letrec ((real/c
                                            (lambda (g6904 g6905 g6906)
                                              (letrec ((g7001
                                                        (letrec ((x-cnd7002
                                                                  (real?
                                                                   g6906)))
                                                          (if x-cnd7002
                                                            g6906
                                                            (blame
                                                             g6904
                                                             'real?)))))
                                                g7001)))
                                           (boolean?/c
                                            (lambda (g6907 g6908 g6909)
                                              (letrec ((g7003
                                                        (letrec ((x-cnd7004
                                                                  (boolean?
                                                                   g6909)))
                                                          (if x-cnd7004
                                                            g6909
                                                            (blame
                                                             g6907
                                                             'boolean?)))))
                                                g7003)))
                                           (number?/c
                                            (lambda (g6910 g6911 g6912)
                                              (letrec ((g7005
                                                        (letrec ((x-cnd7006
                                                                  (number?
                                                                   g6912)))
                                                          (if x-cnd7006
                                                            g6912
                                                            (blame
                                                             g6910
                                                             'number?)))))
                                                g7005)))
                                           (any/c
                                            (lambda (g6913 g6914 g6915)
                                              (letrec ((g7007
                                                        (letrec ((x-cnd7008
                                                                  ((lambda (v)
                                                                     (letrec ((g7009
                                                                               #t))
                                                                       g7009))
                                                                   g6915)))
                                                          (if x-cnd7008
                                                            g6915
                                                            (blame
                                                             g6913
                                                             '(lambda (v)
                                                                #t))))))
                                                g7007)))
                                           (any?/c
                                            (lambda (g6916 g6917 g6918)
                                              (letrec ((g7010
                                                        (letrec ((x-cnd7011
                                                                  ((lambda (v)
                                                                     (letrec ((g7012
                                                                               #t))
                                                                       g7012))
                                                                   g6918)))
                                                          (if x-cnd7011
                                                            g6918
                                                            (blame
                                                             g6916
                                                             '(lambda (v)
                                                                #t))))))
                                                g7010)))
                                           (cons?/c
                                            (lambda (g6919 g6920 g6921)
                                              (letrec ((g7013
                                                        (letrec ((x-cnd7014
                                                                  (pair?
                                                                   g6921)))
                                                          (if x-cnd7014
                                                            g6921
                                                            (blame
                                                             g6919
                                                             'pair?)))))
                                                g7013)))
                                           (pair?/c
                                            (lambda (g6922 g6923 g6924)
                                              (letrec ((g7015
                                                        (letrec ((x-cnd7016
                                                                  (pair?
                                                                   g6924)))
                                                          (if x-cnd7016
                                                            g6924
                                                            (blame
                                                             g6922
                                                             'pair?)))))
                                                g7015)))
                                           (integer?/c
                                            (lambda (g6925 g6926 g6927)
                                              (letrec ((g7017
                                                        (letrec ((x-cnd7018
                                                                  (integer?
                                                                   g6927)))
                                                          (if x-cnd7018
                                                            g6927
                                                            (blame
                                                             g6925
                                                             'integer?)))))
                                                g7017)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7019
                                                        (lambda (k j v)
                                                          (letrec ((g7020
                                                                    (letrec ((x-cnd7021
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7021
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7020))))
                                                g7019)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7022
                                                        (lambda (k j v)
                                                          (letrec ((g7023
                                                                    (letrec ((x-cnd7024
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7024
                                                                        '()
                                                                        (letrec ((x7028
                                                                                  (letrec ((x7029
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7029)))
                                                                                 (x7025
                                                                                  (letrec ((x7027
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7026
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7027
                                                                                     k
                                                                                     j
                                                                                     x7026))))
                                                                          (cons
                                                                           x7028
                                                                           x7025))))))
                                                            g7023))))
                                                g7022)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7030 #t)) g7030)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7031
                                                        (letrec ((x7032
                                                                  (= v 0)))
                                                          (not x7032))))
                                                g7031)))
                                           (nonzero?/c
                                            (lambda (g6928 g6929 g6930)
                                              (letrec ((g7033
                                                        (letrec ((x-cnd7034
                                                                  ((lambda (v)
                                                                     (letrec ((g7035
                                                                               (letrec ((x7036
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7036))))
                                                                       g7035))
                                                                   g6930)))
                                                          (if x-cnd7034
                                                            g6930
                                                            (blame
                                                             g6928
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7033)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7037 v)) g7037)))
                                           (+
                                            ((lambda (j6933 k6934 f6935)
                                               (letrec ((g7039
                                                         (lambda (g6931 g6932)
                                                           (letrec ((g7040
                                                                     (letrec ((x7041
                                                                               (letrec ((x7043
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6931))
                                                                                        (x7042
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6932)))
                                                                                 (f6935
                                                                                  x7043
                                                                                  x7042))))
                                                                       (number?/c
                                                                        j6933
                                                                        k6934
                                                                        x7041))))
                                                             g7040))))
                                                 g7039))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7038 (orig-+ a b)))
                                                 g7038))))
                                           (-
                                            ((lambda (j6938 k6939 f6940)
                                               (letrec ((g7045
                                                         (lambda (g6936 g6937)
                                                           (letrec ((g7046
                                                                     (letrec ((x7047
                                                                               (letrec ((x7049
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6936))
                                                                                        (x7048
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6937)))
                                                                                 (f6940
                                                                                  x7049
                                                                                  x7048))))
                                                                       (number?/c
                                                                        j6938
                                                                        k6939
                                                                        x7047))))
                                                             g7046))))
                                                 g7045))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7044 (orig-- a b)))
                                                 g7044))))
                                           (*
                                            ((lambda (j6943 k6944 f6945)
                                               (letrec ((g7051
                                                         (lambda (g6941 g6942)
                                                           (letrec ((g7052
                                                                     (letrec ((x7053
                                                                               (letrec ((x7055
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6941))
                                                                                        (x7054
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6942)))
                                                                                 (f6945
                                                                                  x7055
                                                                                  x7054))))
                                                                       (number?/c
                                                                        j6943
                                                                        k6944
                                                                        x7053))))
                                                             g7052))))
                                                 g7051))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7050 (orig-* a b)))
                                                 g7050))))
                                           (/
                                            ((lambda (j6948 k6949 f6950)
                                               (letrec ((g7057
                                                         (lambda (g6946 g6947)
                                                           (letrec ((g7058
                                                                     (letrec ((x7059
                                                                               (letrec ((x7061
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6946))
                                                                                        (x7060
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6947)))
                                                                                 (f6950
                                                                                  x7061
                                                                                  x7060))))
                                                                       (number?/c
                                                                        j6948
                                                                        k6949
                                                                        x7059))))
                                                             g7058))))
                                                 g7057))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7056 (orig-/ a b)))
                                                 g7056))))
                                           (car
                                            ((lambda (j6952 k6953 f6954)
                                               (letrec ((g7063
                                                         (lambda (g6951)
                                                           (letrec ((g7064
                                                                     (letrec ((x7065
                                                                               (letrec ((x7066
                                                                                         (pair?/c
                                                                                          j6952
                                                                                          k6953
                                                                                          g6951)))
                                                                                 (f6954
                                                                                  x7066))))
                                                                       (any/c
                                                                        j6952
                                                                        k6953
                                                                        x7065))))
                                                             g7064))))
                                                 g7063))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7062 (orig-car p)))
                                                 g7062))))
                                           (cdr
                                            ((lambda (j6956 k6957 f6958)
                                               (letrec ((g7068
                                                         (lambda (g6955)
                                                           (letrec ((g7069
                                                                     (letrec ((x7070
                                                                               (letrec ((x7071
                                                                                         (pair?/c
                                                                                          j6956
                                                                                          k6957
                                                                                          g6955)))
                                                                                 (f6958
                                                                                  x7071))))
                                                                       (any/c
                                                                        j6956
                                                                        k6957
                                                                        x7070))))
                                                             g7069))))
                                                 g7068))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7067 (orig-cdr p)))
                                                 g7067))))
                                           (cons
                                            ((lambda (j6961 k6962 f6963)
                                               (letrec ((g7073
                                                         (lambda (g6959 g6960)
                                                           (letrec ((g7074
                                                                     (letrec ((x7075
                                                                               (letrec ((x7077
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6959))
                                                                                        (x7076
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6960)))
                                                                                 (f6963
                                                                                  x7077
                                                                                  x7076))))
                                                                       (pair?/c
                                                                        j6961
                                                                        k6962
                                                                        x7075))))
                                                             g7074))))
                                                 g7073))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7072 (cons a b)))
                                                 g7072))))
                                           (vector-ref
                                            ((lambda (j6965 k6966 f6967)
                                               (letrec ((g7079
                                                         (lambda (g6964)
                                                           (letrec ((g7080
                                                                     (letrec ((x7081
                                                                               (letrec ((x7082
                                                                                         (vector?/c
                                                                                          j6965
                                                                                          k6966
                                                                                          g6964)))
                                                                                 (f6967
                                                                                  x7082))))
                                                                       (integer?/c
                                                                        j6965
                                                                        k6966
                                                                        x7081))))
                                                             g7080))))
                                                 g7079))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7078
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7078))))
                                           (vector-set!
                                            ((lambda (j6970 k6971 f6972)
                                               (letrec ((g7084
                                                         (lambda (g6968 g6969)
                                                           (letrec ((g7085
                                                                     (letrec ((x7086
                                                                               (letrec ((x7088
                                                                                         (vector?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6968))
                                                                                        (x7087
                                                                                         (integer?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6969)))
                                                                                 (f6972
                                                                                  x7088
                                                                                  x7087))))
                                                                       (any/c
                                                                        j6970
                                                                        k6971
                                                                        x7086))))
                                                             g7085))))
                                                 g7084))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7083
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7083))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7089 #t)) g7089)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7090
                                                        (letrec ((x7091
                                                                  (letrec ((x7092
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7092))))
                                                          (cdr x7091))))
                                                g7090)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7093
                                                        (letrec ((x7096
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7096)))
                                                       (g7094
                                                        (letrec ((x7097
                                                                  (list? l)))
                                                          (assert x7097)))
                                                       (g7095
                                                        (letrec ((x-cnd7098
                                                                  (null? l)))
                                                          (if x-cnd7098
                                                            '()
                                                            (letrec ((x7101
                                                                      (letrec ((x7102
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7102)))
                                                                     (x7099
                                                                      (letrec ((x7100
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7100))))
                                                              (cons
                                                               x7101
                                                               x7099))))))
                                                g7095)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7103
                                                        (letrec ((x7104
                                                                  (car x)))
                                                          (cdr x7104))))
                                                g7103)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7105
                                                        (letrec ((x7106
                                                                  (letrec ((x7107
                                                                            (letrec ((x7108
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7108))))
                                                                    (cdr
                                                                     x7107))))
                                                          (car x7106))))
                                                g7105)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7109
                                                        (letrec ((x7110
                                                                  (letrec ((x7111
                                                                            (letrec ((x7112
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7112))))
                                                                    (car
                                                                     x7111))))
                                                          (cdr x7110))))
                                                g7109)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7113
                                                        (letrec ((x7116
                                                                  (string?
                                                                   filename)))
                                                          (assert x7116)))
                                                       (g7114
                                                        (letrec ((x7117
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7117)))
                                                       (g7115
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7118
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7119 res))
                                                            g7119))))
                                                g7115)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7120
                                                        (letrec ((x7121
                                                                  (letrec ((x7122
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7122))))
                                                          (car x7121))))
                                                g7120)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7123
                                                        (letrec ((x7124
                                                                  (letrec ((x7125
                                                                            (letrec ((x7126
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7126))))
                                                                    (car
                                                                     x7125))))
                                                          (cdr x7124))))
                                                g7123)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7127
                                                        (letrec ((x7129
                                                                  (list? l)))
                                                          (assert x7129)))
                                                       (g7128
                                                        (letrec ((x-cnd7130
                                                                  (null? l)))
                                                          (if x-cnd7130
                                                            #f
                                                            (letrec ((x-cnd7131
                                                                      (letrec ((x7132
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7132
                                                                         k))))
                                                              (if x-cnd7131
                                                                (car l)
                                                                (letrec ((x7133
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7133))))))))
                                                g7128)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7134
                                                        (letrec ((x7135
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7135))))
                                                g7134)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7136
                                                        (letrec ((x7138
                                                                  (list? l)))
                                                          (assert x7138)))
                                                       (g7137
                                                        (letrec ((x-cnd7139
                                                                  (null? l)))
                                                          (if x-cnd7139
                                                            ""
                                                            (letrec ((x7142
                                                                      (letrec ((x7143
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7143)))
                                                                     (x7140
                                                                      (letrec ((x7141
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7141))))
                                                              (string-append
                                                               x7142
                                                               x7140))))))
                                                g7137)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7144
                                                        (letrec ((x7147
                                                                  (char? c1)))
                                                          (assert x7147)))
                                                       (g7145
                                                        (letrec ((x7148
                                                                  (char? c2)))
                                                          (assert x7148)))
                                                       (g7146
                                                        (letrec ((val6887
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7149
                                                                    (if val6887
                                                                      val6887
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7149))))
                                                g7146)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7150
                                                        (letrec ((x7151
                                                                  (letrec ((x7152
                                                                            (letrec ((x7153
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7153))))
                                                                    (cdr
                                                                     x7152))))
                                                          (cdr x7151))))
                                                g7150)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7154
                                                        (letrec ((x7157
                                                                  (list? l)))
                                                          (assert x7157)))
                                                       (g7155
                                                        (letrec ((x7158
                                                                  (numer?)))
                                                          (assert x7158)))
                                                       (g7156
                                                        (letrec ((x-cnd7159
                                                                  (zero? k)))
                                                          (if x-cnd7159
                                                            x
                                                            (letrec ((x7161
                                                                      (cdr x))
                                                                     (x7160
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7161
                                                               x7160))))))
                                                g7156)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7162 '())) g7162)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7163
                                                        (letrec ((x-cnd7164
                                                                  (letrec ((x7165
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7165))))
                                                          (if x-cnd7164
                                                            (letrec ((x7166
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7166))
                                                            #f))))
                                                g7163)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7167
                                                        (letrec ((x7169
                                                                  (number? x)))
                                                          (assert x7169)))
                                                       (g7168
                                                        (letrec ((val6888
                                                                  (< x y)))
                                                          (letrec ((g7170
                                                                    (if val6888
                                                                      val6888
                                                                      (letrec ((val6889
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7171
                                                                                  (if val6889
                                                                                    val6889
                                                                                    #f)))
                                                                          g7171)))))
                                                            g7170))))
                                                g7168)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7172
                                                        (letrec ((val6890
                                                                  (letrec ((x7173
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7173
                                                                     9))))
                                                          (letrec ((g7174
                                                                    (if val6890
                                                                      val6890
                                                                      (letrec ((val6891
                                                                                (letrec ((x7175
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7175
                                                                                   10))))
                                                                        (letrec ((g7176
                                                                                  (if val6891
                                                                                    val6891
                                                                                    (letrec ((x7177
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7177
                                                                                       32)))))
                                                                          g7176)))))
                                                            g7174))))
                                                g7172)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7178
                                                        (letrec ((x7179
                                                                  (letrec ((x7180
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7180))))
                                                          (cdr x7179))))
                                                g7178)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7181
                                                        (letrec ((x7183
                                                                  (number? x)))
                                                          (assert x7183)))
                                                       (g7182 (> x 0)))
                                                g7182)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7184 #f)) g7184)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7185
                                                        (letrec ((x7186
                                                                  (cdr x)))
                                                          (cdr x7186))))
                                                g7185)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7187
                                                        (letrec ((x7189
                                                                  (number? x)))
                                                          (assert x7189)))
                                                       (g7188
                                                        (letrec ((x-cnd7190
                                                                  (< x 0)))
                                                          (if x-cnd7190
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7188)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7191
                                                        (letrec ((val6892
                                                                  (eq? a b)))
                                                          (letrec ((g7192
                                                                    (if val6892
                                                                      val6892
                                                                      (letrec ((val6893
                                                                                (letrec ((x7194
                                                                                          (null?
                                                                                           a))
                                                                                         (x7193
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7194
                                                                                       x7193))))
                                                                        (letrec ((g7195
                                                                                  (if val6893
                                                                                    val6893
                                                                                    (letrec ((val6894
                                                                                              (letrec ((x7198
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7197
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7196
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7198
                                                                                                     x7197
                                                                                                     x7196))))
                                                                                      (letrec ((g7199
                                                                                                (if val6894
                                                                                                  val6894
                                                                                                  (letrec ((val6895
                                                                                                            (letrec ((x7207
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7206
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7203
                                                                                                                      (letrec ((x7205
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7204
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7205
                                                                                                                         x7204)))
                                                                                                                     (x7200
                                                                                                                      (letrec ((x7202
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7201
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7202
                                                                                                                         x7201))))
                                                                                                              (and x7207
                                                                                                                   x7206
                                                                                                                   x7203
                                                                                                                   x7200))))
                                                                                                    (letrec ((g7208
                                                                                                              (if val6895
                                                                                                                val6895
                                                                                                                (letrec ((x7227
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7226
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7209
                                                                                                                          (letrec ((x7223
                                                                                                                                    (letrec ((x7224
                                                                                                                                              (letrec ((x7225
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7225))))
                                                                                                                                      (x7224)))
                                                                                                                                   (x7210
                                                                                                                                    (letrec ((x7221
                                                                                                                                              (letrec ((x7222
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7222
                                                                                                                                                 n)))
                                                                                                                                             (x7211
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7212
                                                                                                                                                                    (letrec ((x7219
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7213
                                                                                                                                                                              (letrec ((x7216
                                                                                                                                                                                        (letrec ((x7218
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7217
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7218
                                                                                                                                                                                           x7217)))
                                                                                                                                                                                       (x7214
                                                                                                                                                                                        (letrec ((x7215
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7215))))
                                                                                                                                                                                (and x7216
                                                                                                                                                                                     x7214))))
                                                                                                                                                                      (or x7219
                                                                                                                                                                          x7213))))
                                                                                                                                                            g7212))))
                                                                                                                                                (letrec ((g7220
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7220))))
                                                                                                                                      (and x7221
                                                                                                                                           x7211))))
                                                                                                                            (let x7223 x7210))))
                                                                                                                  (and x7227
                                                                                                                       x7226
                                                                                                                       x7209)))))
                                                                                                      g7208)))))
                                                                                        g7199)))))
                                                                          g7195)))))
                                                            g7192))))
                                                g7191)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7228
                                                        (letrec ((x7229
                                                                  (letrec ((x7230
                                                                            (letrec ((x7231
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7231))))
                                                                    (car
                                                                     x7230))))
                                                          (cdr x7229))))
                                                g7228)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7232
                                                        (letrec ((x7233
                                                                  (letrec ((x7234
                                                                            (letrec ((x7235
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7235))))
                                                                    (car
                                                                     x7234))))
                                                          (car x7233))))
                                                g7232)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7236 (eq? x y)))
                                                g7236)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7237
                                                        (letrec ((x7239
                                                                  (number? x)))
                                                          (assert x7239)))
                                                       (g7238
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7240
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7241
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7241)))))
                                                            g7240))))
                                                g7238)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7242
                                                        (letrec ((x7245
                                                                  (string?
                                                                   filename)))
                                                          (assert x7245)))
                                                       (g7243
                                                        (letrec ((x7246
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7246)))
                                                       (g7244
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7247
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7248 res))
                                                            g7248))))
                                                g7244)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7249 (cons x '())))
                                                g7249)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7250
                                                        (letrec ((x7253
                                                                  (char? c1)))
                                                          (assert x7253)))
                                                       (g7251
                                                        (letrec ((x7254
                                                                  (char? c2)))
                                                          (assert x7254)))
                                                       (g7252
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7255
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7255))))
                                                g7252)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7256
                                                        (letrec ((x7257
                                                                  (letrec ((x7258
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7258))))
                                                          (cdr x7257))))
                                                g7256)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7259
                                                        (letrec ((x7260
                                                                  (letrec ((x7261
                                                                            (letrec ((x7262
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7262))))
                                                                    (car
                                                                     x7261))))
                                                          (cdr x7260))))
                                                g7259)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7263
                                                        (letrec ((x7264
                                                                  (letrec ((x7265
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7265))))
                                                          (car x7264))))
                                                g7263)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7266
                                                        (letrec ((x7267
                                                                  (letrec ((x7268
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7268))))
                                                          (car x7267))))
                                                g7266)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7269
                                                        (letrec ((x7272
                                                                  (char? c1)))
                                                          (assert x7272)))
                                                       (g7270
                                                        (letrec ((x7273
                                                                  (char? c2)))
                                                          (assert x7273)))
                                                       (g7271
                                                        (letrec ((x7274
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7274))))
                                                g7271)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7275
                                                        (letrec ((x7276
                                                                  (letrec ((x7277
                                                                            (letrec ((x7278
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7278))))
                                                                    (car
                                                                     x7277))))
                                                          (car x7276))))
                                                g7275)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7279
                                                        (letrec ((x7281
                                                                  (number? x)))
                                                          (assert x7281)))
                                                       (g7280 (< x 0)))
                                                g7280)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7282 (memq e l)))
                                                g7282)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7283
                                                        (letrec ((x7284
                                                                  (letrec ((x7285
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7285))))
                                                          (car x7284))))
                                                g7283)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7286 '())) g7286)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7287
                                                        (letrec ((x7289
                                                                  (list? l)))
                                                          (assert x7289)))
                                                       (g7288
                                                        (letrec ((x-cnd7290
                                                                  (null? l)))
                                                          (if x-cnd7290
                                                            '()
                                                            (letrec ((x7293
                                                                      (letrec ((x7294
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7294)))
                                                                     (x7291
                                                                      (letrec ((x7292
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7292))))
                                                              (append
                                                               x7293
                                                               x7291))))))
                                                g7288)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7295
                                                        (letrec ((x7296
                                                                  (letrec ((x7297
                                                                            (letrec ((x7298
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7298))))
                                                                    (car
                                                                     x7297))))
                                                          (car x7296))))
                                                g7295)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7299
                                                        (letrec ((x7300
                                                                  (letrec ((x7301
                                                                            (letrec ((x7302
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7302))))
                                                                    (cdr
                                                                     x7301))))
                                                          (cdr x7300))))
                                                g7299)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7303
                                                        (letrec ((x7305
                                                                  (number? x)))
                                                          (assert x7305)))
                                                       (g7304
                                                        (letrec ((x7306
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7306))))
                                                g7304)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7307
                                                        (letrec ((x7308
                                                                  (letrec ((x7309
                                                                            (letrec ((x7310
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7310))))
                                                                    (car
                                                                     x7309))))
                                                          (car x7308))))
                                                g7307)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7311
                                                        (letrec ((x7314
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7314)))
                                                       (g7312
                                                        (letrec ((x7315
                                                                  (list?
                                                                   args)))
                                                          (assert x7315)))
                                                       (g7313
                                                        (if cnd
                                                          (letrec ((g7316
                                                                    (proc)))
                                                            g7316)
                                                          (if cnd
                                                            (letrec ((g7317
                                                                      (letrec ((x7318
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7318))))
                                                              g7317)
                                                            (if cnd
                                                              (letrec ((g7319
                                                                        (letrec ((x7321
                                                                                  (car
                                                                                   args))
                                                                                 (x7320
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7321
                                                                           x7320))))
                                                                g7319)
                                                              (if cnd
                                                                (letrec ((g7322
                                                                          (letrec ((x7325
                                                                                    (car
                                                                                     args))
                                                                                   (x7324
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7323
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7325
                                                                             x7324
                                                                             x7323))))
                                                                  g7322)
                                                                (if cnd
                                                                  (letrec ((g7326
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
                                                                                       args)))
                                                                              (proc
                                                                               x7330
                                                                               x7329
                                                                               x7328
                                                                               x7327))))
                                                                    g7326)
                                                                  (if cnd
                                                                    (letrec ((g7331
                                                                              (letrec ((x7337
                                                                                        (car
                                                                                         args))
                                                                                       (x7336
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7335
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7334
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7332
                                                                                        (letrec ((x7333
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7333))))
                                                                                (proc
                                                                                 x7337
                                                                                 x7336
                                                                                 x7335
                                                                                 x7334
                                                                                 x7332))))
                                                                      g7331)
                                                                    (if cnd
                                                                      (letrec ((g7338
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
                                                                                             x7340))))
                                                                                  (proc
                                                                                   x7346
                                                                                   x7345
                                                                                   x7344
                                                                                   x7343
                                                                                   x7341
                                                                                   x7339))))
                                                                        g7338)
                                                                      (if cnd
                                                                        (letrec ((g7347
                                                                                  (letrec ((x7357
                                                                                            (car
                                                                                             args))
                                                                                           (x7356
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7355
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7354
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7352
                                                                                            (letrec ((x7353
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7353)))
                                                                                           (x7350
                                                                                            (letrec ((x7351
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7351)))
                                                                                           (x7348
                                                                                            (letrec ((x7349
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7349))))
                                                                                    (proc
                                                                                     x7357
                                                                                     x7356
                                                                                     x7355
                                                                                     x7354
                                                                                     x7352
                                                                                     x7350
                                                                                     x7348))))
                                                                          g7347)
                                                                        (letrec ((g7358
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7358)))))))))))
                                                g7313)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7359
                                                        (letrec ((x7361
                                                                  (list? l)))
                                                          (assert x7361)))
                                                       (g7360
                                                        (letrec ((x-cnd7362
                                                                  (null? l)))
                                                          (if x-cnd7362
                                                            #f
                                                            (letrec ((x-cnd7363
                                                                      (letrec ((x7364
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7364
                                                                         e))))
                                                              (if x-cnd7363
                                                                l
                                                                (letrec ((x7365
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7365))))))))
                                                g7360)))
                                           (cddddr
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
                                                          (cdr x7367))))
                                                g7366)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7370
                                                        (letrec ((x7371
                                                                  (letrec ((x7372
                                                                            (letrec ((x7373
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7373))))
                                                                    (cdr
                                                                     x7372))))
                                                          (car x7371))))
                                                g7370)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7374 (random 42)))
                                                g7374)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7375
                                                        (letrec ((x7377
                                                                  (number? x)))
                                                          (assert x7377)))
                                                       (g7376 (= x 0)))
                                                g7376)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7378
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7379
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7379))))
                                                g7378)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7380
                                                        (letrec ((x7381
                                                                  (cdr x)))
                                                          (car x7381))))
                                                g7380)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7382
                                                        (letrec ((val6900
                                                                  (letrec ((x7385
                                                                            (pair?
                                                                             l))
                                                                           (x7383
                                                                            (letrec ((x7384
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7384))))
                                                                    (and x7385
                                                                         x7383))))
                                                          (letrec ((g7386
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7386))))
                                                g7382)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7387
                                                        (letrec ((x7388
                                                                  (letrec ((x7389
                                                                            (letrec ((x7390
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7390))))
                                                                    (cdr
                                                                     x7389))))
                                                          (cdr x7388))))
                                                g7387)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7391
                                                        (letrec ((x-cnd7392
                                                                  (letrec ((x7393
                                                                            #\0))
                                                                    (char<=?
                                                                     x7393
                                                                     c))))
                                                          (if x-cnd7392
                                                            (letrec ((x7394
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7394))
                                                            #f))))
                                                g7391)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7395
                                                        (letrec ((x7397
                                                                  (list? l)))
                                                          (assert x7397)))
                                                       (g7396
                                                        (letrec ((x-cnd7398
                                                                  (null? l)))
                                                          (if x-cnd7398
                                                            #f
                                                            (letrec ((x-cnd7399
                                                                      (letrec ((x7400
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7400
                                                                         k))))
                                                              (if x-cnd7399
                                                                (car l)
                                                                (letrec ((x7401
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7401))))))))
                                                g7396)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7402 (if x #f #t)))
                                                g7402)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7403 (append l1 l2)))
                                                g7403)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7404
                                                        (letrec ((x7406
                                                                  (list? l)))
                                                          (assert x7406)))
                                                       (g7405
                                                        (letrec ((x-cnd7407
                                                                  (null? l)))
                                                          (if x-cnd7407
                                                            #f
                                                            (letrec ((x-cnd7408
                                                                      (letrec ((x7409
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7409
                                                                         e))))
                                                              (if x-cnd7408
                                                                l
                                                                (letrec ((x7410
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7410))))))))
                                                g7405)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7411
                                                        (letrec ((x7412
                                                                  (letrec ((x7413
                                                                            (letrec ((x7414
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7414))))
                                                                    (cdr
                                                                     x7413))))
                                                          (car x7412))))
                                                g7411)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7415
                                                        (letrec ((x7417
                                                                  (list? l)))
                                                          (assert x7417)))
                                                       (g7416
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7418
                                                                              (letrec ((x-cnd7419
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7419
                                                                                  0
                                                                                  (letrec ((x7420
                                                                                            (letrec ((x7421
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7421))))
                                                                                    (+
                                                                                     1
                                                                                     x7420))))))
                                                                      g7418))))
                                                          (letrec ((g7422
                                                                    (rec l)))
                                                            g7422))))
                                                g7416)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7423
                                                        (letrec ((x7426
                                                                  (char? c1)))
                                                          (assert x7426)))
                                                       (g7424
                                                        (letrec ((x7427
                                                                  (char? c2)))
                                                          (assert x7427)))
                                                       (g7425
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7428
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7428))))
                                                g7425)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7429
                                                        (letrec ((x7430
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7430))))
                                                g7429)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7431
                                                        (letrec ((x7432
                                                                  (letrec ((x7433
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7433))))
                                                          (cdr x7432))))
                                                g7431)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7434
                                                        (letrec ((x7436
                                                                  (list? l)))
                                                          (assert x7436)))
                                                       (g7435
                                                        (letrec ((x-cnd7437
                                                                  (null? l)))
                                                          (if x-cnd7437
                                                            #f
                                                            (letrec ((x-cnd7438
                                                                      (letrec ((x7439
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7439
                                                                         k))))
                                                              (if x-cnd7438
                                                                (car l)
                                                                (letrec ((x7440
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7440))))))))
                                                g7435)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7441
                                                        (letrec ((x7442
                                                                  (car x)))
                                                          (car x7442))))
                                                g7441)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7443
                                                        (letrec ((x7446
                                                                  (char? c1)))
                                                          (assert x7446)))
                                                       (g7444
                                                        (letrec ((x7447
                                                                  (char? c2)))
                                                          (assert x7447)))
                                                       (g7445
                                                        (letrec ((x7448
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7448))))
                                                g7445)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7449
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7450
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7450))))
                                                g7449)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7451
                                                        (letrec ((x7454
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7454)))
                                                       (g7452
                                                        (letrec ((x7455
                                                                  (list? l)))
                                                          (assert x7455)))
                                                       (g7453
                                                        (letrec ((x-cnd7456
                                                                  (null? l)))
                                                          (if x-cnd7456
                                                            #t
                                                            (letrec ((x-cnd7457
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7457
                                                                (letrec ((g7458
                                                                          (letrec ((x7460
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7460)))
                                                                         (g7459
                                                                          (letrec ((x7461
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7461))))
                                                                  g7459)
                                                                '()))))))
                                                g7453)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7462
                                                        (letrec ((x7464
                                                                  (number? x)))
                                                          (assert x7464)))
                                                       (g7463
                                                        (letrec ((x-cnd7465
                                                                  (< x 0)))
                                                          (if x-cnd7465
                                                            (- 0 x)
                                                            x))))
                                                g7463)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7466
                                                        (letrec ((x7469
                                                                  (char? c1)))
                                                          (assert x7469)))
                                                       (g7467
                                                        (letrec ((x7470
                                                                  (char? c2)))
                                                          (assert x7470)))
                                                       (g7468
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7471
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7471))))
                                                g7468)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7472
                                                        (letrec ((x7473
                                                                  (letrec ((x7474
                                                                            (letrec ((x7475
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7475))))
                                                                    (cdr
                                                                     x7474))))
                                                          (car x7473))))
                                                g7472)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7476 #f)) g7476)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7477
                                                        (letrec ((x7479
                                                                  (letrec ((x7480
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7480)))
                                                                 (x7478
                                                                  (gcd m n)))
                                                          (/ x7479 x7478))))
                                                g7477)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7481
                                                        (letrec ((x7483
                                                                  (number? x)))
                                                          (assert x7483)))
                                                       (g7482
                                                        (letrec ((x7484
                                                                  (<= x y)))
                                                          (not x7484))))
                                                g7482)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7485
                                                        (letrec ((x7489
                                                                  (list? l)))
                                                          (assert x7489)))
                                                       (g7486
                                                        (letrec ((x7490
                                                                  (number?
                                                                   index)))
                                                          (assert x7490)))
                                                       (g7487
                                                        (letrec ((x7491
                                                                  (letrec ((x7492
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7492))))
                                                          (assert x7491)))
                                                       (g7488
                                                        (letrec ((x-cnd7493
                                                                  (= index 0)))
                                                          (if x-cnd7493
                                                            (car l)
                                                            (letrec ((x7495
                                                                      (cdr l))
                                                                     (x7494
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7495
                                                               x7494))))))
                                                g7488)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7496
                                                        (letrec ((x-cnd7497
                                                                  (= b 0)))
                                                          (if x-cnd7497
                                                            a
                                                            (letrec ((x7498
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7498))))))
                                                g7496)))
                                           (mappend
                                            (lambda (xs ys)
                                              (letrec ((g7499
                                                        (letrec ((x-cnd7500
                                                                  (empty? xs)))
                                                          (if x-cnd7500
                                                            ys
                                                            (letrec ((x7503
                                                                      (car xs))
                                                                     (x7501
                                                                      (letrec ((x7502
                                                                                (cdr
                                                                                 xs)))
                                                                        (mappend
                                                                         x7502
                                                                         ys))))
                                                              (cons
                                                               x7503
                                                               x7501))))))
                                                g7499)))
                                           (map-append
                                            (lambda (f xs)
                                              (letrec ((g7504
                                                        (letrec ((x-cnd7505
                                                                  (empty? xs)))
                                                          (if x-cnd7505
                                                            empty
                                                            (letrec ((x7508
                                                                      (letrec ((x7509
                                                                                (car
                                                                                 xs)))
                                                                        (f
                                                                         x7509)))
                                                                     (x7506
                                                                      (letrec ((x7507
                                                                                (cdr
                                                                                 xs)))
                                                                        (map-append
                                                                         f
                                                                         x7507))))
                                                              (mappend
                                                               x7508
                                                               x7506))))))
                                                g7504))))
                                    (letrec ((g7510
                                              (letrec ((x7514
                                                        ((lambda (j6975
                                                                  k6976
                                                                  f6977)
                                                           (letrec ((g7515
                                                                     (lambda (g6973
                                                                              g6974)
                                                                       (letrec ((g7516
                                                                                 (letrec ((x7526
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7517
                                                                                           (letrec ((x7520
                                                                                                     ((lambda (j6979
                                                                                                               k6980
                                                                                                               f6981)
                                                                                                        (letrec ((g7521
                                                                                                                  (lambda (g6978)
                                                                                                                    (letrec ((g7522
                                                                                                                              (letrec ((x7525
                                                                                                                                        (listof
                                                                                                                                         any/c))
                                                                                                                                       (x7523
                                                                                                                                        (letrec ((x7524
                                                                                                                                                  (any/c
                                                                                                                                                   j6979
                                                                                                                                                   k6980
                                                                                                                                                   g6978)))
                                                                                                                                          (f6981
                                                                                                                                           x7524))))
                                                                                                                                (x7525
                                                                                                                                 j6979
                                                                                                                                 k6980
                                                                                                                                 x7523))))
                                                                                                                      g7522))))
                                                                                                          g7521))
                                                                                                      j6975
                                                                                                      k6976
                                                                                                      g6973))
                                                                                                    (x7518
                                                                                                     (letrec ((x7519
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7519
                                                                                                        j6975
                                                                                                        k6976
                                                                                                        g6974))))
                                                                                             (f6977
                                                                                              x7520
                                                                                              x7518))))
                                                                                   (x7526
                                                                                    j6975
                                                                                    k6976
                                                                                    x7517))))
                                                                         g7516))))
                                                             g7515))
                                                         'module
                                                         'importer
                                                         map-append))
                                                       (x7513 (input))
                                                       (x7512 (input)))
                                                (x7514 x7513 x7512)))
                                             (g7511
                                              (letrec ((x7529
                                                        ((lambda (j6984
                                                                  k6985
                                                                  f6986)
                                                           (letrec ((g7530
                                                                     (lambda (g6982
                                                                              g6983)
                                                                       (letrec ((g7531
                                                                                 (letrec ((x7537
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7532
                                                                                           (letrec ((x7535
                                                                                                     (letrec ((x7536
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7536
                                                                                                        j6984
                                                                                                        k6985
                                                                                                        g6982)))
                                                                                                    (x7533
                                                                                                     (letrec ((x7534
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7534
                                                                                                        j6984
                                                                                                        k6985
                                                                                                        g6983))))
                                                                                             (f6986
                                                                                              x7535
                                                                                              x7533))))
                                                                                   (x7537
                                                                                    j6984
                                                                                    k6985
                                                                                    x7532))))
                                                                         g7531))))
                                                             g7530))
                                                         'module
                                                         'importer
                                                         mappend))
                                                       (x7528 (input))
                                                       (x7527 (input)))
                                                (x7529 x7528 x7527))))
                                      g7511))))
                          g7000))))
              g6998)))
    g6997))
