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
                                                                                                                (letrec ((x7231
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7230
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7213
                                                                                                                          (letrec ((x7227
                                                                                                                                    (letrec ((x7228
                                                                                                                                              (letrec ((x7229
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7229))))
                                                                                                                                      (x7228)))
                                                                                                                                   (x7214
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
                                                                                                                            (let x7227 x7214))))
                                                                                                                  (and x7231
                                                                                                                       x7230
                                                                                                                       x7213)))))
                                                                                                      g7212)))))
                                                                                        g7203)))))
                                                                          g7199)))))
                                                            g7196))))
                                                g7195)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7232
                                                        (letrec ((x7233
                                                                  (letrec ((x7234
                                                                            (letrec ((x7235
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7235))))
                                                                    (car
                                                                     x7234))))
                                                          (cdr x7233))))
                                                g7232)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7236
                                                        (letrec ((x7237
                                                                  (letrec ((x7238
                                                                            (letrec ((x7239
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7239))))
                                                                    (car
                                                                     x7238))))
                                                          (car x7237))))
                                                g7236)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7240 (eq? x y)))
                                                g7240)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7241
                                                        (letrec ((x7243
                                                                  (number? x)))
                                                          (assert x7243)))
                                                       (g7242
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7244
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7245
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7245)))))
                                                            g7244))))
                                                g7242)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7246
                                                        (letrec ((x7249
                                                                  (string?
                                                                   filename)))
                                                          (assert x7249)))
                                                       (g7247
                                                        (letrec ((x7250
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7250)))
                                                       (g7248
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7251
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7252 res))
                                                            g7252))))
                                                g7248)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7253 (cons x '())))
                                                g7253)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7254
                                                        (letrec ((x7257
                                                                  (char? c1)))
                                                          (assert x7257)))
                                                       (g7255
                                                        (letrec ((x7258
                                                                  (char? c2)))
                                                          (assert x7258)))
                                                       (g7256
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7259
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7259))))
                                                g7256)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7260
                                                        (letrec ((x7261
                                                                  (letrec ((x7262
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7262))))
                                                          (cdr x7261))))
                                                g7260)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7263
                                                        (letrec ((x7264
                                                                  (letrec ((x7265
                                                                            (letrec ((x7266
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7266))))
                                                                    (car
                                                                     x7265))))
                                                          (cdr x7264))))
                                                g7263)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7267
                                                        (letrec ((x7268
                                                                  (letrec ((x7269
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7269))))
                                                          (car x7268))))
                                                g7267)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7270
                                                        (letrec ((x7271
                                                                  (letrec ((x7272
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7272))))
                                                          (car x7271))))
                                                g7270)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7273
                                                        (letrec ((x7276
                                                                  (char? c1)))
                                                          (assert x7276)))
                                                       (g7274
                                                        (letrec ((x7277
                                                                  (char? c2)))
                                                          (assert x7277)))
                                                       (g7275
                                                        (letrec ((x7278
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7278))))
                                                g7275)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7279
                                                        (letrec ((x7280
                                                                  (letrec ((x7281
                                                                            (letrec ((x7282
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7282))))
                                                                    (car
                                                                     x7281))))
                                                          (car x7280))))
                                                g7279)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7283
                                                        (letrec ((x7285
                                                                  (number? x)))
                                                          (assert x7285)))
                                                       (g7284 (< x 0)))
                                                g7284)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7286 (memq e l)))
                                                g7286)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7287
                                                        (letrec ((x7288
                                                                  (letrec ((x7289
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7289))))
                                                          (car x7288))))
                                                g7287)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7290 '())) g7290)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7291
                                                        (letrec ((x7293
                                                                  (list? l)))
                                                          (assert x7293)))
                                                       (g7292
                                                        (letrec ((x-cnd7294
                                                                  (null? l)))
                                                          (if x-cnd7294
                                                            '()
                                                            (letrec ((x7297
                                                                      (letrec ((x7298
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7298)))
                                                                     (x7295
                                                                      (letrec ((x7296
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7296))))
                                                              (append
                                                               x7297
                                                               x7295))))))
                                                g7292)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7299
                                                        (letrec ((x7300
                                                                  (letrec ((x7301
                                                                            (letrec ((x7302
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7302))))
                                                                    (car
                                                                     x7301))))
                                                          (car x7300))))
                                                g7299)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7303
                                                        (letrec ((x7304
                                                                  (letrec ((x7305
                                                                            (letrec ((x7306
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7306))))
                                                                    (cdr
                                                                     x7305))))
                                                          (cdr x7304))))
                                                g7303)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7307
                                                        (letrec ((x7309
                                                                  (number? x)))
                                                          (assert x7309)))
                                                       (g7308
                                                        (letrec ((x7310
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7310))))
                                                g7308)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7311
                                                        (letrec ((x7312
                                                                  (letrec ((x7313
                                                                            (letrec ((x7314
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7314))))
                                                                    (car
                                                                     x7313))))
                                                          (car x7312))))
                                                g7311)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7315
                                                        (letrec ((x7318
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7318)))
                                                       (g7316
                                                        (letrec ((x7319
                                                                  (list?
                                                                   args)))
                                                          (assert x7319)))
                                                       (g7317
                                                        (if cnd
                                                          (letrec ((g7320
                                                                    (proc)))
                                                            g7320)
                                                          (if cnd
                                                            (letrec ((g7321
                                                                      (letrec ((x7322
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7322))))
                                                              g7321)
                                                            (if cnd
                                                              (letrec ((g7323
                                                                        (letrec ((x7325
                                                                                  (car
                                                                                   args))
                                                                                 (x7324
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7325
                                                                           x7324))))
                                                                g7323)
                                                              (if cnd
                                                                (letrec ((g7326
                                                                          (letrec ((x7329
                                                                                    (car
                                                                                     args))
                                                                                   (x7328
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7327
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7329
                                                                             x7328
                                                                             x7327))))
                                                                  g7326)
                                                                (if cnd
                                                                  (letrec ((g7330
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
                                                                                       args)))
                                                                              (proc
                                                                               x7334
                                                                               x7333
                                                                               x7332
                                                                               x7331))))
                                                                    g7330)
                                                                  (if cnd
                                                                    (letrec ((g7335
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
                                                                                           x7337))))
                                                                                (proc
                                                                                 x7341
                                                                                 x7340
                                                                                 x7339
                                                                                 x7338
                                                                                 x7336))))
                                                                      g7335)
                                                                    (if cnd
                                                                      (letrec ((g7342
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
                                                                                             x7344))))
                                                                                  (proc
                                                                                   x7350
                                                                                   x7349
                                                                                   x7348
                                                                                   x7347
                                                                                   x7345
                                                                                   x7343))))
                                                                        g7342)
                                                                      (if cnd
                                                                        (letrec ((g7351
                                                                                  (letrec ((x7361
                                                                                            (car
                                                                                             args))
                                                                                           (x7360
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7359
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7358
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7356
                                                                                            (letrec ((x7357
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7357)))
                                                                                           (x7354
                                                                                            (letrec ((x7355
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7355)))
                                                                                           (x7352
                                                                                            (letrec ((x7353
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7353))))
                                                                                    (proc
                                                                                     x7361
                                                                                     x7360
                                                                                     x7359
                                                                                     x7358
                                                                                     x7356
                                                                                     x7354
                                                                                     x7352))))
                                                                          g7351)
                                                                        (letrec ((g7362
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7362)))))))))))
                                                g7317)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7363
                                                        (letrec ((x7365
                                                                  (list? l)))
                                                          (assert x7365)))
                                                       (g7364
                                                        (letrec ((x-cnd7366
                                                                  (null? l)))
                                                          (if x-cnd7366
                                                            #f
                                                            (letrec ((x-cnd7367
                                                                      (letrec ((x7368
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7368
                                                                         e))))
                                                              (if x-cnd7367
                                                                l
                                                                (letrec ((x7369
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7369))))))))
                                                g7364)))
                                           (cddddr
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
                                                          (cdr x7371))))
                                                g7370)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7374
                                                        (letrec ((x7375
                                                                  (letrec ((x7376
                                                                            (letrec ((x7377
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7377))))
                                                                    (cdr
                                                                     x7376))))
                                                          (car x7375))))
                                                g7374)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7378 (random 42)))
                                                g7378)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7379
                                                        (letrec ((x7381
                                                                  (number? x)))
                                                          (assert x7381)))
                                                       (g7380 (= x 0)))
                                                g7380)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7382
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7383
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7383))))
                                                g7382)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7384
                                                        (letrec ((x7385
                                                                  (cdr x)))
                                                          (car x7385))))
                                                g7384)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7386
                                                        (letrec ((val6900
                                                                  (letrec ((x7389
                                                                            (pair?
                                                                             l))
                                                                           (x7387
                                                                            (letrec ((x7388
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7388))))
                                                                    (and x7389
                                                                         x7387))))
                                                          (letrec ((g7390
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7390))))
                                                g7386)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7391
                                                        (letrec ((x7392
                                                                  (letrec ((x7393
                                                                            (letrec ((x7394
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7394))))
                                                                    (cdr
                                                                     x7393))))
                                                          (cdr x7392))))
                                                g7391)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7395
                                                        (letrec ((x-cnd7396
                                                                  (letrec ((x7397
                                                                            #\0))
                                                                    (char<=?
                                                                     x7397
                                                                     c))))
                                                          (if x-cnd7396
                                                            (letrec ((x7398
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7398))
                                                            #f))))
                                                g7395)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
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
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7404
                                                                         k))))
                                                              (if x-cnd7403
                                                                (car l)
                                                                (letrec ((x7405
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7405))))))))
                                                g7400)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7406 (if x #f #t)))
                                                g7406)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7407 (append l1 l2)))
                                                g7407)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7408
                                                        (letrec ((x7410
                                                                  (list? l)))
                                                          (assert x7410)))
                                                       (g7409
                                                        (letrec ((x-cnd7411
                                                                  (null? l)))
                                                          (if x-cnd7411
                                                            #f
                                                            (letrec ((x-cnd7412
                                                                      (letrec ((x7413
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7413
                                                                         e))))
                                                              (if x-cnd7412
                                                                l
                                                                (letrec ((x7414
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7414))))))))
                                                g7409)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7415
                                                        (letrec ((x7416
                                                                  (letrec ((x7417
                                                                            (letrec ((x7418
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7418))))
                                                                    (cdr
                                                                     x7417))))
                                                          (car x7416))))
                                                g7415)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7419
                                                        (letrec ((x7421
                                                                  (list? l)))
                                                          (assert x7421)))
                                                       (g7420
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7422
                                                                              (letrec ((x-cnd7423
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7423
                                                                                  0
                                                                                  (letrec ((x7424
                                                                                            (letrec ((x7425
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7425))))
                                                                                    (+
                                                                                     1
                                                                                     x7424))))))
                                                                      g7422))))
                                                          (letrec ((g7426
                                                                    (rec l)))
                                                            g7426))))
                                                g7420)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7427
                                                        (letrec ((x7430
                                                                  (char? c1)))
                                                          (assert x7430)))
                                                       (g7428
                                                        (letrec ((x7431
                                                                  (char? c2)))
                                                          (assert x7431)))
                                                       (g7429
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7432
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7432))))
                                                g7429)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7433
                                                        (letrec ((x7434
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7434))))
                                                g7433)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7435
                                                        (letrec ((x7436
                                                                  (letrec ((x7437
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7437))))
                                                          (cdr x7436))))
                                                g7435)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7438
                                                        (letrec ((x7440
                                                                  (list? l)))
                                                          (assert x7440)))
                                                       (g7439
                                                        (letrec ((x-cnd7441
                                                                  (null? l)))
                                                          (if x-cnd7441
                                                            #f
                                                            (letrec ((x-cnd7442
                                                                      (letrec ((x7443
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7443
                                                                         k))))
                                                              (if x-cnd7442
                                                                (car l)
                                                                (letrec ((x7444
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7444))))))))
                                                g7439)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7445
                                                        (letrec ((x7446
                                                                  (car x)))
                                                          (car x7446))))
                                                g7445)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7447
                                                        (letrec ((x7450
                                                                  (char? c1)))
                                                          (assert x7450)))
                                                       (g7448
                                                        (letrec ((x7451
                                                                  (char? c2)))
                                                          (assert x7451)))
                                                       (g7449
                                                        (letrec ((x7452
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7452))))
                                                g7449)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7453
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7454
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7454))))
                                                g7453)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7455
                                                        (letrec ((x7458
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7458)))
                                                       (g7456
                                                        (letrec ((x7459
                                                                  (list? l)))
                                                          (assert x7459)))
                                                       (g7457
                                                        (letrec ((x-cnd7460
                                                                  (null? l)))
                                                          (if x-cnd7460
                                                            #t
                                                            (letrec ((x-cnd7461
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7461
                                                                (letrec ((g7462
                                                                          (letrec ((x7464
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7464)))
                                                                         (g7463
                                                                          (letrec ((x7465
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7465))))
                                                                  g7463)
                                                                '()))))))
                                                g7457)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7466
                                                        (letrec ((x7468
                                                                  (number? x)))
                                                          (assert x7468)))
                                                       (g7467
                                                        (letrec ((x-cnd7469
                                                                  (< x 0)))
                                                          (if x-cnd7469
                                                            (- 0 x)
                                                            x))))
                                                g7467)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7470
                                                        (letrec ((x7473
                                                                  (char? c1)))
                                                          (assert x7473)))
                                                       (g7471
                                                        (letrec ((x7474
                                                                  (char? c2)))
                                                          (assert x7474)))
                                                       (g7472
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7475
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7475))))
                                                g7472)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7476
                                                        (letrec ((x7477
                                                                  (letrec ((x7478
                                                                            (letrec ((x7479
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7479))))
                                                                    (cdr
                                                                     x7478))))
                                                          (car x7477))))
                                                g7476)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7480 #f)) g7480)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7481
                                                        (letrec ((x7483
                                                                  (letrec ((x7484
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7484)))
                                                                 (x7482
                                                                  (gcd m n)))
                                                          (/ x7483 x7482))))
                                                g7481)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7485
                                                        (letrec ((x7487
                                                                  (number? x)))
                                                          (assert x7487)))
                                                       (g7486
                                                        (letrec ((x7488
                                                                  (<= x y)))
                                                          (not x7488))))
                                                g7486)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7489
                                                        (letrec ((x7493
                                                                  (list? l)))
                                                          (assert x7493)))
                                                       (g7490
                                                        (letrec ((x7494
                                                                  (number?
                                                                   index)))
                                                          (assert x7494)))
                                                       (g7491
                                                        (letrec ((x7495
                                                                  (letrec ((x7496
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7496))))
                                                          (assert x7495)))
                                                       (g7492
                                                        (letrec ((x-cnd7497
                                                                  (= index 0)))
                                                          (if x-cnd7497
                                                            (car l)
                                                            (letrec ((x7499
                                                                      (cdr l))
                                                                     (x7498
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7499
                                                               x7498))))))
                                                g7492)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7500
                                                        (letrec ((x-cnd7501
                                                                  (= b 0)))
                                                          (if x-cnd7501
                                                            a
                                                            (letrec ((x7502
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7502))))))
                                                g7500)))
                                           (f
                                            (lambda (g)
                                              (letrec ((g7503
                                                        (letrec ((x7507 (x y))
                                                                 (x7504
                                                                  (letrec ((x7506
                                                                            (+
                                                                             x
                                                                             1))
                                                                           (x7505
                                                                            (+
                                                                             y
                                                                             1)))
                                                                    (g
                                                                     x7506
                                                                     x7505))))
                                                          (λ x7507 x7504))))
                                                g7503)))
                                           (unzip
                                            (lambda (x k)
                                              (letrec ((g7508
                                                        (letrec ((x-cnd7509
                                                                  (= x 0)))
                                                          (if x-cnd7509
                                                            (k 0 0)
                                                            (letrec ((x7511
                                                                      (- x 1))
                                                                     (x7510
                                                                      (f k)))
                                                              (unzip
                                                               x7511
                                                               x7510))))))
                                                g7508)))
                                           (zip
                                            (lambda (x y)
                                              (letrec ((g7512
                                                        (letrec ((x-cnd7513
                                                                  (= x 0)))
                                                          (if x-cnd7513
                                                            (letrec ((x-cnd7514
                                                                      (= y 0)))
                                                              (if x-cnd7514
                                                                0
                                                                'fail))
                                                            (letrec ((x-cnd7515
                                                                      (= y 0)))
                                                              (if x-cnd7515
                                                                'fail
                                                                (letrec ((x7516
                                                                          (letrec ((x7518
                                                                                    (-
                                                                                     x
                                                                                     1))
                                                                                   (x7517
                                                                                    (-
                                                                                     y
                                                                                     1)))
                                                                            (zip
                                                                             x7518
                                                                             x7517))))
                                                                  (+
                                                                   1
                                                                   x7516))))))))
                                                g7512)))
                                           (main
                                            (lambda (n)
                                              (letrec ((g7519 (unzip n zip)))
                                                g7519))))
                                    (letrec ((g7520
                                              (letrec ((x7523
                                                        ((lambda (j6974
                                                                  k6975
                                                                  f6976)
                                                           (letrec ((g7524
                                                                     (lambda (g6973)
                                                                       (letrec ((g7525
                                                                                 (letrec ((x7526
                                                                                           (letrec ((x7527
                                                                                                     ((lambda (j6984
                                                                                                               k6985
                                                                                                               f6986)
                                                                                                        (letrec ((g7528
                                                                                                                  (lambda (g6982
                                                                                                                           g6983)
                                                                                                                    (letrec ((g7529
                                                                                                                              (letrec ((x7530
                                                                                                                                        (letrec ((x7532
                                                                                                                                                  (integer?/c
                                                                                                                                                   j6984
                                                                                                                                                   k6985
                                                                                                                                                   g6982))
                                                                                                                                                 (x7531
                                                                                                                                                  (integer?/c
                                                                                                                                                   j6984
                                                                                                                                                   k6985
                                                                                                                                                   g6983)))
                                                                                                                                          (f6986
                                                                                                                                           x7532
                                                                                                                                           x7531))))
                                                                                                                                (integer?/c
                                                                                                                                 j6984
                                                                                                                                 k6985
                                                                                                                                 x7530))))
                                                                                                                      g7529))))
                                                                                                          g7528))
                                                                                                      j6974
                                                                                                      k6975
                                                                                                      g6973)))
                                                                                             (f6976
                                                                                              x7527))))
                                                                                   ((lambda (j6979
                                                                                             k6980
                                                                                             f6981)
                                                                                      (letrec ((g7533
                                                                                                (lambda (g6977
                                                                                                         g6978)
                                                                                                  (letrec ((g7534
                                                                                                            (letrec ((x7535
                                                                                                                      (letrec ((x7537
                                                                                                                                (integer?/c
                                                                                                                                 j6979
                                                                                                                                 k6980
                                                                                                                                 g6977))
                                                                                                                               (x7536
                                                                                                                                (integer?/c
                                                                                                                                 j6979
                                                                                                                                 k6980
                                                                                                                                 g6978)))
                                                                                                                        (f6981
                                                                                                                         x7537
                                                                                                                         x7536))))
                                                                                                              (integer?/c
                                                                                                               j6979
                                                                                                               k6980
                                                                                                               x7535))))
                                                                                                    g7534))))
                                                                                        g7533))
                                                                                    j6974
                                                                                    k6975
                                                                                    x7526))))
                                                                         g7525))))
                                                             g7524))
                                                         'module
                                                         'importer
                                                         f))
                                                       (x7522 (input)))
                                                (x7523 x7522)))
                                             (g7521
                                              (letrec ((x7539
                                                        ((lambda (j6988
                                                                  k6989
                                                                  f6990)
                                                           (letrec ((g7540
                                                                     (lambda (g6987)
                                                                       (letrec ((g7541
                                                                                 (letrec ((x7542
                                                                                           (letrec ((x7543
                                                                                                     (integer?/c
                                                                                                      j6988
                                                                                                      k6989
                                                                                                      g6987)))
                                                                                             (f6990
                                                                                              x7543))))
                                                                                   (integer?/c
                                                                                    j6988
                                                                                    k6989
                                                                                    x7542))))
                                                                         g7541))))
                                                             g7540))
                                                         'module
                                                         'importer
                                                         main))
                                                       (x7538 (input)))
                                                (x7539 x7538))))
                                      g7521))))
                          g7004))))
              g7002)))
    g7001))
