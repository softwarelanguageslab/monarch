(letrec ((any? (lambda (v) (letrec ((g6983 #t)) g6983)))
         (meta (lambda (v) (letrec ((g6984 v)) g6984)))
         (member
          (lambda (v lst)
            (letrec ((g6985
                      (letrec ((g6986
                                (letrec ((x-e6987 lst))
                                  (match
                                   x-e6987
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd6988 (eq? v v1)))
                                       (if x-cnd6988 #t (member v vs)))))))))
                        g6986)))
              g6985)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g6989 (lambda (v) (letrec ((g6990 v)) g6990)))) g6989)))
         (nonzero?
          (lambda (v)
            (letrec ((g6991 (letrec ((x6992 (= v 0))) (not x6992)))) g6991))))
  (letrec ((g6993
            (letrec ((g6994
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g6995 '())
                                 (g6996
                                  (letrec ((real/c
                                            (lambda (g6904 g6905 g6906)
                                              (letrec ((g6997
                                                        (letrec ((x-cnd6998
                                                                  (real?
                                                                   g6906)))
                                                          (if x-cnd6998
                                                            g6906
                                                            (blame
                                                             g6904
                                                             'real?)))))
                                                g6997)))
                                           (boolean?/c
                                            (lambda (g6907 g6908 g6909)
                                              (letrec ((g6999
                                                        (letrec ((x-cnd7000
                                                                  (boolean?
                                                                   g6909)))
                                                          (if x-cnd7000
                                                            g6909
                                                            (blame
                                                             g6907
                                                             'boolean?)))))
                                                g6999)))
                                           (number?/c
                                            (lambda (g6910 g6911 g6912)
                                              (letrec ((g7001
                                                        (letrec ((x-cnd7002
                                                                  (number?
                                                                   g6912)))
                                                          (if x-cnd7002
                                                            g6912
                                                            (blame
                                                             g6910
                                                             'number?)))))
                                                g7001)))
                                           (any/c
                                            (lambda (g6913 g6914 g6915)
                                              (letrec ((g7003
                                                        (letrec ((x-cnd7004
                                                                  ((lambda (v)
                                                                     (letrec ((g7005
                                                                               #t))
                                                                       g7005))
                                                                   g6915)))
                                                          (if x-cnd7004
                                                            g6915
                                                            (blame
                                                             g6913
                                                             '(lambda (v)
                                                                #t))))))
                                                g7003)))
                                           (any?/c
                                            (lambda (g6916 g6917 g6918)
                                              (letrec ((g7006
                                                        (letrec ((x-cnd7007
                                                                  ((lambda (v)
                                                                     (letrec ((g7008
                                                                               #t))
                                                                       g7008))
                                                                   g6918)))
                                                          (if x-cnd7007
                                                            g6918
                                                            (blame
                                                             g6916
                                                             '(lambda (v)
                                                                #t))))))
                                                g7006)))
                                           (cons?/c
                                            (lambda (g6919 g6920 g6921)
                                              (letrec ((g7009
                                                        (letrec ((x-cnd7010
                                                                  (pair?
                                                                   g6921)))
                                                          (if x-cnd7010
                                                            g6921
                                                            (blame
                                                             g6919
                                                             'pair?)))))
                                                g7009)))
                                           (pair?/c
                                            (lambda (g6922 g6923 g6924)
                                              (letrec ((g7011
                                                        (letrec ((x-cnd7012
                                                                  (pair?
                                                                   g6924)))
                                                          (if x-cnd7012
                                                            g6924
                                                            (blame
                                                             g6922
                                                             'pair?)))))
                                                g7011)))
                                           (integer?/c
                                            (lambda (g6925 g6926 g6927)
                                              (letrec ((g7013
                                                        (letrec ((x-cnd7014
                                                                  (integer?
                                                                   g6927)))
                                                          (if x-cnd7014
                                                            g6927
                                                            (blame
                                                             g6925
                                                             'integer?)))))
                                                g7013)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7015
                                                        (lambda (k j v)
                                                          (letrec ((g7016
                                                                    (letrec ((x-cnd7017
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7017
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7016))))
                                                g7015)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7018
                                                        (lambda (k j v)
                                                          (letrec ((g7019
                                                                    (letrec ((x-cnd7020
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7020
                                                                        '()
                                                                        (letrec ((x7024
                                                                                  (letrec ((x7025
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7025)))
                                                                                 (x7021
                                                                                  (letrec ((x7023
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7022
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7023
                                                                                     k
                                                                                     j
                                                                                     x7022))))
                                                                          (cons
                                                                           x7024
                                                                           x7021))))))
                                                            g7019))))
                                                g7018)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7026 #t)) g7026)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7027
                                                        (letrec ((x7028
                                                                  (= v 0)))
                                                          (not x7028))))
                                                g7027)))
                                           (nonzero?/c
                                            (lambda (g6928 g6929 g6930)
                                              (letrec ((g7029
                                                        (letrec ((x-cnd7030
                                                                  ((lambda (v)
                                                                     (letrec ((g7031
                                                                               (letrec ((x7032
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7032))))
                                                                       g7031))
                                                                   g6930)))
                                                          (if x-cnd7030
                                                            g6930
                                                            (blame
                                                             g6928
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7029)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7033 v)) g7033)))
                                           (+
                                            ((lambda (j6933 k6934 f6935)
                                               (letrec ((g7035
                                                         (lambda (g6931 g6932)
                                                           (letrec ((g7036
                                                                     (letrec ((x7037
                                                                               (letrec ((x7039
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6931))
                                                                                        (x7038
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6932)))
                                                                                 (f6935
                                                                                  x7039
                                                                                  x7038))))
                                                                       (number?/c
                                                                        j6933
                                                                        k6934
                                                                        x7037))))
                                                             g7036))))
                                                 g7035))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7034 (orig-+ a b)))
                                                 g7034))))
                                           (-
                                            ((lambda (j6938 k6939 f6940)
                                               (letrec ((g7041
                                                         (lambda (g6936 g6937)
                                                           (letrec ((g7042
                                                                     (letrec ((x7043
                                                                               (letrec ((x7045
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6936))
                                                                                        (x7044
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6937)))
                                                                                 (f6940
                                                                                  x7045
                                                                                  x7044))))
                                                                       (number?/c
                                                                        j6938
                                                                        k6939
                                                                        x7043))))
                                                             g7042))))
                                                 g7041))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7040 (orig-- a b)))
                                                 g7040))))
                                           (*
                                            ((lambda (j6943 k6944 f6945)
                                               (letrec ((g7047
                                                         (lambda (g6941 g6942)
                                                           (letrec ((g7048
                                                                     (letrec ((x7049
                                                                               (letrec ((x7051
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6941))
                                                                                        (x7050
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6942)))
                                                                                 (f6945
                                                                                  x7051
                                                                                  x7050))))
                                                                       (number?/c
                                                                        j6943
                                                                        k6944
                                                                        x7049))))
                                                             g7048))))
                                                 g7047))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7046 (orig-* a b)))
                                                 g7046))))
                                           (/
                                            ((lambda (j6948 k6949 f6950)
                                               (letrec ((g7053
                                                         (lambda (g6946 g6947)
                                                           (letrec ((g7054
                                                                     (letrec ((x7055
                                                                               (letrec ((x7057
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6946))
                                                                                        (x7056
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6947)))
                                                                                 (f6950
                                                                                  x7057
                                                                                  x7056))))
                                                                       (number?/c
                                                                        j6948
                                                                        k6949
                                                                        x7055))))
                                                             g7054))))
                                                 g7053))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7052 (orig-/ a b)))
                                                 g7052))))
                                           (car
                                            ((lambda (j6952 k6953 f6954)
                                               (letrec ((g7059
                                                         (lambda (g6951)
                                                           (letrec ((g7060
                                                                     (letrec ((x7061
                                                                               (letrec ((x7062
                                                                                         (pair?/c
                                                                                          j6952
                                                                                          k6953
                                                                                          g6951)))
                                                                                 (f6954
                                                                                  x7062))))
                                                                       (any/c
                                                                        j6952
                                                                        k6953
                                                                        x7061))))
                                                             g7060))))
                                                 g7059))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7058 (orig-car p)))
                                                 g7058))))
                                           (cdr
                                            ((lambda (j6956 k6957 f6958)
                                               (letrec ((g7064
                                                         (lambda (g6955)
                                                           (letrec ((g7065
                                                                     (letrec ((x7066
                                                                               (letrec ((x7067
                                                                                         (pair?/c
                                                                                          j6956
                                                                                          k6957
                                                                                          g6955)))
                                                                                 (f6958
                                                                                  x7067))))
                                                                       (any/c
                                                                        j6956
                                                                        k6957
                                                                        x7066))))
                                                             g7065))))
                                                 g7064))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7063 (orig-cdr p)))
                                                 g7063))))
                                           (cons
                                            ((lambda (j6961 k6962 f6963)
                                               (letrec ((g7069
                                                         (lambda (g6959 g6960)
                                                           (letrec ((g7070
                                                                     (letrec ((x7071
                                                                               (letrec ((x7073
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6959))
                                                                                        (x7072
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6960)))
                                                                                 (f6963
                                                                                  x7073
                                                                                  x7072))))
                                                                       (pair?/c
                                                                        j6961
                                                                        k6962
                                                                        x7071))))
                                                             g7070))))
                                                 g7069))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7068 (cons a b)))
                                                 g7068))))
                                           (vector-ref
                                            ((lambda (j6965 k6966 f6967)
                                               (letrec ((g7075
                                                         (lambda (g6964)
                                                           (letrec ((g7076
                                                                     (letrec ((x7077
                                                                               (letrec ((x7078
                                                                                         (vector?/c
                                                                                          j6965
                                                                                          k6966
                                                                                          g6964)))
                                                                                 (f6967
                                                                                  x7078))))
                                                                       (integer?/c
                                                                        j6965
                                                                        k6966
                                                                        x7077))))
                                                             g7076))))
                                                 g7075))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7074
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7074))))
                                           (vector-set!
                                            ((lambda (j6970 k6971 f6972)
                                               (letrec ((g7080
                                                         (lambda (g6968 g6969)
                                                           (letrec ((g7081
                                                                     (letrec ((x7082
                                                                               (letrec ((x7084
                                                                                         (vector?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6968))
                                                                                        (x7083
                                                                                         (integer?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6969)))
                                                                                 (f6972
                                                                                  x7084
                                                                                  x7083))))
                                                                       (any/c
                                                                        j6970
                                                                        k6971
                                                                        x7082))))
                                                             g7081))))
                                                 g7080))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7079
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7079))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7085 #t)) g7085)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7086
                                                        (letrec ((x7087
                                                                  (letrec ((x7088
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7088))))
                                                          (cdr x7087))))
                                                g7086)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7089
                                                        (letrec ((x7092
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7092)))
                                                       (g7090
                                                        (letrec ((x7093
                                                                  (list? l)))
                                                          (assert x7093)))
                                                       (g7091
                                                        (letrec ((x-cnd7094
                                                                  (null? l)))
                                                          (if x-cnd7094
                                                            '()
                                                            (letrec ((x7097
                                                                      (letrec ((x7098
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7098)))
                                                                     (x7095
                                                                      (letrec ((x7096
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7096))))
                                                              (cons
                                                               x7097
                                                               x7095))))))
                                                g7091)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7099
                                                        (letrec ((x7100
                                                                  (car x)))
                                                          (cdr x7100))))
                                                g7099)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7101
                                                        (letrec ((x7102
                                                                  (letrec ((x7103
                                                                            (letrec ((x7104
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7104))))
                                                                    (cdr
                                                                     x7103))))
                                                          (car x7102))))
                                                g7101)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7105
                                                        (letrec ((x7106
                                                                  (letrec ((x7107
                                                                            (letrec ((x7108
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7108))))
                                                                    (car
                                                                     x7107))))
                                                          (cdr x7106))))
                                                g7105)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7109
                                                        (letrec ((x7112
                                                                  (string?
                                                                   filename)))
                                                          (assert x7112)))
                                                       (g7110
                                                        (letrec ((x7113
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7113)))
                                                       (g7111
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7114
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7115 res))
                                                            g7115))))
                                                g7111)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7116
                                                        (letrec ((x7117
                                                                  (letrec ((x7118
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7118))))
                                                          (car x7117))))
                                                g7116)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7119
                                                        (letrec ((x7120
                                                                  (letrec ((x7121
                                                                            (letrec ((x7122
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7122))))
                                                                    (car
                                                                     x7121))))
                                                          (cdr x7120))))
                                                g7119)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7123
                                                        (letrec ((x7125
                                                                  (list? l)))
                                                          (assert x7125)))
                                                       (g7124
                                                        (letrec ((x-cnd7126
                                                                  (null? l)))
                                                          (if x-cnd7126
                                                            #f
                                                            (letrec ((x-cnd7127
                                                                      (letrec ((x7128
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7128
                                                                         k))))
                                                              (if x-cnd7127
                                                                (car l)
                                                                (letrec ((x7129
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7129))))))))
                                                g7124)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7130
                                                        (letrec ((x7131
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7131))))
                                                g7130)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7132
                                                        (letrec ((x7134
                                                                  (list? l)))
                                                          (assert x7134)))
                                                       (g7133
                                                        (letrec ((x-cnd7135
                                                                  (null? l)))
                                                          (if x-cnd7135
                                                            ""
                                                            (letrec ((x7138
                                                                      (letrec ((x7139
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7139)))
                                                                     (x7136
                                                                      (letrec ((x7137
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7137))))
                                                              (string-append
                                                               x7138
                                                               x7136))))))
                                                g7133)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7140
                                                        (letrec ((x7143
                                                                  (char? c1)))
                                                          (assert x7143)))
                                                       (g7141
                                                        (letrec ((x7144
                                                                  (char? c2)))
                                                          (assert x7144)))
                                                       (g7142
                                                        (letrec ((val6887
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7145
                                                                    (if val6887
                                                                      val6887
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7145))))
                                                g7142)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7146
                                                        (letrec ((x7147
                                                                  (letrec ((x7148
                                                                            (letrec ((x7149
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7149))))
                                                                    (cdr
                                                                     x7148))))
                                                          (cdr x7147))))
                                                g7146)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7150
                                                        (letrec ((x7153
                                                                  (list? l)))
                                                          (assert x7153)))
                                                       (g7151
                                                        (letrec ((x7154
                                                                  (numer?)))
                                                          (assert x7154)))
                                                       (g7152
                                                        (letrec ((x-cnd7155
                                                                  (zero? k)))
                                                          (if x-cnd7155
                                                            x
                                                            (letrec ((x7157
                                                                      (cdr x))
                                                                     (x7156
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7157
                                                               x7156))))))
                                                g7152)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7158 '())) g7158)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7159
                                                        (letrec ((x-cnd7160
                                                                  (letrec ((x7161
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7161))))
                                                          (if x-cnd7160
                                                            (letrec ((x7162
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7162))
                                                            #f))))
                                                g7159)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7163
                                                        (letrec ((x7165
                                                                  (number? x)))
                                                          (assert x7165)))
                                                       (g7164
                                                        (letrec ((val6888
                                                                  (< x y)))
                                                          (letrec ((g7166
                                                                    (if val6888
                                                                      val6888
                                                                      (letrec ((val6889
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7167
                                                                                  (if val6889
                                                                                    val6889
                                                                                    #f)))
                                                                          g7167)))))
                                                            g7166))))
                                                g7164)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7168
                                                        (letrec ((val6890
                                                                  (letrec ((x7169
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7169
                                                                     9))))
                                                          (letrec ((g7170
                                                                    (if val6890
                                                                      val6890
                                                                      (letrec ((val6891
                                                                                (letrec ((x7171
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7171
                                                                                   10))))
                                                                        (letrec ((g7172
                                                                                  (if val6891
                                                                                    val6891
                                                                                    (letrec ((x7173
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7173
                                                                                       32)))))
                                                                          g7172)))))
                                                            g7170))))
                                                g7168)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7174
                                                        (letrec ((x7175
                                                                  (letrec ((x7176
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7176))))
                                                          (cdr x7175))))
                                                g7174)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7177
                                                        (letrec ((x7179
                                                                  (number? x)))
                                                          (assert x7179)))
                                                       (g7178 (> x 0)))
                                                g7178)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7180 #f)) g7180)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7181
                                                        (letrec ((x7182
                                                                  (cdr x)))
                                                          (cdr x7182))))
                                                g7181)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7183
                                                        (letrec ((x7185
                                                                  (number? x)))
                                                          (assert x7185)))
                                                       (g7184
                                                        (letrec ((x-cnd7186
                                                                  (< x 0)))
                                                          (if x-cnd7186
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7184)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7187
                                                        (letrec ((val6892
                                                                  (eq? a b)))
                                                          (letrec ((g7188
                                                                    (if val6892
                                                                      val6892
                                                                      (letrec ((val6893
                                                                                (letrec ((x7190
                                                                                          (null?
                                                                                           a))
                                                                                         (x7189
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7190
                                                                                       x7189))))
                                                                        (letrec ((g7191
                                                                                  (if val6893
                                                                                    val6893
                                                                                    (letrec ((val6894
                                                                                              (letrec ((x7194
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7193
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7192
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7194
                                                                                                     x7193
                                                                                                     x7192))))
                                                                                      (letrec ((g7195
                                                                                                (if val6894
                                                                                                  val6894
                                                                                                  (letrec ((val6895
                                                                                                            (letrec ((x7203
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7202
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7199
                                                                                                                      (letrec ((x7201
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7200
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7201
                                                                                                                         x7200)))
                                                                                                                     (x7196
                                                                                                                      (letrec ((x7198
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7197
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7198
                                                                                                                         x7197))))
                                                                                                              (and x7203
                                                                                                                   x7202
                                                                                                                   x7199
                                                                                                                   x7196))))
                                                                                                    (letrec ((g7204
                                                                                                              (if val6895
                                                                                                                val6895
                                                                                                                (letrec ((x7223
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7222
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7205
                                                                                                                          (letrec ((x7219
                                                                                                                                    (letrec ((x7220
                                                                                                                                              (letrec ((x7221
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7221))))
                                                                                                                                      (x7220)))
                                                                                                                                   (x7206
                                                                                                                                    (letrec ((x7217
                                                                                                                                              (letrec ((x7218
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7218
                                                                                                                                                 n)))
                                                                                                                                             (x7207
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7208
                                                                                                                                                                    (letrec ((x7215
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7209
                                                                                                                                                                              (letrec ((x7212
                                                                                                                                                                                        (letrec ((x7214
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7213
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7214
                                                                                                                                                                                           x7213)))
                                                                                                                                                                                       (x7210
                                                                                                                                                                                        (letrec ((x7211
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7211))))
                                                                                                                                                                                (and x7212
                                                                                                                                                                                     x7210))))
                                                                                                                                                                      (or x7215
                                                                                                                                                                          x7209))))
                                                                                                                                                            g7208))))
                                                                                                                                                (letrec ((g7216
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7216))))
                                                                                                                                      (and x7217
                                                                                                                                           x7207))))
                                                                                                                            (let x7219 x7206))))
                                                                                                                  (and x7223
                                                                                                                       x7222
                                                                                                                       x7205)))))
                                                                                                      g7204)))))
                                                                                        g7195)))))
                                                                          g7191)))))
                                                            g7188))))
                                                g7187)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7224
                                                        (letrec ((x7225
                                                                  (letrec ((x7226
                                                                            (letrec ((x7227
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7227))))
                                                                    (car
                                                                     x7226))))
                                                          (cdr x7225))))
                                                g7224)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7228
                                                        (letrec ((x7229
                                                                  (letrec ((x7230
                                                                            (letrec ((x7231
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7231))))
                                                                    (car
                                                                     x7230))))
                                                          (car x7229))))
                                                g7228)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7232 (eq? x y)))
                                                g7232)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7233
                                                        (letrec ((x7235
                                                                  (number? x)))
                                                          (assert x7235)))
                                                       (g7234
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7236
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7237
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7237)))))
                                                            g7236))))
                                                g7234)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7238
                                                        (letrec ((x7241
                                                                  (string?
                                                                   filename)))
                                                          (assert x7241)))
                                                       (g7239
                                                        (letrec ((x7242
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7242)))
                                                       (g7240
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7243
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7244 res))
                                                            g7244))))
                                                g7240)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7245 (cons x '())))
                                                g7245)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7246
                                                        (letrec ((x7249
                                                                  (char? c1)))
                                                          (assert x7249)))
                                                       (g7247
                                                        (letrec ((x7250
                                                                  (char? c2)))
                                                          (assert x7250)))
                                                       (g7248
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7251
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7251))))
                                                g7248)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7252
                                                        (letrec ((x7253
                                                                  (letrec ((x7254
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7254))))
                                                          (cdr x7253))))
                                                g7252)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7255
                                                        (letrec ((x7256
                                                                  (letrec ((x7257
                                                                            (letrec ((x7258
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7258))))
                                                                    (car
                                                                     x7257))))
                                                          (cdr x7256))))
                                                g7255)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7259
                                                        (letrec ((x7260
                                                                  (letrec ((x7261
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7261))))
                                                          (car x7260))))
                                                g7259)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7262
                                                        (letrec ((x7263
                                                                  (letrec ((x7264
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7264))))
                                                          (car x7263))))
                                                g7262)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7265
                                                        (letrec ((x7268
                                                                  (char? c1)))
                                                          (assert x7268)))
                                                       (g7266
                                                        (letrec ((x7269
                                                                  (char? c2)))
                                                          (assert x7269)))
                                                       (g7267
                                                        (letrec ((x7270
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7270))))
                                                g7267)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7271
                                                        (letrec ((x7272
                                                                  (letrec ((x7273
                                                                            (letrec ((x7274
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7274))))
                                                                    (car
                                                                     x7273))))
                                                          (car x7272))))
                                                g7271)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7275
                                                        (letrec ((x7277
                                                                  (number? x)))
                                                          (assert x7277)))
                                                       (g7276 (< x 0)))
                                                g7276)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7278 (memq e l)))
                                                g7278)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7279
                                                        (letrec ((x7280
                                                                  (letrec ((x7281
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7281))))
                                                          (car x7280))))
                                                g7279)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7282 '())) g7282)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7283
                                                        (letrec ((x7285
                                                                  (list? l)))
                                                          (assert x7285)))
                                                       (g7284
                                                        (letrec ((x-cnd7286
                                                                  (null? l)))
                                                          (if x-cnd7286
                                                            '()
                                                            (letrec ((x7289
                                                                      (letrec ((x7290
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7290)))
                                                                     (x7287
                                                                      (letrec ((x7288
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7288))))
                                                              (append
                                                               x7289
                                                               x7287))))))
                                                g7284)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7291
                                                        (letrec ((x7292
                                                                  (letrec ((x7293
                                                                            (letrec ((x7294
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7294))))
                                                                    (car
                                                                     x7293))))
                                                          (car x7292))))
                                                g7291)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7295
                                                        (letrec ((x7296
                                                                  (letrec ((x7297
                                                                            (letrec ((x7298
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7298))))
                                                                    (cdr
                                                                     x7297))))
                                                          (cdr x7296))))
                                                g7295)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7299
                                                        (letrec ((x7301
                                                                  (number? x)))
                                                          (assert x7301)))
                                                       (g7300
                                                        (letrec ((x7302
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7302))))
                                                g7300)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7303
                                                        (letrec ((x7304
                                                                  (letrec ((x7305
                                                                            (letrec ((x7306
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7306))))
                                                                    (car
                                                                     x7305))))
                                                          (car x7304))))
                                                g7303)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7307
                                                        (letrec ((x7310
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7310)))
                                                       (g7308
                                                        (letrec ((x7311
                                                                  (list?
                                                                   args)))
                                                          (assert x7311)))
                                                       (g7309
                                                        (if cnd
                                                          (letrec ((g7312
                                                                    (proc)))
                                                            g7312)
                                                          (if cnd
                                                            (letrec ((g7313
                                                                      (letrec ((x7314
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7314))))
                                                              g7313)
                                                            (if cnd
                                                              (letrec ((g7315
                                                                        (letrec ((x7317
                                                                                  (car
                                                                                   args))
                                                                                 (x7316
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7317
                                                                           x7316))))
                                                                g7315)
                                                              (if cnd
                                                                (letrec ((g7318
                                                                          (letrec ((x7321
                                                                                    (car
                                                                                     args))
                                                                                   (x7320
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7319
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7321
                                                                             x7320
                                                                             x7319))))
                                                                  g7318)
                                                                (if cnd
                                                                  (letrec ((g7322
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
                                                                                       args)))
                                                                              (proc
                                                                               x7326
                                                                               x7325
                                                                               x7324
                                                                               x7323))))
                                                                    g7322)
                                                                  (if cnd
                                                                    (letrec ((g7327
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
                                                                                           x7329))))
                                                                                (proc
                                                                                 x7333
                                                                                 x7332
                                                                                 x7331
                                                                                 x7330
                                                                                 x7328))))
                                                                      g7327)
                                                                    (if cnd
                                                                      (letrec ((g7334
                                                                                (letrec ((x7342
                                                                                          (car
                                                                                           args))
                                                                                         (x7341
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7340
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7339
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7337
                                                                                          (letrec ((x7338
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7338)))
                                                                                         (x7335
                                                                                          (letrec ((x7336
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7336))))
                                                                                  (proc
                                                                                   x7342
                                                                                   x7341
                                                                                   x7340
                                                                                   x7339
                                                                                   x7337
                                                                                   x7335))))
                                                                        g7334)
                                                                      (if cnd
                                                                        (letrec ((g7343
                                                                                  (letrec ((x7353
                                                                                            (car
                                                                                             args))
                                                                                           (x7352
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7351
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7350
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7348
                                                                                            (letrec ((x7349
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7349)))
                                                                                           (x7346
                                                                                            (letrec ((x7347
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7347)))
                                                                                           (x7344
                                                                                            (letrec ((x7345
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7345))))
                                                                                    (proc
                                                                                     x7353
                                                                                     x7352
                                                                                     x7351
                                                                                     x7350
                                                                                     x7348
                                                                                     x7346
                                                                                     x7344))))
                                                                          g7343)
                                                                        (letrec ((g7354
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7354)))))))))))
                                                g7309)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7355
                                                        (letrec ((x7357
                                                                  (list? l)))
                                                          (assert x7357)))
                                                       (g7356
                                                        (letrec ((x-cnd7358
                                                                  (null? l)))
                                                          (if x-cnd7358
                                                            #f
                                                            (letrec ((x-cnd7359
                                                                      (letrec ((x7360
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7360
                                                                         e))))
                                                              (if x-cnd7359
                                                                l
                                                                (letrec ((x7361
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7361))))))))
                                                g7356)))
                                           (cddddr
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
                                                          (cdr x7363))))
                                                g7362)))
                                           (cadddr
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
                                                          (car x7367))))
                                                g7366)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7370 (random 42)))
                                                g7370)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7371
                                                        (letrec ((x7373
                                                                  (number? x)))
                                                          (assert x7373)))
                                                       (g7372 (= x 0)))
                                                g7372)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7374
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7375
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7375))))
                                                g7374)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7376
                                                        (letrec ((x7377
                                                                  (cdr x)))
                                                          (car x7377))))
                                                g7376)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7378
                                                        (letrec ((val6900
                                                                  (letrec ((x7381
                                                                            (pair?
                                                                             l))
                                                                           (x7379
                                                                            (letrec ((x7380
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7380))))
                                                                    (and x7381
                                                                         x7379))))
                                                          (letrec ((g7382
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7382))))
                                                g7378)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7383
                                                        (letrec ((x7384
                                                                  (letrec ((x7385
                                                                            (letrec ((x7386
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7386))))
                                                                    (cdr
                                                                     x7385))))
                                                          (cdr x7384))))
                                                g7383)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7387
                                                        (letrec ((x-cnd7388
                                                                  (letrec ((x7389
                                                                            #\0))
                                                                    (char<=?
                                                                     x7389
                                                                     c))))
                                                          (if x-cnd7388
                                                            (letrec ((x7390
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7390))
                                                            #f))))
                                                g7387)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
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
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7396
                                                                         k))))
                                                              (if x-cnd7395
                                                                (car l)
                                                                (letrec ((x7397
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7397))))))))
                                                g7392)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7398 (if x #f #t)))
                                                g7398)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7399 (append l1 l2)))
                                                g7399)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7400
                                                        (letrec ((x7402
                                                                  (list? l)))
                                                          (assert x7402)))
                                                       (g7401
                                                        (letrec ((x-cnd7403
                                                                  (null? l)))
                                                          (if x-cnd7403
                                                            #f
                                                            (letrec ((x-cnd7404
                                                                      (letrec ((x7405
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7405
                                                                         e))))
                                                              (if x-cnd7404
                                                                l
                                                                (letrec ((x7406
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7406))))))))
                                                g7401)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7407
                                                        (letrec ((x7408
                                                                  (letrec ((x7409
                                                                            (letrec ((x7410
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7410))))
                                                                    (cdr
                                                                     x7409))))
                                                          (car x7408))))
                                                g7407)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7411
                                                        (letrec ((x7413
                                                                  (list? l)))
                                                          (assert x7413)))
                                                       (g7412
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7414
                                                                              (letrec ((x-cnd7415
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7415
                                                                                  0
                                                                                  (letrec ((x7416
                                                                                            (letrec ((x7417
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7417))))
                                                                                    (+
                                                                                     1
                                                                                     x7416))))))
                                                                      g7414))))
                                                          (letrec ((g7418
                                                                    (rec l)))
                                                            g7418))))
                                                g7412)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7419
                                                        (letrec ((x7422
                                                                  (char? c1)))
                                                          (assert x7422)))
                                                       (g7420
                                                        (letrec ((x7423
                                                                  (char? c2)))
                                                          (assert x7423)))
                                                       (g7421
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7424
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7424))))
                                                g7421)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7425
                                                        (letrec ((x7426
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7426))))
                                                g7425)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7427
                                                        (letrec ((x7428
                                                                  (letrec ((x7429
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7429))))
                                                          (cdr x7428))))
                                                g7427)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7430
                                                        (letrec ((x7432
                                                                  (list? l)))
                                                          (assert x7432)))
                                                       (g7431
                                                        (letrec ((x-cnd7433
                                                                  (null? l)))
                                                          (if x-cnd7433
                                                            #f
                                                            (letrec ((x-cnd7434
                                                                      (letrec ((x7435
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7435
                                                                         k))))
                                                              (if x-cnd7434
                                                                (car l)
                                                                (letrec ((x7436
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7436))))))))
                                                g7431)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7437
                                                        (letrec ((x7438
                                                                  (car x)))
                                                          (car x7438))))
                                                g7437)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7439
                                                        (letrec ((x7442
                                                                  (char? c1)))
                                                          (assert x7442)))
                                                       (g7440
                                                        (letrec ((x7443
                                                                  (char? c2)))
                                                          (assert x7443)))
                                                       (g7441
                                                        (letrec ((x7444
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7444))))
                                                g7441)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7445
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7446
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7446))))
                                                g7445)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7447
                                                        (letrec ((x7450
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7450)))
                                                       (g7448
                                                        (letrec ((x7451
                                                                  (list? l)))
                                                          (assert x7451)))
                                                       (g7449
                                                        (letrec ((x-cnd7452
                                                                  (null? l)))
                                                          (if x-cnd7452
                                                            #t
                                                            (letrec ((x-cnd7453
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7453
                                                                (letrec ((g7454
                                                                          (letrec ((x7456
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7456)))
                                                                         (g7455
                                                                          (letrec ((x7457
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7457))))
                                                                  g7455)
                                                                '()))))))
                                                g7449)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7458
                                                        (letrec ((x7460
                                                                  (number? x)))
                                                          (assert x7460)))
                                                       (g7459
                                                        (letrec ((x-cnd7461
                                                                  (< x 0)))
                                                          (if x-cnd7461
                                                            (- 0 x)
                                                            x))))
                                                g7459)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7462
                                                        (letrec ((x7465
                                                                  (char? c1)))
                                                          (assert x7465)))
                                                       (g7463
                                                        (letrec ((x7466
                                                                  (char? c2)))
                                                          (assert x7466)))
                                                       (g7464
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7467
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7467))))
                                                g7464)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7468
                                                        (letrec ((x7469
                                                                  (letrec ((x7470
                                                                            (letrec ((x7471
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7471))))
                                                                    (cdr
                                                                     x7470))))
                                                          (car x7469))))
                                                g7468)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7472 #f)) g7472)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7473
                                                        (letrec ((x7475
                                                                  (letrec ((x7476
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7476)))
                                                                 (x7474
                                                                  (gcd m n)))
                                                          (/ x7475 x7474))))
                                                g7473)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7477
                                                        (letrec ((x7479
                                                                  (number? x)))
                                                          (assert x7479)))
                                                       (g7478
                                                        (letrec ((x7480
                                                                  (<= x y)))
                                                          (not x7480))))
                                                g7478)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7481
                                                        (letrec ((x7485
                                                                  (list? l)))
                                                          (assert x7485)))
                                                       (g7482
                                                        (letrec ((x7486
                                                                  (number?
                                                                   index)))
                                                          (assert x7486)))
                                                       (g7483
                                                        (letrec ((x7487
                                                                  (letrec ((x7488
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7488))))
                                                          (assert x7487)))
                                                       (g7484
                                                        (letrec ((x-cnd7489
                                                                  (= index 0)))
                                                          (if x-cnd7489
                                                            (car l)
                                                            (letrec ((x7491
                                                                      (cdr l))
                                                                     (x7490
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7491
                                                               x7490))))))
                                                g7484)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7492
                                                        (letrec ((x-cnd7493
                                                                  (= b 0)))
                                                          (if x-cnd7493
                                                            a
                                                            (letrec ((x7494
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7494))))))
                                                g7492)))
                                           (lock
                                            (lambda (st)
                                              (letrec ((g7495 1)) g7495)))
                                           (unlock
                                            (lambda (st)
                                              (letrec ((g7496 0)) g7496)))
                                           (f
                                            (lambda (n st)
                                              (letrec ((g7497
                                                        (letrec ((x-cnd7498
                                                                  (> n 0)))
                                                          (if x-cnd7498
                                                            (lock st)
                                                            st))))
                                                g7497)))
                                           (g
                                            (lambda (n st)
                                              (letrec ((g7499
                                                        (letrec ((x-cnd7500
                                                                  (> n 0)))
                                                          (if x-cnd7500
                                                            (unlock st)
                                                            st))))
                                                g7499)))
                                           (main
                                            (lambda (n)
                                              (letrec ((g7501
                                                        (letrec ((x7502
                                                                  (f n 0)))
                                                          (g n x7502))))
                                                g7501))))
                                    (letrec ((g7503
                                              (letrec ((x7505
                                                        ((lambda (j6974
                                                                  k6975
                                                                  f6976)
                                                           (letrec ((g7506
                                                                     (lambda (g6973)
                                                                       (letrec ((g7507
                                                                                 (letrec ((x7508
                                                                                           (letrec ((x7509
                                                                                                     (integer?/c
                                                                                                      j6974
                                                                                                      k6975
                                                                                                      g6973)))
                                                                                             (f6976
                                                                                              x7509))))
                                                                                   ((lambda (g6980
                                                                                             g6981
                                                                                             g6982)
                                                                                      (letrec ((g7510
                                                                                                (letrec ((x-cnd7511
                                                                                                          ((lambda (v6979)
                                                                                                             (letrec ((g7512
                                                                                                                       (eq?
                                                                                                                        0
                                                                                                                        v6979)))
                                                                                                               g7512))
                                                                                                           g6982)))
                                                                                                  (if x-cnd7511
                                                                                                    g6982
                                                                                                    (blame
                                                                                                     g6980
                                                                                                     '(lambda (v6979)
                                                                                                        (eq?
                                                                                                         0
                                                                                                         v6979)))))))
                                                                                        g7510))
                                                                                    j6974
                                                                                    k6975
                                                                                    x7508))))
                                                                         g7507))))
                                                             g7506))
                                                         'module
                                                         'importer
                                                         main))
                                                       (x7504 (input)))
                                                (x7505 x7504))))
                                      g7503))))
                          g6996))))
              g6994)))
    g6993))
