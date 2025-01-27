(letrec ((any? (lambda (v) (letrec ((g6991 #t)) g6991)))
         (meta (lambda (v) (letrec ((g6992 v)) g6992)))
         (member
          (lambda (v lst)
            (letrec ((g6993
                      (letrec ((g6994
                                (letrec ((x-e6995 lst))
                                  (match
                                   x-e6995
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd6996 (eq? v v1)))
                                       (if x-cnd6996 #t (member v vs)))))))))
                        g6994)))
              g6993)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g6997 (lambda (v) (letrec ((g6998 v)) g6998)))) g6997)))
         (nonzero?
          (lambda (v)
            (letrec ((g6999 (letrec ((x7000 (= v 0))) (not x7000)))) g6999))))
  (letrec ((g7001
            (letrec ((g7002
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7003 '())
                                 (g7004
                                  (letrec ((real/c
                                            (lambda (g6904 g6905 g6906)
                                              (letrec ((g7005
                                                        (letrec ((x-cnd7006
                                                                  (real?
                                                                   g6906)))
                                                          (if x-cnd7006
                                                            g6906
                                                            (blame
                                                             g6904
                                                             'real?)))))
                                                g7005)))
                                           (boolean?/c
                                            (lambda (g6907 g6908 g6909)
                                              (letrec ((g7007
                                                        (letrec ((x-cnd7008
                                                                  (boolean?
                                                                   g6909)))
                                                          (if x-cnd7008
                                                            g6909
                                                            (blame
                                                             g6907
                                                             'boolean?)))))
                                                g7007)))
                                           (number?/c
                                            (lambda (g6910 g6911 g6912)
                                              (letrec ((g7009
                                                        (letrec ((x-cnd7010
                                                                  (number?
                                                                   g6912)))
                                                          (if x-cnd7010
                                                            g6912
                                                            (blame
                                                             g6910
                                                             'number?)))))
                                                g7009)))
                                           (any/c
                                            (lambda (g6913 g6914 g6915)
                                              (letrec ((g7011
                                                        (letrec ((x-cnd7012
                                                                  ((lambda (v)
                                                                     (letrec ((g7013
                                                                               #t))
                                                                       g7013))
                                                                   g6915)))
                                                          (if x-cnd7012
                                                            g6915
                                                            (blame
                                                             g6913
                                                             '(lambda (v)
                                                                #t))))))
                                                g7011)))
                                           (any?/c
                                            (lambda (g6916 g6917 g6918)
                                              (letrec ((g7014
                                                        (letrec ((x-cnd7015
                                                                  ((lambda (v)
                                                                     (letrec ((g7016
                                                                               #t))
                                                                       g7016))
                                                                   g6918)))
                                                          (if x-cnd7015
                                                            g6918
                                                            (blame
                                                             g6916
                                                             '(lambda (v)
                                                                #t))))))
                                                g7014)))
                                           (cons?/c
                                            (lambda (g6919 g6920 g6921)
                                              (letrec ((g7017
                                                        (letrec ((x-cnd7018
                                                                  (pair?
                                                                   g6921)))
                                                          (if x-cnd7018
                                                            g6921
                                                            (blame
                                                             g6919
                                                             'pair?)))))
                                                g7017)))
                                           (pair?/c
                                            (lambda (g6922 g6923 g6924)
                                              (letrec ((g7019
                                                        (letrec ((x-cnd7020
                                                                  (pair?
                                                                   g6924)))
                                                          (if x-cnd7020
                                                            g6924
                                                            (blame
                                                             g6922
                                                             'pair?)))))
                                                g7019)))
                                           (integer?/c
                                            (lambda (g6925 g6926 g6927)
                                              (letrec ((g7021
                                                        (letrec ((x-cnd7022
                                                                  (integer?
                                                                   g6927)))
                                                          (if x-cnd7022
                                                            g6927
                                                            (blame
                                                             g6925
                                                             'integer?)))))
                                                g7021)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7023
                                                        (lambda (k j v)
                                                          (letrec ((g7024
                                                                    (letrec ((x-cnd7025
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7025
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7024))))
                                                g7023)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7026
                                                        (lambda (k j v)
                                                          (letrec ((g7027
                                                                    (letrec ((x-cnd7028
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7028
                                                                        '()
                                                                        (letrec ((x7032
                                                                                  (letrec ((x7033
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7033)))
                                                                                 (x7029
                                                                                  (letrec ((x7031
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7030
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7031
                                                                                     k
                                                                                     j
                                                                                     x7030))))
                                                                          (cons
                                                                           x7032
                                                                           x7029))))))
                                                            g7027))))
                                                g7026)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7034 #t)) g7034)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7035
                                                        (letrec ((x7036
                                                                  (= v 0)))
                                                          (not x7036))))
                                                g7035)))
                                           (nonzero?/c
                                            (lambda (g6928 g6929 g6930)
                                              (letrec ((g7037
                                                        (letrec ((x-cnd7038
                                                                  ((lambda (v)
                                                                     (letrec ((g7039
                                                                               (letrec ((x7040
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7040))))
                                                                       g7039))
                                                                   g6930)))
                                                          (if x-cnd7038
                                                            g6930
                                                            (blame
                                                             g6928
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7037)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7041 v)) g7041)))
                                           (+
                                            ((lambda (j6933 k6934 f6935)
                                               (letrec ((g7043
                                                         (lambda (g6931 g6932)
                                                           (letrec ((g7044
                                                                     (letrec ((x7045
                                                                               (letrec ((x7047
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6931))
                                                                                        (x7046
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6932)))
                                                                                 (f6935
                                                                                  x7047
                                                                                  x7046))))
                                                                       (number?/c
                                                                        j6933
                                                                        k6934
                                                                        x7045))))
                                                             g7044))))
                                                 g7043))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7042 (orig-+ a b)))
                                                 g7042))))
                                           (-
                                            ((lambda (j6938 k6939 f6940)
                                               (letrec ((g7049
                                                         (lambda (g6936 g6937)
                                                           (letrec ((g7050
                                                                     (letrec ((x7051
                                                                               (letrec ((x7053
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6936))
                                                                                        (x7052
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6937)))
                                                                                 (f6940
                                                                                  x7053
                                                                                  x7052))))
                                                                       (number?/c
                                                                        j6938
                                                                        k6939
                                                                        x7051))))
                                                             g7050))))
                                                 g7049))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7048 (orig-- a b)))
                                                 g7048))))
                                           (*
                                            ((lambda (j6943 k6944 f6945)
                                               (letrec ((g7055
                                                         (lambda (g6941 g6942)
                                                           (letrec ((g7056
                                                                     (letrec ((x7057
                                                                               (letrec ((x7059
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6941))
                                                                                        (x7058
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6942)))
                                                                                 (f6945
                                                                                  x7059
                                                                                  x7058))))
                                                                       (number?/c
                                                                        j6943
                                                                        k6944
                                                                        x7057))))
                                                             g7056))))
                                                 g7055))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7054 (orig-* a b)))
                                                 g7054))))
                                           (/
                                            ((lambda (j6948 k6949 f6950)
                                               (letrec ((g7061
                                                         (lambda (g6946 g6947)
                                                           (letrec ((g7062
                                                                     (letrec ((x7063
                                                                               (letrec ((x7065
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6946))
                                                                                        (x7064
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6947)))
                                                                                 (f6950
                                                                                  x7065
                                                                                  x7064))))
                                                                       (number?/c
                                                                        j6948
                                                                        k6949
                                                                        x7063))))
                                                             g7062))))
                                                 g7061))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7060 (orig-/ a b)))
                                                 g7060))))
                                           (car
                                            ((lambda (j6952 k6953 f6954)
                                               (letrec ((g7067
                                                         (lambda (g6951)
                                                           (letrec ((g7068
                                                                     (letrec ((x7069
                                                                               (letrec ((x7070
                                                                                         (pair?/c
                                                                                          j6952
                                                                                          k6953
                                                                                          g6951)))
                                                                                 (f6954
                                                                                  x7070))))
                                                                       (any/c
                                                                        j6952
                                                                        k6953
                                                                        x7069))))
                                                             g7068))))
                                                 g7067))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7066 (orig-car p)))
                                                 g7066))))
                                           (cdr
                                            ((lambda (j6956 k6957 f6958)
                                               (letrec ((g7072
                                                         (lambda (g6955)
                                                           (letrec ((g7073
                                                                     (letrec ((x7074
                                                                               (letrec ((x7075
                                                                                         (pair?/c
                                                                                          j6956
                                                                                          k6957
                                                                                          g6955)))
                                                                                 (f6958
                                                                                  x7075))))
                                                                       (any/c
                                                                        j6956
                                                                        k6957
                                                                        x7074))))
                                                             g7073))))
                                                 g7072))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7071 (orig-cdr p)))
                                                 g7071))))
                                           (cons
                                            ((lambda (j6961 k6962 f6963)
                                               (letrec ((g7077
                                                         (lambda (g6959 g6960)
                                                           (letrec ((g7078
                                                                     (letrec ((x7079
                                                                               (letrec ((x7081
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6959))
                                                                                        (x7080
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6960)))
                                                                                 (f6963
                                                                                  x7081
                                                                                  x7080))))
                                                                       (pair?/c
                                                                        j6961
                                                                        k6962
                                                                        x7079))))
                                                             g7078))))
                                                 g7077))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7076 (cons a b)))
                                                 g7076))))
                                           (vector-ref
                                            ((lambda (j6965 k6966 f6967)
                                               (letrec ((g7083
                                                         (lambda (g6964)
                                                           (letrec ((g7084
                                                                     (letrec ((x7085
                                                                               (letrec ((x7086
                                                                                         (vector?/c
                                                                                          j6965
                                                                                          k6966
                                                                                          g6964)))
                                                                                 (f6967
                                                                                  x7086))))
                                                                       (integer?/c
                                                                        j6965
                                                                        k6966
                                                                        x7085))))
                                                             g7084))))
                                                 g7083))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7082
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7082))))
                                           (vector-set!
                                            ((lambda (j6970 k6971 f6972)
                                               (letrec ((g7088
                                                         (lambda (g6968 g6969)
                                                           (letrec ((g7089
                                                                     (letrec ((x7090
                                                                               (letrec ((x7092
                                                                                         (vector?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6968))
                                                                                        (x7091
                                                                                         (integer?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6969)))
                                                                                 (f6972
                                                                                  x7092
                                                                                  x7091))))
                                                                       (any/c
                                                                        j6970
                                                                        k6971
                                                                        x7090))))
                                                             g7089))))
                                                 g7088))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7087
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7087))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7093 #t)) g7093)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7094
                                                        (letrec ((x7095
                                                                  (letrec ((x7096
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7096))))
                                                          (cdr x7095))))
                                                g7094)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7097
                                                        (letrec ((x7100
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7100)))
                                                       (g7098
                                                        (letrec ((x7101
                                                                  (list? l)))
                                                          (assert x7101)))
                                                       (g7099
                                                        (letrec ((x-cnd7102
                                                                  (null? l)))
                                                          (if x-cnd7102
                                                            '()
                                                            (letrec ((x7105
                                                                      (letrec ((x7106
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7106)))
                                                                     (x7103
                                                                      (letrec ((x7104
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7104))))
                                                              (cons
                                                               x7105
                                                               x7103))))))
                                                g7099)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7107
                                                        (letrec ((x7108
                                                                  (car x)))
                                                          (cdr x7108))))
                                                g7107)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7109
                                                        (letrec ((x7110
                                                                  (letrec ((x7111
                                                                            (letrec ((x7112
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7112))))
                                                                    (cdr
                                                                     x7111))))
                                                          (car x7110))))
                                                g7109)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7113
                                                        (letrec ((x7114
                                                                  (letrec ((x7115
                                                                            (letrec ((x7116
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7116))))
                                                                    (car
                                                                     x7115))))
                                                          (cdr x7114))))
                                                g7113)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7117
                                                        (letrec ((x7120
                                                                  (string?
                                                                   filename)))
                                                          (assert x7120)))
                                                       (g7118
                                                        (letrec ((x7121
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7121)))
                                                       (g7119
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7122
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7123 res))
                                                            g7123))))
                                                g7119)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7124
                                                        (letrec ((x7125
                                                                  (letrec ((x7126
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7126))))
                                                          (car x7125))))
                                                g7124)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7127
                                                        (letrec ((x7128
                                                                  (letrec ((x7129
                                                                            (letrec ((x7130
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7130))))
                                                                    (car
                                                                     x7129))))
                                                          (cdr x7128))))
                                                g7127)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7131
                                                        (letrec ((x7133
                                                                  (list? l)))
                                                          (assert x7133)))
                                                       (g7132
                                                        (letrec ((x-cnd7134
                                                                  (null? l)))
                                                          (if x-cnd7134
                                                            #f
                                                            (letrec ((x-cnd7135
                                                                      (letrec ((x7136
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7136
                                                                         k))))
                                                              (if x-cnd7135
                                                                (car l)
                                                                (letrec ((x7137
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7137))))))))
                                                g7132)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7138
                                                        (letrec ((x7139
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7139))))
                                                g7138)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7140
                                                        (letrec ((x7142
                                                                  (list? l)))
                                                          (assert x7142)))
                                                       (g7141
                                                        (letrec ((x-cnd7143
                                                                  (null? l)))
                                                          (if x-cnd7143
                                                            ""
                                                            (letrec ((x7146
                                                                      (letrec ((x7147
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7147)))
                                                                     (x7144
                                                                      (letrec ((x7145
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7145))))
                                                              (string-append
                                                               x7146
                                                               x7144))))))
                                                g7141)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7148
                                                        (letrec ((x7151
                                                                  (char? c1)))
                                                          (assert x7151)))
                                                       (g7149
                                                        (letrec ((x7152
                                                                  (char? c2)))
                                                          (assert x7152)))
                                                       (g7150
                                                        (letrec ((val6887
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7153
                                                                    (if val6887
                                                                      val6887
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7153))))
                                                g7150)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7154
                                                        (letrec ((x7155
                                                                  (letrec ((x7156
                                                                            (letrec ((x7157
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7157))))
                                                                    (cdr
                                                                     x7156))))
                                                          (cdr x7155))))
                                                g7154)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7158
                                                        (letrec ((x7161
                                                                  (list? l)))
                                                          (assert x7161)))
                                                       (g7159
                                                        (letrec ((x7162
                                                                  (numer?)))
                                                          (assert x7162)))
                                                       (g7160
                                                        (letrec ((x-cnd7163
                                                                  (zero? k)))
                                                          (if x-cnd7163
                                                            x
                                                            (letrec ((x7165
                                                                      (cdr x))
                                                                     (x7164
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7165
                                                               x7164))))))
                                                g7160)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7166 '())) g7166)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7167
                                                        (letrec ((x-cnd7168
                                                                  (letrec ((x7169
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7169))))
                                                          (if x-cnd7168
                                                            (letrec ((x7170
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7170))
                                                            #f))))
                                                g7167)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7171
                                                        (letrec ((x7173
                                                                  (number? x)))
                                                          (assert x7173)))
                                                       (g7172
                                                        (letrec ((val6888
                                                                  (< x y)))
                                                          (letrec ((g7174
                                                                    (if val6888
                                                                      val6888
                                                                      (letrec ((val6889
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7175
                                                                                  (if val6889
                                                                                    val6889
                                                                                    #f)))
                                                                          g7175)))))
                                                            g7174))))
                                                g7172)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7176
                                                        (letrec ((val6890
                                                                  (letrec ((x7177
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7177
                                                                     9))))
                                                          (letrec ((g7178
                                                                    (if val6890
                                                                      val6890
                                                                      (letrec ((val6891
                                                                                (letrec ((x7179
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7179
                                                                                   10))))
                                                                        (letrec ((g7180
                                                                                  (if val6891
                                                                                    val6891
                                                                                    (letrec ((x7181
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7181
                                                                                       32)))))
                                                                          g7180)))))
                                                            g7178))))
                                                g7176)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7182
                                                        (letrec ((x7183
                                                                  (letrec ((x7184
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7184))))
                                                          (cdr x7183))))
                                                g7182)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7185
                                                        (letrec ((x7187
                                                                  (number? x)))
                                                          (assert x7187)))
                                                       (g7186 (> x 0)))
                                                g7186)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7188 #f)) g7188)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7189
                                                        (letrec ((x7190
                                                                  (cdr x)))
                                                          (cdr x7190))))
                                                g7189)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7191
                                                        (letrec ((x7193
                                                                  (number? x)))
                                                          (assert x7193)))
                                                       (g7192
                                                        (letrec ((x-cnd7194
                                                                  (< x 0)))
                                                          (if x-cnd7194
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7192)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7195
                                                        (letrec ((val6892
                                                                  (eq? a b)))
                                                          (letrec ((g7196
                                                                    (if val6892
                                                                      val6892
                                                                      (letrec ((val6893
                                                                                (letrec ((x7198
                                                                                          (null?
                                                                                           a))
                                                                                         (x7197
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7198
                                                                                       x7197))))
                                                                        (letrec ((g7199
                                                                                  (if val6893
                                                                                    val6893
                                                                                    (letrec ((val6894
                                                                                              (letrec ((x7202
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7201
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7200
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7202
                                                                                                     x7201
                                                                                                     x7200))))
                                                                                      (letrec ((g7203
                                                                                                (if val6894
                                                                                                  val6894
                                                                                                  (letrec ((val6895
                                                                                                            (letrec ((x7211
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7210
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7207
                                                                                                                      (letrec ((x7209
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7208
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7209
                                                                                                                         x7208)))
                                                                                                                     (x7204
                                                                                                                      (letrec ((x7206
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7205
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7206
                                                                                                                         x7205))))
                                                                                                              (and x7211
                                                                                                                   x7210
                                                                                                                   x7207
                                                                                                                   x7204))))
                                                                                                    (letrec ((g7212
                                                                                                              (if val6895
                                                                                                                val6895
                                                                                                                (letrec ((x7228
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7227
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7213
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7214
                                                                                                                                      (letrec ((x7225
                                                                                                                                                (letrec ((x7226
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7226
                                                                                                                                                   n)))
                                                                                                                                               (x7215
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7216
                                                                                                                                                                      (letrec ((x7223
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7217
                                                                                                                                                                                (letrec ((x7220
                                                                                                                                                                                          (letrec ((x7222
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7221
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7222
                                                                                                                                                                                             x7221)))
                                                                                                                                                                                         (x7218
                                                                                                                                                                                          (letrec ((x7219
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7219))))
                                                                                                                                                                                  (and x7220
                                                                                                                                                                                       x7218))))
                                                                                                                                                                        (or x7223
                                                                                                                                                                            x7217))))
                                                                                                                                                              g7216))))
                                                                                                                                                  (letrec ((g7224
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7224))))
                                                                                                                                        (and x7225
                                                                                                                                             x7215))))
                                                                                                                              g7214))))
                                                                                                                  (and x7228
                                                                                                                       x7227
                                                                                                                       x7213)))))
                                                                                                      g7212)))))
                                                                                        g7203)))))
                                                                          g7199)))))
                                                            g7196))))
                                                g7195)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7229
                                                        (letrec ((x7230
                                                                  (letrec ((x7231
                                                                            (letrec ((x7232
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7232))))
                                                                    (car
                                                                     x7231))))
                                                          (cdr x7230))))
                                                g7229)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7233
                                                        (letrec ((x7234
                                                                  (letrec ((x7235
                                                                            (letrec ((x7236
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7236))))
                                                                    (car
                                                                     x7235))))
                                                          (car x7234))))
                                                g7233)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7237 (eq? x y)))
                                                g7237)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7238
                                                        (letrec ((x7240
                                                                  (number? x)))
                                                          (assert x7240)))
                                                       (g7239
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7241
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7242
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7242)))))
                                                            g7241))))
                                                g7239)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7243
                                                        (letrec ((x7246
                                                                  (string?
                                                                   filename)))
                                                          (assert x7246)))
                                                       (g7244
                                                        (letrec ((x7247
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7247)))
                                                       (g7245
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7248
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7249 res))
                                                            g7249))))
                                                g7245)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7250 (cons x '())))
                                                g7250)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7251
                                                        (letrec ((x7254
                                                                  (char? c1)))
                                                          (assert x7254)))
                                                       (g7252
                                                        (letrec ((x7255
                                                                  (char? c2)))
                                                          (assert x7255)))
                                                       (g7253
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7256
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7256))))
                                                g7253)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7257
                                                        (letrec ((x7258
                                                                  (letrec ((x7259
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7259))))
                                                          (cdr x7258))))
                                                g7257)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7260
                                                        (letrec ((x7261
                                                                  (letrec ((x7262
                                                                            (letrec ((x7263
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7263))))
                                                                    (car
                                                                     x7262))))
                                                          (cdr x7261))))
                                                g7260)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7264
                                                        (letrec ((x7265
                                                                  (letrec ((x7266
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7266))))
                                                          (car x7265))))
                                                g7264)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7267
                                                        (letrec ((x7268
                                                                  (letrec ((x7269
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7269))))
                                                          (car x7268))))
                                                g7267)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7270
                                                        (letrec ((x7273
                                                                  (char? c1)))
                                                          (assert x7273)))
                                                       (g7271
                                                        (letrec ((x7274
                                                                  (char? c2)))
                                                          (assert x7274)))
                                                       (g7272
                                                        (letrec ((x7275
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7275))))
                                                g7272)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7276
                                                        (letrec ((x7277
                                                                  (letrec ((x7278
                                                                            (letrec ((x7279
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7279))))
                                                                    (car
                                                                     x7278))))
                                                          (car x7277))))
                                                g7276)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7280
                                                        (letrec ((x7282
                                                                  (number? x)))
                                                          (assert x7282)))
                                                       (g7281 (< x 0)))
                                                g7281)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7283 (memq e l)))
                                                g7283)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7284
                                                        (letrec ((x7285
                                                                  (letrec ((x7286
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7286))))
                                                          (car x7285))))
                                                g7284)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7287 '())) g7287)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7288
                                                        (letrec ((x7290
                                                                  (list? l)))
                                                          (assert x7290)))
                                                       (g7289
                                                        (letrec ((x-cnd7291
                                                                  (null? l)))
                                                          (if x-cnd7291
                                                            '()
                                                            (letrec ((x7294
                                                                      (letrec ((x7295
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7295)))
                                                                     (x7292
                                                                      (letrec ((x7293
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7293))))
                                                              (append
                                                               x7294
                                                               x7292))))))
                                                g7289)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7296
                                                        (letrec ((x7297
                                                                  (letrec ((x7298
                                                                            (letrec ((x7299
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7299))))
                                                                    (car
                                                                     x7298))))
                                                          (car x7297))))
                                                g7296)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7300
                                                        (letrec ((x7301
                                                                  (letrec ((x7302
                                                                            (letrec ((x7303
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7303))))
                                                                    (cdr
                                                                     x7302))))
                                                          (cdr x7301))))
                                                g7300)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7304
                                                        (letrec ((x7306
                                                                  (number? x)))
                                                          (assert x7306)))
                                                       (g7305
                                                        (letrec ((x7307
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7307))))
                                                g7305)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7308
                                                        (letrec ((x7309
                                                                  (letrec ((x7310
                                                                            (letrec ((x7311
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7311))))
                                                                    (car
                                                                     x7310))))
                                                          (car x7309))))
                                                g7308)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7312
                                                        (letrec ((x7315
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7315)))
                                                       (g7313
                                                        (letrec ((x7316
                                                                  (list?
                                                                   args)))
                                                          (assert x7316)))
                                                       (g7314
                                                        (if cnd
                                                          (letrec ((g7317
                                                                    (proc)))
                                                            g7317)
                                                          (if cnd
                                                            (letrec ((g7318
                                                                      (letrec ((x7319
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7319))))
                                                              g7318)
                                                            (if cnd
                                                              (letrec ((g7320
                                                                        (letrec ((x7322
                                                                                  (car
                                                                                   args))
                                                                                 (x7321
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7322
                                                                           x7321))))
                                                                g7320)
                                                              (if cnd
                                                                (letrec ((g7323
                                                                          (letrec ((x7326
                                                                                    (car
                                                                                     args))
                                                                                   (x7325
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7324
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7326
                                                                             x7325
                                                                             x7324))))
                                                                  g7323)
                                                                (if cnd
                                                                  (letrec ((g7327
                                                                            (letrec ((x7331
                                                                                      (car
                                                                                       args))
                                                                                     (x7330
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7329
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7328
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7331
                                                                               x7330
                                                                               x7329
                                                                               x7328))))
                                                                    g7327)
                                                                  (if cnd
                                                                    (letrec ((g7332
                                                                              (letrec ((x7338
                                                                                        (car
                                                                                         args))
                                                                                       (x7337
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7336
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7335
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7333
                                                                                        (letrec ((x7334
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7334))))
                                                                                (proc
                                                                                 x7338
                                                                                 x7337
                                                                                 x7336
                                                                                 x7335
                                                                                 x7333))))
                                                                      g7332)
                                                                    (if cnd
                                                                      (letrec ((g7339
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
                                                                                             x7341))))
                                                                                  (proc
                                                                                   x7347
                                                                                   x7346
                                                                                   x7345
                                                                                   x7344
                                                                                   x7342
                                                                                   x7340))))
                                                                        g7339)
                                                                      (if cnd
                                                                        (letrec ((g7348
                                                                                  (letrec ((x7358
                                                                                            (car
                                                                                             args))
                                                                                           (x7357
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7356
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7355
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7353
                                                                                            (letrec ((x7354
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7354)))
                                                                                           (x7351
                                                                                            (letrec ((x7352
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7352)))
                                                                                           (x7349
                                                                                            (letrec ((x7350
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7350))))
                                                                                    (proc
                                                                                     x7358
                                                                                     x7357
                                                                                     x7356
                                                                                     x7355
                                                                                     x7353
                                                                                     x7351
                                                                                     x7349))))
                                                                          g7348)
                                                                        (letrec ((g7359
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7359)))))))))))
                                                g7314)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7360
                                                        (letrec ((x7362
                                                                  (list? l)))
                                                          (assert x7362)))
                                                       (g7361
                                                        (letrec ((x-cnd7363
                                                                  (null? l)))
                                                          (if x-cnd7363
                                                            #f
                                                            (letrec ((x-cnd7364
                                                                      (letrec ((x7365
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7365
                                                                         e))))
                                                              (if x-cnd7364
                                                                l
                                                                (letrec ((x7366
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7366))))))))
                                                g7361)))
                                           (cddddr
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
                                                          (cdr x7368))))
                                                g7367)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7371
                                                        (letrec ((x7372
                                                                  (letrec ((x7373
                                                                            (letrec ((x7374
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7374))))
                                                                    (cdr
                                                                     x7373))))
                                                          (car x7372))))
                                                g7371)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7375 (random 42)))
                                                g7375)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7376
                                                        (letrec ((x7378
                                                                  (number? x)))
                                                          (assert x7378)))
                                                       (g7377 (= x 0)))
                                                g7377)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7379
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7380
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7380))))
                                                g7379)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7381
                                                        (letrec ((x7382
                                                                  (cdr x)))
                                                          (car x7382))))
                                                g7381)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7383
                                                        (letrec ((val6900
                                                                  (letrec ((x7386
                                                                            (pair?
                                                                             l))
                                                                           (x7384
                                                                            (letrec ((x7385
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7385))))
                                                                    (and x7386
                                                                         x7384))))
                                                          (letrec ((g7387
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7387))))
                                                g7383)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7388
                                                        (letrec ((x7389
                                                                  (letrec ((x7390
                                                                            (letrec ((x7391
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7391))))
                                                                    (cdr
                                                                     x7390))))
                                                          (cdr x7389))))
                                                g7388)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7392
                                                        (letrec ((x-cnd7393
                                                                  (letrec ((x7394
                                                                            #\0))
                                                                    (char<=?
                                                                     x7394
                                                                     c))))
                                                          (if x-cnd7393
                                                            (letrec ((x7395
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7395))
                                                            #f))))
                                                g7392)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7396
                                                        (letrec ((x7398
                                                                  (list? l)))
                                                          (assert x7398)))
                                                       (g7397
                                                        (letrec ((x-cnd7399
                                                                  (null? l)))
                                                          (if x-cnd7399
                                                            #f
                                                            (letrec ((x-cnd7400
                                                                      (letrec ((x7401
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7401
                                                                         k))))
                                                              (if x-cnd7400
                                                                (car l)
                                                                (letrec ((x7402
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7402))))))))
                                                g7397)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7403 (if x #f #t)))
                                                g7403)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7404 (append l1 l2)))
                                                g7404)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7405
                                                        (letrec ((x7407
                                                                  (list? l)))
                                                          (assert x7407)))
                                                       (g7406
                                                        (letrec ((x-cnd7408
                                                                  (null? l)))
                                                          (if x-cnd7408
                                                            #f
                                                            (letrec ((x-cnd7409
                                                                      (letrec ((x7410
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7410
                                                                         e))))
                                                              (if x-cnd7409
                                                                l
                                                                (letrec ((x7411
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7411))))))))
                                                g7406)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7412
                                                        (letrec ((x7413
                                                                  (letrec ((x7414
                                                                            (letrec ((x7415
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7415))))
                                                                    (cdr
                                                                     x7414))))
                                                          (car x7413))))
                                                g7412)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7416
                                                        (letrec ((x7418
                                                                  (list? l)))
                                                          (assert x7418)))
                                                       (g7417
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7419
                                                                              (letrec ((x-cnd7420
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7420
                                                                                  0
                                                                                  (letrec ((x7421
                                                                                            (letrec ((x7422
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7422))))
                                                                                    (+
                                                                                     1
                                                                                     x7421))))))
                                                                      g7419))))
                                                          (letrec ((g7423
                                                                    (rec l)))
                                                            g7423))))
                                                g7417)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7424
                                                        (letrec ((x7427
                                                                  (char? c1)))
                                                          (assert x7427)))
                                                       (g7425
                                                        (letrec ((x7428
                                                                  (char? c2)))
                                                          (assert x7428)))
                                                       (g7426
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7429
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7429))))
                                                g7426)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7430
                                                        (letrec ((x7431
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7431))))
                                                g7430)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7432
                                                        (letrec ((x7433
                                                                  (letrec ((x7434
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7434))))
                                                          (cdr x7433))))
                                                g7432)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7435
                                                        (letrec ((x7437
                                                                  (list? l)))
                                                          (assert x7437)))
                                                       (g7436
                                                        (letrec ((x-cnd7438
                                                                  (null? l)))
                                                          (if x-cnd7438
                                                            #f
                                                            (letrec ((x-cnd7439
                                                                      (letrec ((x7440
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7440
                                                                         k))))
                                                              (if x-cnd7439
                                                                (car l)
                                                                (letrec ((x7441
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7441))))))))
                                                g7436)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7442
                                                        (letrec ((x7443
                                                                  (car x)))
                                                          (car x7443))))
                                                g7442)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7444
                                                        (letrec ((x7447
                                                                  (char? c1)))
                                                          (assert x7447)))
                                                       (g7445
                                                        (letrec ((x7448
                                                                  (char? c2)))
                                                          (assert x7448)))
                                                       (g7446
                                                        (letrec ((x7449
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7449))))
                                                g7446)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7450
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7451
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7451))))
                                                g7450)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7452
                                                        (letrec ((x7455
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7455)))
                                                       (g7453
                                                        (letrec ((x7456
                                                                  (list? l)))
                                                          (assert x7456)))
                                                       (g7454
                                                        (letrec ((x-cnd7457
                                                                  (null? l)))
                                                          (if x-cnd7457
                                                            #t
                                                            (letrec ((x-cnd7458
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7458
                                                                (letrec ((g7459
                                                                          (letrec ((x7461
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7461)))
                                                                         (g7460
                                                                          (letrec ((x7462
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7462))))
                                                                  g7460)
                                                                '()))))))
                                                g7454)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7463
                                                        (letrec ((x7465
                                                                  (number? x)))
                                                          (assert x7465)))
                                                       (g7464
                                                        (letrec ((x-cnd7466
                                                                  (< x 0)))
                                                          (if x-cnd7466
                                                            (- 0 x)
                                                            x))))
                                                g7464)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7467
                                                        (letrec ((x7470
                                                                  (char? c1)))
                                                          (assert x7470)))
                                                       (g7468
                                                        (letrec ((x7471
                                                                  (char? c2)))
                                                          (assert x7471)))
                                                       (g7469
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7472
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7472))))
                                                g7469)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7473
                                                        (letrec ((x7474
                                                                  (letrec ((x7475
                                                                            (letrec ((x7476
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7476))))
                                                                    (cdr
                                                                     x7475))))
                                                          (car x7474))))
                                                g7473)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7477 #f)) g7477)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7478
                                                        (letrec ((x7480
                                                                  (letrec ((x7481
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7481)))
                                                                 (x7479
                                                                  (gcd m n)))
                                                          (/ x7480 x7479))))
                                                g7478)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7482
                                                        (letrec ((x7484
                                                                  (number? x)))
                                                          (assert x7484)))
                                                       (g7483
                                                        (letrec ((x7485
                                                                  (<= x y)))
                                                          (not x7485))))
                                                g7483)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7486
                                                        (letrec ((x7490
                                                                  (list? l)))
                                                          (assert x7490)))
                                                       (g7487
                                                        (letrec ((x7491
                                                                  (number?
                                                                   index)))
                                                          (assert x7491)))
                                                       (g7488
                                                        (letrec ((x7492
                                                                  (letrec ((x7493
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7493))))
                                                          (assert x7492)))
                                                       (g7489
                                                        (letrec ((x-cnd7494
                                                                  (= index 0)))
                                                          (if x-cnd7494
                                                            (car l)
                                                            (letrec ((x7496
                                                                      (cdr l))
                                                                     (x7495
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7496
                                                               x7495))))))
                                                g7489)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7497
                                                        (letrec ((x-cnd7498
                                                                  (= b 0)))
                                                          (if x-cnd7498
                                                            a
                                                            (letrec ((x7499
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7499))))))
                                                g7497)))
                                           (f
                                            (lambda (g)
                                              (letrec ((g7500
                                                        (letrec ((x7504 (x y))
                                                                 (x7501
                                                                  (letrec ((x7503
                                                                            (+
                                                                             x
                                                                             1))
                                                                           (x7502
                                                                            (+
                                                                             y
                                                                             1)))
                                                                    (g
                                                                     x7503
                                                                     x7502))))
                                                          (λ x7504 x7501))))
                                                g7500)))
                                           (unzip
                                            (lambda (x k)
                                              (letrec ((g7505
                                                        (letrec ((x-cnd7506
                                                                  (= x 0)))
                                                          (if x-cnd7506
                                                            (k 0 0)
                                                            (letrec ((x7508
                                                                      (- x 1))
                                                                     (x7507
                                                                      (f k)))
                                                              (unzip
                                                               x7508
                                                               x7507))))))
                                                g7505)))
                                           (zip
                                            (lambda (x y)
                                              (letrec ((g7509
                                                        (letrec ((x-cnd7510
                                                                  (= x 0)))
                                                          (if x-cnd7510
                                                            (letrec ((x-cnd7511
                                                                      (= y 0)))
                                                              (if x-cnd7511
                                                                0
                                                                'fail))
                                                            (letrec ((x-cnd7512
                                                                      (= y 0)))
                                                              (if x-cnd7512
                                                                'fail
                                                                (letrec ((x7513
                                                                          (letrec ((x7515
                                                                                    (-
                                                                                     x
                                                                                     1))
                                                                                   (x7514
                                                                                    (-
                                                                                     y
                                                                                     1)))
                                                                            (zip
                                                                             x7515
                                                                             x7514))))
                                                                  (+
                                                                   1
                                                                   x7513))))))))
                                                g7509)))
                                           (main
                                            (lambda (n)
                                              (letrec ((g7516 (unzip n zip)))
                                                g7516))))
                                    (letrec ((g7517
                                              (letrec ((x7520
                                                        ((lambda (j6974
                                                                  k6975
                                                                  f6976)
                                                           (letrec ((g7521
                                                                     (lambda (g6973)
                                                                       (letrec ((g7522
                                                                                 (letrec ((x7523
                                                                                           (letrec ((x7524
                                                                                                     ((lambda (j6984
                                                                                                               k6985
                                                                                                               f6986)
                                                                                                        (letrec ((g7525
                                                                                                                  (lambda (g6982
                                                                                                                           g6983)
                                                                                                                    (letrec ((g7526
                                                                                                                              (letrec ((x7527
                                                                                                                                        (letrec ((x7529
                                                                                                                                                  (integer?/c
                                                                                                                                                   j6984
                                                                                                                                                   k6985
                                                                                                                                                   g6982))
                                                                                                                                                 (x7528
                                                                                                                                                  (integer?/c
                                                                                                                                                   j6984
                                                                                                                                                   k6985
                                                                                                                                                   g6983)))
                                                                                                                                          (f6986
                                                                                                                                           x7529
                                                                                                                                           x7528))))
                                                                                                                                (integer?/c
                                                                                                                                 j6984
                                                                                                                                 k6985
                                                                                                                                 x7527))))
                                                                                                                      g7526))))
                                                                                                          g7525))
                                                                                                      j6974
                                                                                                      k6975
                                                                                                      g6973)))
                                                                                             (f6976
                                                                                              x7524))))
                                                                                   ((lambda (j6979
                                                                                             k6980
                                                                                             f6981)
                                                                                      (letrec ((g7530
                                                                                                (lambda (g6977
                                                                                                         g6978)
                                                                                                  (letrec ((g7531
                                                                                                            (letrec ((x7532
                                                                                                                      (letrec ((x7534
                                                                                                                                (integer?/c
                                                                                                                                 j6979
                                                                                                                                 k6980
                                                                                                                                 g6977))
                                                                                                                               (x7533
                                                                                                                                (integer?/c
                                                                                                                                 j6979
                                                                                                                                 k6980
                                                                                                                                 g6978)))
                                                                                                                        (f6981
                                                                                                                         x7534
                                                                                                                         x7533))))
                                                                                                              (integer?/c
                                                                                                               j6979
                                                                                                               k6980
                                                                                                               x7532))))
                                                                                                    g7531))))
                                                                                        g7530))
                                                                                    j6974
                                                                                    k6975
                                                                                    x7523))))
                                                                         g7522))))
                                                             g7521))
                                                         'module
                                                         'importer
                                                         f))
                                                       (x7519 (input)))
                                                (x7520 x7519)))
                                             (g7518
                                              (letrec ((x7536
                                                        ((lambda (j6988
                                                                  k6989
                                                                  f6990)
                                                           (letrec ((g7537
                                                                     (lambda (g6987)
                                                                       (letrec ((g7538
                                                                                 (letrec ((x7539
                                                                                           (letrec ((x7540
                                                                                                     (integer?/c
                                                                                                      j6988
                                                                                                      k6989
                                                                                                      g6987)))
                                                                                             (f6990
                                                                                              x7540))))
                                                                                   (integer?/c
                                                                                    j6988
                                                                                    k6989
                                                                                    x7539))))
                                                                         g7538))))
                                                             g7537))
                                                         'module
                                                         'importer
                                                         main))
                                                       (x7535 (input)))
                                                (x7536 x7535))))
                                      g7518))))
                          g7004))))
              g7002)))
    g7001))
