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
                                                                                                                (letrec ((x7224
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7223
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7209
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7210
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
                                                                                                                              g7210))))
                                                                                                                  (and x7224
                                                                                                                       x7223
                                                                                                                       x7209)))))
                                                                                                      g7208)))))
                                                                                        g7199)))))
                                                                          g7195)))))
                                                            g7192))))
                                                g7191)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7225
                                                        (letrec ((x7226
                                                                  (letrec ((x7227
                                                                            (letrec ((x7228
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7228))))
                                                                    (car
                                                                     x7227))))
                                                          (cdr x7226))))
                                                g7225)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7229
                                                        (letrec ((x7230
                                                                  (letrec ((x7231
                                                                            (letrec ((x7232
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7232))))
                                                                    (car
                                                                     x7231))))
                                                          (car x7230))))
                                                g7229)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7233 (eq? x y)))
                                                g7233)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7234
                                                        (letrec ((x7236
                                                                  (number? x)))
                                                          (assert x7236)))
                                                       (g7235
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7237
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7238
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7238)))))
                                                            g7237))))
                                                g7235)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7239
                                                        (letrec ((x7242
                                                                  (string?
                                                                   filename)))
                                                          (assert x7242)))
                                                       (g7240
                                                        (letrec ((x7243
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7243)))
                                                       (g7241
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7244
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7245 res))
                                                            g7245))))
                                                g7241)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7246 (cons x '())))
                                                g7246)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7247
                                                        (letrec ((x7250
                                                                  (char? c1)))
                                                          (assert x7250)))
                                                       (g7248
                                                        (letrec ((x7251
                                                                  (char? c2)))
                                                          (assert x7251)))
                                                       (g7249
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7252
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7252))))
                                                g7249)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7253
                                                        (letrec ((x7254
                                                                  (letrec ((x7255
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7255))))
                                                          (cdr x7254))))
                                                g7253)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7256
                                                        (letrec ((x7257
                                                                  (letrec ((x7258
                                                                            (letrec ((x7259
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7259))))
                                                                    (car
                                                                     x7258))))
                                                          (cdr x7257))))
                                                g7256)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7260
                                                        (letrec ((x7261
                                                                  (letrec ((x7262
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7262))))
                                                          (car x7261))))
                                                g7260)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7263
                                                        (letrec ((x7264
                                                                  (letrec ((x7265
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7265))))
                                                          (car x7264))))
                                                g7263)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7266
                                                        (letrec ((x7269
                                                                  (char? c1)))
                                                          (assert x7269)))
                                                       (g7267
                                                        (letrec ((x7270
                                                                  (char? c2)))
                                                          (assert x7270)))
                                                       (g7268
                                                        (letrec ((x7271
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7271))))
                                                g7268)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7272
                                                        (letrec ((x7273
                                                                  (letrec ((x7274
                                                                            (letrec ((x7275
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7275))))
                                                                    (car
                                                                     x7274))))
                                                          (car x7273))))
                                                g7272)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7276
                                                        (letrec ((x7278
                                                                  (number? x)))
                                                          (assert x7278)))
                                                       (g7277 (< x 0)))
                                                g7277)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7279 (memq e l)))
                                                g7279)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7280
                                                        (letrec ((x7281
                                                                  (letrec ((x7282
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7282))))
                                                          (car x7281))))
                                                g7280)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7283 '())) g7283)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7284
                                                        (letrec ((x7286
                                                                  (list? l)))
                                                          (assert x7286)))
                                                       (g7285
                                                        (letrec ((x-cnd7287
                                                                  (null? l)))
                                                          (if x-cnd7287
                                                            '()
                                                            (letrec ((x7290
                                                                      (letrec ((x7291
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7291)))
                                                                     (x7288
                                                                      (letrec ((x7289
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7289))))
                                                              (append
                                                               x7290
                                                               x7288))))))
                                                g7285)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7292
                                                        (letrec ((x7293
                                                                  (letrec ((x7294
                                                                            (letrec ((x7295
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7295))))
                                                                    (car
                                                                     x7294))))
                                                          (car x7293))))
                                                g7292)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7296
                                                        (letrec ((x7297
                                                                  (letrec ((x7298
                                                                            (letrec ((x7299
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7299))))
                                                                    (cdr
                                                                     x7298))))
                                                          (cdr x7297))))
                                                g7296)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7300
                                                        (letrec ((x7302
                                                                  (number? x)))
                                                          (assert x7302)))
                                                       (g7301
                                                        (letrec ((x7303
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7303))))
                                                g7301)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7304
                                                        (letrec ((x7305
                                                                  (letrec ((x7306
                                                                            (letrec ((x7307
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7307))))
                                                                    (car
                                                                     x7306))))
                                                          (car x7305))))
                                                g7304)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7308
                                                        (letrec ((x7311
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7311)))
                                                       (g7309
                                                        (letrec ((x7312
                                                                  (list?
                                                                   args)))
                                                          (assert x7312)))
                                                       (g7310
                                                        (if cnd
                                                          (letrec ((g7313
                                                                    (proc)))
                                                            g7313)
                                                          (if cnd
                                                            (letrec ((g7314
                                                                      (letrec ((x7315
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7315))))
                                                              g7314)
                                                            (if cnd
                                                              (letrec ((g7316
                                                                        (letrec ((x7318
                                                                                  (car
                                                                                   args))
                                                                                 (x7317
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7318
                                                                           x7317))))
                                                                g7316)
                                                              (if cnd
                                                                (letrec ((g7319
                                                                          (letrec ((x7322
                                                                                    (car
                                                                                     args))
                                                                                   (x7321
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7320
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7322
                                                                             x7321
                                                                             x7320))))
                                                                  g7319)
                                                                (if cnd
                                                                  (letrec ((g7323
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
                                                                                       args)))
                                                                              (proc
                                                                               x7327
                                                                               x7326
                                                                               x7325
                                                                               x7324))))
                                                                    g7323)
                                                                  (if cnd
                                                                    (letrec ((g7328
                                                                              (letrec ((x7334
                                                                                        (car
                                                                                         args))
                                                                                       (x7333
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7332
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7331
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7329
                                                                                        (letrec ((x7330
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7330))))
                                                                                (proc
                                                                                 x7334
                                                                                 x7333
                                                                                 x7332
                                                                                 x7331
                                                                                 x7329))))
                                                                      g7328)
                                                                    (if cnd
                                                                      (letrec ((g7335
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
                                                                                             x7337))))
                                                                                  (proc
                                                                                   x7343
                                                                                   x7342
                                                                                   x7341
                                                                                   x7340
                                                                                   x7338
                                                                                   x7336))))
                                                                        g7335)
                                                                      (if cnd
                                                                        (letrec ((g7344
                                                                                  (letrec ((x7354
                                                                                            (car
                                                                                             args))
                                                                                           (x7353
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7352
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7351
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7349
                                                                                            (letrec ((x7350
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7350)))
                                                                                           (x7347
                                                                                            (letrec ((x7348
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7348)))
                                                                                           (x7345
                                                                                            (letrec ((x7346
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7346))))
                                                                                    (proc
                                                                                     x7354
                                                                                     x7353
                                                                                     x7352
                                                                                     x7351
                                                                                     x7349
                                                                                     x7347
                                                                                     x7345))))
                                                                          g7344)
                                                                        (letrec ((g7355
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7355)))))))))))
                                                g7310)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7356
                                                        (letrec ((x7358
                                                                  (list? l)))
                                                          (assert x7358)))
                                                       (g7357
                                                        (letrec ((x-cnd7359
                                                                  (null? l)))
                                                          (if x-cnd7359
                                                            #f
                                                            (letrec ((x-cnd7360
                                                                      (letrec ((x7361
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7361
                                                                         e))))
                                                              (if x-cnd7360
                                                                l
                                                                (letrec ((x7362
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7362))))))))
                                                g7357)))
                                           (cddddr
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
                                                          (cdr x7364))))
                                                g7363)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7367
                                                        (letrec ((x7368
                                                                  (letrec ((x7369
                                                                            (letrec ((x7370
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7370))))
                                                                    (cdr
                                                                     x7369))))
                                                          (car x7368))))
                                                g7367)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7371 (random 42)))
                                                g7371)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7372
                                                        (letrec ((x7374
                                                                  (number? x)))
                                                          (assert x7374)))
                                                       (g7373 (= x 0)))
                                                g7373)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7375
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7376
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7376))))
                                                g7375)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7377
                                                        (letrec ((x7378
                                                                  (cdr x)))
                                                          (car x7378))))
                                                g7377)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7379
                                                        (letrec ((val6900
                                                                  (letrec ((x7382
                                                                            (pair?
                                                                             l))
                                                                           (x7380
                                                                            (letrec ((x7381
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7381))))
                                                                    (and x7382
                                                                         x7380))))
                                                          (letrec ((g7383
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7383))))
                                                g7379)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7384
                                                        (letrec ((x7385
                                                                  (letrec ((x7386
                                                                            (letrec ((x7387
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7387))))
                                                                    (cdr
                                                                     x7386))))
                                                          (cdr x7385))))
                                                g7384)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7388
                                                        (letrec ((x-cnd7389
                                                                  (letrec ((x7390
                                                                            #\0))
                                                                    (char<=?
                                                                     x7390
                                                                     c))))
                                                          (if x-cnd7389
                                                            (letrec ((x7391
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7391))
                                                            #f))))
                                                g7388)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7392
                                                        (letrec ((x7394
                                                                  (list? l)))
                                                          (assert x7394)))
                                                       (g7393
                                                        (letrec ((x-cnd7395
                                                                  (null? l)))
                                                          (if x-cnd7395
                                                            #f
                                                            (letrec ((x-cnd7396
                                                                      (letrec ((x7397
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7397
                                                                         k))))
                                                              (if x-cnd7396
                                                                (car l)
                                                                (letrec ((x7398
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7398))))))))
                                                g7393)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7399 (if x #f #t)))
                                                g7399)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7400 (append l1 l2)))
                                                g7400)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7401
                                                        (letrec ((x7403
                                                                  (list? l)))
                                                          (assert x7403)))
                                                       (g7402
                                                        (letrec ((x-cnd7404
                                                                  (null? l)))
                                                          (if x-cnd7404
                                                            #f
                                                            (letrec ((x-cnd7405
                                                                      (letrec ((x7406
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7406
                                                                         e))))
                                                              (if x-cnd7405
                                                                l
                                                                (letrec ((x7407
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7407))))))))
                                                g7402)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7408
                                                        (letrec ((x7409
                                                                  (letrec ((x7410
                                                                            (letrec ((x7411
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7411))))
                                                                    (cdr
                                                                     x7410))))
                                                          (car x7409))))
                                                g7408)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7412
                                                        (letrec ((x7414
                                                                  (list? l)))
                                                          (assert x7414)))
                                                       (g7413
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7415
                                                                              (letrec ((x-cnd7416
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7416
                                                                                  0
                                                                                  (letrec ((x7417
                                                                                            (letrec ((x7418
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7418))))
                                                                                    (+
                                                                                     1
                                                                                     x7417))))))
                                                                      g7415))))
                                                          (letrec ((g7419
                                                                    (rec l)))
                                                            g7419))))
                                                g7413)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7420
                                                        (letrec ((x7423
                                                                  (char? c1)))
                                                          (assert x7423)))
                                                       (g7421
                                                        (letrec ((x7424
                                                                  (char? c2)))
                                                          (assert x7424)))
                                                       (g7422
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7425
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7425))))
                                                g7422)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7426
                                                        (letrec ((x7427
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7427))))
                                                g7426)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7428
                                                        (letrec ((x7429
                                                                  (letrec ((x7430
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7430))))
                                                          (cdr x7429))))
                                                g7428)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7431
                                                        (letrec ((x7433
                                                                  (list? l)))
                                                          (assert x7433)))
                                                       (g7432
                                                        (letrec ((x-cnd7434
                                                                  (null? l)))
                                                          (if x-cnd7434
                                                            #f
                                                            (letrec ((x-cnd7435
                                                                      (letrec ((x7436
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7436
                                                                         k))))
                                                              (if x-cnd7435
                                                                (car l)
                                                                (letrec ((x7437
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7437))))))))
                                                g7432)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7438
                                                        (letrec ((x7439
                                                                  (car x)))
                                                          (car x7439))))
                                                g7438)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7440
                                                        (letrec ((x7443
                                                                  (char? c1)))
                                                          (assert x7443)))
                                                       (g7441
                                                        (letrec ((x7444
                                                                  (char? c2)))
                                                          (assert x7444)))
                                                       (g7442
                                                        (letrec ((x7445
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7445))))
                                                g7442)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7446
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7447
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7447))))
                                                g7446)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7448
                                                        (letrec ((x7451
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7451)))
                                                       (g7449
                                                        (letrec ((x7452
                                                                  (list? l)))
                                                          (assert x7452)))
                                                       (g7450
                                                        (letrec ((x-cnd7453
                                                                  (null? l)))
                                                          (if x-cnd7453
                                                            #t
                                                            (letrec ((x-cnd7454
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7454
                                                                (letrec ((g7455
                                                                          (letrec ((x7457
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7457)))
                                                                         (g7456
                                                                          (letrec ((x7458
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7458))))
                                                                  g7456)
                                                                '()))))))
                                                g7450)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7459
                                                        (letrec ((x7461
                                                                  (number? x)))
                                                          (assert x7461)))
                                                       (g7460
                                                        (letrec ((x-cnd7462
                                                                  (< x 0)))
                                                          (if x-cnd7462
                                                            (- 0 x)
                                                            x))))
                                                g7460)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7463
                                                        (letrec ((x7466
                                                                  (char? c1)))
                                                          (assert x7466)))
                                                       (g7464
                                                        (letrec ((x7467
                                                                  (char? c2)))
                                                          (assert x7467)))
                                                       (g7465
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7468
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7468))))
                                                g7465)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7469
                                                        (letrec ((x7470
                                                                  (letrec ((x7471
                                                                            (letrec ((x7472
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7472))))
                                                                    (cdr
                                                                     x7471))))
                                                          (car x7470))))
                                                g7469)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7473 #f)) g7473)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7474
                                                        (letrec ((x7476
                                                                  (letrec ((x7477
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7477)))
                                                                 (x7475
                                                                  (gcd m n)))
                                                          (/ x7476 x7475))))
                                                g7474)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7478
                                                        (letrec ((x7480
                                                                  (number? x)))
                                                          (assert x7480)))
                                                       (g7479
                                                        (letrec ((x7481
                                                                  (<= x y)))
                                                          (not x7481))))
                                                g7479)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7482
                                                        (letrec ((x7486
                                                                  (list? l)))
                                                          (assert x7486)))
                                                       (g7483
                                                        (letrec ((x7487
                                                                  (number?
                                                                   index)))
                                                          (assert x7487)))
                                                       (g7484
                                                        (letrec ((x7488
                                                                  (letrec ((x7489
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7489))))
                                                          (assert x7488)))
                                                       (g7485
                                                        (letrec ((x-cnd7490
                                                                  (= index 0)))
                                                          (if x-cnd7490
                                                            (car l)
                                                            (letrec ((x7492
                                                                      (cdr l))
                                                                     (x7491
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7492
                                                               x7491))))))
                                                g7485)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7493
                                                        (letrec ((x-cnd7494
                                                                  (= b 0)))
                                                          (if x-cnd7494
                                                            a
                                                            (letrec ((x7495
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7495))))))
                                                g7493)))
                                           (mappend
                                            (lambda (xs ys)
                                              (letrec ((g7496
                                                        (letrec ((x-cnd7497
                                                                  (empty? xs)))
                                                          (if x-cnd7497
                                                            ys
                                                            (letrec ((x7500
                                                                      (car xs))
                                                                     (x7498
                                                                      (letrec ((x7499
                                                                                (cdr
                                                                                 xs)))
                                                                        (mappend
                                                                         x7499
                                                                         ys))))
                                                              (cons
                                                               x7500
                                                               x7498))))))
                                                g7496)))
                                           (map-append
                                            (lambda (f xs)
                                              (letrec ((g7501
                                                        (letrec ((x-cnd7502
                                                                  (empty? xs)))
                                                          (if x-cnd7502
                                                            empty
                                                            (letrec ((x7505
                                                                      (letrec ((x7506
                                                                                (car
                                                                                 xs)))
                                                                        (f
                                                                         x7506)))
                                                                     (x7503
                                                                      (letrec ((x7504
                                                                                (cdr
                                                                                 xs)))
                                                                        (map-append
                                                                         f
                                                                         x7504))))
                                                              (mappend
                                                               x7505
                                                               x7503))))))
                                                g7501))))
                                    (letrec ((g7507
                                              (letrec ((x7511
                                                        ((lambda (j6975
                                                                  k6976
                                                                  f6977)
                                                           (letrec ((g7512
                                                                     (lambda (g6973
                                                                              g6974)
                                                                       (letrec ((g7513
                                                                                 (letrec ((x7523
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7514
                                                                                           (letrec ((x7517
                                                                                                     ((lambda (j6979
                                                                                                               k6980
                                                                                                               f6981)
                                                                                                        (letrec ((g7518
                                                                                                                  (lambda (g6978)
                                                                                                                    (letrec ((g7519
                                                                                                                              (letrec ((x7522
                                                                                                                                        (listof
                                                                                                                                         any/c))
                                                                                                                                       (x7520
                                                                                                                                        (letrec ((x7521
                                                                                                                                                  (any/c
                                                                                                                                                   j6979
                                                                                                                                                   k6980
                                                                                                                                                   g6978)))
                                                                                                                                          (f6981
                                                                                                                                           x7521))))
                                                                                                                                (x7522
                                                                                                                                 j6979
                                                                                                                                 k6980
                                                                                                                                 x7520))))
                                                                                                                      g7519))))
                                                                                                          g7518))
                                                                                                      j6975
                                                                                                      k6976
                                                                                                      g6973))
                                                                                                    (x7515
                                                                                                     (letrec ((x7516
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7516
                                                                                                        j6975
                                                                                                        k6976
                                                                                                        g6974))))
                                                                                             (f6977
                                                                                              x7517
                                                                                              x7515))))
                                                                                   (x7523
                                                                                    j6975
                                                                                    k6976
                                                                                    x7514))))
                                                                         g7513))))
                                                             g7512))
                                                         'module
                                                         'importer
                                                         map-append))
                                                       (x7510 (input))
                                                       (x7509 (input)))
                                                (x7511 x7510 x7509)))
                                             (g7508
                                              (letrec ((x7526
                                                        ((lambda (j6984
                                                                  k6985
                                                                  f6986)
                                                           (letrec ((g7527
                                                                     (lambda (g6982
                                                                              g6983)
                                                                       (letrec ((g7528
                                                                                 (letrec ((x7534
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7529
                                                                                           (letrec ((x7532
                                                                                                     (letrec ((x7533
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7533
                                                                                                        j6984
                                                                                                        k6985
                                                                                                        g6982)))
                                                                                                    (x7530
                                                                                                     (letrec ((x7531
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7531
                                                                                                        j6984
                                                                                                        k6985
                                                                                                        g6983))))
                                                                                             (f6986
                                                                                              x7532
                                                                                              x7530))))
                                                                                   (x7534
                                                                                    j6984
                                                                                    k6985
                                                                                    x7529))))
                                                                         g7528))))
                                                             g7527))
                                                         'module
                                                         'importer
                                                         mappend))
                                                       (x7525 (input))
                                                       (x7524 (input)))
                                                (x7526 x7525 x7524))))
                                      g7508))))
                          g7000))))
              g6998)))
    g6997))
