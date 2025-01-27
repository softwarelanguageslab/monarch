(letrec ((any? (lambda (v) (letrec ((g6978 #t)) g6978)))
         (meta (lambda (v) (letrec ((g6979 v)) g6979)))
         (member
          (lambda (v lst)
            (letrec ((g6980
                      (letrec ((g6981
                                (letrec ((x-e6982 lst))
                                  (match
                                   x-e6982
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd6983 (eq? v v1)))
                                       (if x-cnd6983 #t (member v vs)))))))))
                        g6981)))
              g6980)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g6984 (lambda (v) (letrec ((g6985 v)) g6985)))) g6984)))
         (nonzero?
          (lambda (v)
            (letrec ((g6986 (letrec ((x6987 (= v 0))) (not x6987)))) g6986))))
  (letrec ((g6988
            (letrec ((g6989
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g6990 '())
                                 (g6991
                                  (letrec ((real/c
                                            (lambda (g6904 g6905 g6906)
                                              (letrec ((g6992
                                                        (letrec ((x-cnd6993
                                                                  (real?
                                                                   g6906)))
                                                          (if x-cnd6993
                                                            g6906
                                                            (blame
                                                             g6904
                                                             'real?)))))
                                                g6992)))
                                           (boolean?/c
                                            (lambda (g6907 g6908 g6909)
                                              (letrec ((g6994
                                                        (letrec ((x-cnd6995
                                                                  (boolean?
                                                                   g6909)))
                                                          (if x-cnd6995
                                                            g6909
                                                            (blame
                                                             g6907
                                                             'boolean?)))))
                                                g6994)))
                                           (number?/c
                                            (lambda (g6910 g6911 g6912)
                                              (letrec ((g6996
                                                        (letrec ((x-cnd6997
                                                                  (number?
                                                                   g6912)))
                                                          (if x-cnd6997
                                                            g6912
                                                            (blame
                                                             g6910
                                                             'number?)))))
                                                g6996)))
                                           (any/c
                                            (lambda (g6913 g6914 g6915)
                                              (letrec ((g6998
                                                        (letrec ((x-cnd6999
                                                                  ((lambda (v)
                                                                     (letrec ((g7000
                                                                               #t))
                                                                       g7000))
                                                                   g6915)))
                                                          (if x-cnd6999
                                                            g6915
                                                            (blame
                                                             g6913
                                                             '(lambda (v)
                                                                #t))))))
                                                g6998)))
                                           (any?/c
                                            (lambda (g6916 g6917 g6918)
                                              (letrec ((g7001
                                                        (letrec ((x-cnd7002
                                                                  ((lambda (v)
                                                                     (letrec ((g7003
                                                                               #t))
                                                                       g7003))
                                                                   g6918)))
                                                          (if x-cnd7002
                                                            g6918
                                                            (blame
                                                             g6916
                                                             '(lambda (v)
                                                                #t))))))
                                                g7001)))
                                           (cons?/c
                                            (lambda (g6919 g6920 g6921)
                                              (letrec ((g7004
                                                        (letrec ((x-cnd7005
                                                                  (pair?
                                                                   g6921)))
                                                          (if x-cnd7005
                                                            g6921
                                                            (blame
                                                             g6919
                                                             'pair?)))))
                                                g7004)))
                                           (pair?/c
                                            (lambda (g6922 g6923 g6924)
                                              (letrec ((g7006
                                                        (letrec ((x-cnd7007
                                                                  (pair?
                                                                   g6924)))
                                                          (if x-cnd7007
                                                            g6924
                                                            (blame
                                                             g6922
                                                             'pair?)))))
                                                g7006)))
                                           (integer?/c
                                            (lambda (g6925 g6926 g6927)
                                              (letrec ((g7008
                                                        (letrec ((x-cnd7009
                                                                  (integer?
                                                                   g6927)))
                                                          (if x-cnd7009
                                                            g6927
                                                            (blame
                                                             g6925
                                                             'integer?)))))
                                                g7008)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7010
                                                        (lambda (k j v)
                                                          (letrec ((g7011
                                                                    (letrec ((x-cnd7012
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7012
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7011))))
                                                g7010)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7013
                                                        (lambda (k j v)
                                                          (letrec ((g7014
                                                                    (letrec ((x-cnd7015
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7015
                                                                        '()
                                                                        (letrec ((x7019
                                                                                  (letrec ((x7020
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7020)))
                                                                                 (x7016
                                                                                  (letrec ((x7018
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7017
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7018
                                                                                     k
                                                                                     j
                                                                                     x7017))))
                                                                          (cons
                                                                           x7019
                                                                           x7016))))))
                                                            g7014))))
                                                g7013)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7021 #t)) g7021)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7022
                                                        (letrec ((x7023
                                                                  (= v 0)))
                                                          (not x7023))))
                                                g7022)))
                                           (nonzero?/c
                                            (lambda (g6928 g6929 g6930)
                                              (letrec ((g7024
                                                        (letrec ((x-cnd7025
                                                                  ((lambda (v)
                                                                     (letrec ((g7026
                                                                               (letrec ((x7027
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7027))))
                                                                       g7026))
                                                                   g6930)))
                                                          (if x-cnd7025
                                                            g6930
                                                            (blame
                                                             g6928
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7024)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7028 v)) g7028)))
                                           (+
                                            ((lambda (j6933 k6934 f6935)
                                               (letrec ((g7030
                                                         (lambda (g6931 g6932)
                                                           (letrec ((g7031
                                                                     (letrec ((x7032
                                                                               (letrec ((x7034
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6931))
                                                                                        (x7033
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6932)))
                                                                                 (f6935
                                                                                  x7034
                                                                                  x7033))))
                                                                       (number?/c
                                                                        j6933
                                                                        k6934
                                                                        x7032))))
                                                             g7031))))
                                                 g7030))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7029 (orig-+ a b)))
                                                 g7029))))
                                           (-
                                            ((lambda (j6938 k6939 f6940)
                                               (letrec ((g7036
                                                         (lambda (g6936 g6937)
                                                           (letrec ((g7037
                                                                     (letrec ((x7038
                                                                               (letrec ((x7040
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6936))
                                                                                        (x7039
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6937)))
                                                                                 (f6940
                                                                                  x7040
                                                                                  x7039))))
                                                                       (number?/c
                                                                        j6938
                                                                        k6939
                                                                        x7038))))
                                                             g7037))))
                                                 g7036))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7035 (orig-- a b)))
                                                 g7035))))
                                           (*
                                            ((lambda (j6943 k6944 f6945)
                                               (letrec ((g7042
                                                         (lambda (g6941 g6942)
                                                           (letrec ((g7043
                                                                     (letrec ((x7044
                                                                               (letrec ((x7046
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6941))
                                                                                        (x7045
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6942)))
                                                                                 (f6945
                                                                                  x7046
                                                                                  x7045))))
                                                                       (number?/c
                                                                        j6943
                                                                        k6944
                                                                        x7044))))
                                                             g7043))))
                                                 g7042))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7041 (orig-* a b)))
                                                 g7041))))
                                           (/
                                            ((lambda (j6948 k6949 f6950)
                                               (letrec ((g7048
                                                         (lambda (g6946 g6947)
                                                           (letrec ((g7049
                                                                     (letrec ((x7050
                                                                               (letrec ((x7052
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6946))
                                                                                        (x7051
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6947)))
                                                                                 (f6950
                                                                                  x7052
                                                                                  x7051))))
                                                                       (number?/c
                                                                        j6948
                                                                        k6949
                                                                        x7050))))
                                                             g7049))))
                                                 g7048))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7047 (orig-/ a b)))
                                                 g7047))))
                                           (car
                                            ((lambda (j6952 k6953 f6954)
                                               (letrec ((g7054
                                                         (lambda (g6951)
                                                           (letrec ((g7055
                                                                     (letrec ((x7056
                                                                               (letrec ((x7057
                                                                                         (pair?/c
                                                                                          j6952
                                                                                          k6953
                                                                                          g6951)))
                                                                                 (f6954
                                                                                  x7057))))
                                                                       (any/c
                                                                        j6952
                                                                        k6953
                                                                        x7056))))
                                                             g7055))))
                                                 g7054))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7053 (orig-car p)))
                                                 g7053))))
                                           (cdr
                                            ((lambda (j6956 k6957 f6958)
                                               (letrec ((g7059
                                                         (lambda (g6955)
                                                           (letrec ((g7060
                                                                     (letrec ((x7061
                                                                               (letrec ((x7062
                                                                                         (pair?/c
                                                                                          j6956
                                                                                          k6957
                                                                                          g6955)))
                                                                                 (f6958
                                                                                  x7062))))
                                                                       (any/c
                                                                        j6956
                                                                        k6957
                                                                        x7061))))
                                                             g7060))))
                                                 g7059))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7058 (orig-cdr p)))
                                                 g7058))))
                                           (cons
                                            ((lambda (j6961 k6962 f6963)
                                               (letrec ((g7064
                                                         (lambda (g6959 g6960)
                                                           (letrec ((g7065
                                                                     (letrec ((x7066
                                                                               (letrec ((x7068
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6959))
                                                                                        (x7067
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6960)))
                                                                                 (f6963
                                                                                  x7068
                                                                                  x7067))))
                                                                       (pair?/c
                                                                        j6961
                                                                        k6962
                                                                        x7066))))
                                                             g7065))))
                                                 g7064))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7063 (cons a b)))
                                                 g7063))))
                                           (vector-ref
                                            ((lambda (j6965 k6966 f6967)
                                               (letrec ((g7070
                                                         (lambda (g6964)
                                                           (letrec ((g7071
                                                                     (letrec ((x7072
                                                                               (letrec ((x7073
                                                                                         (vector?/c
                                                                                          j6965
                                                                                          k6966
                                                                                          g6964)))
                                                                                 (f6967
                                                                                  x7073))))
                                                                       (integer?/c
                                                                        j6965
                                                                        k6966
                                                                        x7072))))
                                                             g7071))))
                                                 g7070))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7069
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7069))))
                                           (vector-set!
                                            ((lambda (j6970 k6971 f6972)
                                               (letrec ((g7075
                                                         (lambda (g6968 g6969)
                                                           (letrec ((g7076
                                                                     (letrec ((x7077
                                                                               (letrec ((x7079
                                                                                         (vector?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6968))
                                                                                        (x7078
                                                                                         (integer?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6969)))
                                                                                 (f6972
                                                                                  x7079
                                                                                  x7078))))
                                                                       (any/c
                                                                        j6970
                                                                        k6971
                                                                        x7077))))
                                                             g7076))))
                                                 g7075))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7074
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7074))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7080 #t)) g7080)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7081
                                                        (letrec ((x7082
                                                                  (letrec ((x7083
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7083))))
                                                          (cdr x7082))))
                                                g7081)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7084
                                                        (letrec ((x7087
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7087)))
                                                       (g7085
                                                        (letrec ((x7088
                                                                  (list? l)))
                                                          (assert x7088)))
                                                       (g7086
                                                        (letrec ((x-cnd7089
                                                                  (null? l)))
                                                          (if x-cnd7089
                                                            '()
                                                            (letrec ((x7092
                                                                      (letrec ((x7093
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7093)))
                                                                     (x7090
                                                                      (letrec ((x7091
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7091))))
                                                              (cons
                                                               x7092
                                                               x7090))))))
                                                g7086)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7094
                                                        (letrec ((x7095
                                                                  (car x)))
                                                          (cdr x7095))))
                                                g7094)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7096
                                                        (letrec ((x7097
                                                                  (letrec ((x7098
                                                                            (letrec ((x7099
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7099))))
                                                                    (cdr
                                                                     x7098))))
                                                          (car x7097))))
                                                g7096)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7100
                                                        (letrec ((x7101
                                                                  (letrec ((x7102
                                                                            (letrec ((x7103
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7103))))
                                                                    (car
                                                                     x7102))))
                                                          (cdr x7101))))
                                                g7100)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7104
                                                        (letrec ((x7107
                                                                  (string?
                                                                   filename)))
                                                          (assert x7107)))
                                                       (g7105
                                                        (letrec ((x7108
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7108)))
                                                       (g7106
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7109
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7110 res))
                                                            g7110))))
                                                g7106)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7111
                                                        (letrec ((x7112
                                                                  (letrec ((x7113
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7113))))
                                                          (car x7112))))
                                                g7111)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7114
                                                        (letrec ((x7115
                                                                  (letrec ((x7116
                                                                            (letrec ((x7117
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7117))))
                                                                    (car
                                                                     x7116))))
                                                          (cdr x7115))))
                                                g7114)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7118
                                                        (letrec ((x7120
                                                                  (list? l)))
                                                          (assert x7120)))
                                                       (g7119
                                                        (letrec ((x-cnd7121
                                                                  (null? l)))
                                                          (if x-cnd7121
                                                            #f
                                                            (letrec ((x-cnd7122
                                                                      (letrec ((x7123
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7123
                                                                         k))))
                                                              (if x-cnd7122
                                                                (car l)
                                                                (letrec ((x7124
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7124))))))))
                                                g7119)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7125
                                                        (letrec ((x7126
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7126))))
                                                g7125)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7127
                                                        (letrec ((x7129
                                                                  (list? l)))
                                                          (assert x7129)))
                                                       (g7128
                                                        (letrec ((x-cnd7130
                                                                  (null? l)))
                                                          (if x-cnd7130
                                                            ""
                                                            (letrec ((x7133
                                                                      (letrec ((x7134
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7134)))
                                                                     (x7131
                                                                      (letrec ((x7132
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7132))))
                                                              (string-append
                                                               x7133
                                                               x7131))))))
                                                g7128)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7135
                                                        (letrec ((x7138
                                                                  (char? c1)))
                                                          (assert x7138)))
                                                       (g7136
                                                        (letrec ((x7139
                                                                  (char? c2)))
                                                          (assert x7139)))
                                                       (g7137
                                                        (letrec ((val6887
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7140
                                                                    (if val6887
                                                                      val6887
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7140))))
                                                g7137)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7141
                                                        (letrec ((x7142
                                                                  (letrec ((x7143
                                                                            (letrec ((x7144
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7144))))
                                                                    (cdr
                                                                     x7143))))
                                                          (cdr x7142))))
                                                g7141)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7145
                                                        (letrec ((x7148
                                                                  (list? l)))
                                                          (assert x7148)))
                                                       (g7146
                                                        (letrec ((x7149
                                                                  (numer?)))
                                                          (assert x7149)))
                                                       (g7147
                                                        (letrec ((x-cnd7150
                                                                  (zero? k)))
                                                          (if x-cnd7150
                                                            x
                                                            (letrec ((x7152
                                                                      (cdr x))
                                                                     (x7151
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7152
                                                               x7151))))))
                                                g7147)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7153 '())) g7153)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7154
                                                        (letrec ((x-cnd7155
                                                                  (letrec ((x7156
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7156))))
                                                          (if x-cnd7155
                                                            (letrec ((x7157
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7157))
                                                            #f))))
                                                g7154)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7158
                                                        (letrec ((x7160
                                                                  (number? x)))
                                                          (assert x7160)))
                                                       (g7159
                                                        (letrec ((val6888
                                                                  (< x y)))
                                                          (letrec ((g7161
                                                                    (if val6888
                                                                      val6888
                                                                      (letrec ((val6889
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7162
                                                                                  (if val6889
                                                                                    val6889
                                                                                    #f)))
                                                                          g7162)))))
                                                            g7161))))
                                                g7159)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7163
                                                        (letrec ((val6890
                                                                  (letrec ((x7164
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7164
                                                                     9))))
                                                          (letrec ((g7165
                                                                    (if val6890
                                                                      val6890
                                                                      (letrec ((val6891
                                                                                (letrec ((x7166
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7166
                                                                                   10))))
                                                                        (letrec ((g7167
                                                                                  (if val6891
                                                                                    val6891
                                                                                    (letrec ((x7168
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7168
                                                                                       32)))))
                                                                          g7167)))))
                                                            g7165))))
                                                g7163)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7169
                                                        (letrec ((x7170
                                                                  (letrec ((x7171
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7171))))
                                                          (cdr x7170))))
                                                g7169)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7172
                                                        (letrec ((x7174
                                                                  (number? x)))
                                                          (assert x7174)))
                                                       (g7173 (> x 0)))
                                                g7173)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7175 #f)) g7175)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7176
                                                        (letrec ((x7177
                                                                  (cdr x)))
                                                          (cdr x7177))))
                                                g7176)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7178
                                                        (letrec ((x7180
                                                                  (number? x)))
                                                          (assert x7180)))
                                                       (g7179
                                                        (letrec ((x-cnd7181
                                                                  (< x 0)))
                                                          (if x-cnd7181
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7179)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7182
                                                        (letrec ((val6892
                                                                  (eq? a b)))
                                                          (letrec ((g7183
                                                                    (if val6892
                                                                      val6892
                                                                      (letrec ((val6893
                                                                                (letrec ((x7185
                                                                                          (null?
                                                                                           a))
                                                                                         (x7184
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7185
                                                                                       x7184))))
                                                                        (letrec ((g7186
                                                                                  (if val6893
                                                                                    val6893
                                                                                    (letrec ((val6894
                                                                                              (letrec ((x7189
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7188
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7187
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7189
                                                                                                     x7188
                                                                                                     x7187))))
                                                                                      (letrec ((g7190
                                                                                                (if val6894
                                                                                                  val6894
                                                                                                  (letrec ((val6895
                                                                                                            (letrec ((x7198
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7197
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7194
                                                                                                                      (letrec ((x7196
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7195
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7196
                                                                                                                         x7195)))
                                                                                                                     (x7191
                                                                                                                      (letrec ((x7193
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7192
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7193
                                                                                                                         x7192))))
                                                                                                              (and x7198
                                                                                                                   x7197
                                                                                                                   x7194
                                                                                                                   x7191))))
                                                                                                    (letrec ((g7199
                                                                                                              (if val6895
                                                                                                                val6895
                                                                                                                (letrec ((x7215
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7214
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7200
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7201
                                                                                                                                      (letrec ((x7212
                                                                                                                                                (letrec ((x7213
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7213
                                                                                                                                                   n)))
                                                                                                                                               (x7202
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7203
                                                                                                                                                                      (letrec ((x7210
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7204
                                                                                                                                                                                (letrec ((x7207
                                                                                                                                                                                          (letrec ((x7209
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7208
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7209
                                                                                                                                                                                             x7208)))
                                                                                                                                                                                         (x7205
                                                                                                                                                                                          (letrec ((x7206
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7206))))
                                                                                                                                                                                  (and x7207
                                                                                                                                                                                       x7205))))
                                                                                                                                                                        (or x7210
                                                                                                                                                                            x7204))))
                                                                                                                                                              g7203))))
                                                                                                                                                  (letrec ((g7211
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7211))))
                                                                                                                                        (and x7212
                                                                                                                                             x7202))))
                                                                                                                              g7201))))
                                                                                                                  (and x7215
                                                                                                                       x7214
                                                                                                                       x7200)))))
                                                                                                      g7199)))))
                                                                                        g7190)))))
                                                                          g7186)))))
                                                            g7183))))
                                                g7182)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7216
                                                        (letrec ((x7217
                                                                  (letrec ((x7218
                                                                            (letrec ((x7219
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7219))))
                                                                    (car
                                                                     x7218))))
                                                          (cdr x7217))))
                                                g7216)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7220
                                                        (letrec ((x7221
                                                                  (letrec ((x7222
                                                                            (letrec ((x7223
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7223))))
                                                                    (car
                                                                     x7222))))
                                                          (car x7221))))
                                                g7220)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7224 (eq? x y)))
                                                g7224)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7225
                                                        (letrec ((x7227
                                                                  (number? x)))
                                                          (assert x7227)))
                                                       (g7226
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7228
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7229
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7229)))))
                                                            g7228))))
                                                g7226)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7230
                                                        (letrec ((x7233
                                                                  (string?
                                                                   filename)))
                                                          (assert x7233)))
                                                       (g7231
                                                        (letrec ((x7234
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7234)))
                                                       (g7232
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7235
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7236 res))
                                                            g7236))))
                                                g7232)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7237 (cons x '())))
                                                g7237)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7238
                                                        (letrec ((x7241
                                                                  (char? c1)))
                                                          (assert x7241)))
                                                       (g7239
                                                        (letrec ((x7242
                                                                  (char? c2)))
                                                          (assert x7242)))
                                                       (g7240
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7243
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7243))))
                                                g7240)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7244
                                                        (letrec ((x7245
                                                                  (letrec ((x7246
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7246))))
                                                          (cdr x7245))))
                                                g7244)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7247
                                                        (letrec ((x7248
                                                                  (letrec ((x7249
                                                                            (letrec ((x7250
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7250))))
                                                                    (car
                                                                     x7249))))
                                                          (cdr x7248))))
                                                g7247)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7251
                                                        (letrec ((x7252
                                                                  (letrec ((x7253
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7253))))
                                                          (car x7252))))
                                                g7251)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7254
                                                        (letrec ((x7255
                                                                  (letrec ((x7256
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7256))))
                                                          (car x7255))))
                                                g7254)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7257
                                                        (letrec ((x7260
                                                                  (char? c1)))
                                                          (assert x7260)))
                                                       (g7258
                                                        (letrec ((x7261
                                                                  (char? c2)))
                                                          (assert x7261)))
                                                       (g7259
                                                        (letrec ((x7262
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7262))))
                                                g7259)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7263
                                                        (letrec ((x7264
                                                                  (letrec ((x7265
                                                                            (letrec ((x7266
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7266))))
                                                                    (car
                                                                     x7265))))
                                                          (car x7264))))
                                                g7263)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7267
                                                        (letrec ((x7269
                                                                  (number? x)))
                                                          (assert x7269)))
                                                       (g7268 (< x 0)))
                                                g7268)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7270 (memq e l)))
                                                g7270)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7271
                                                        (letrec ((x7272
                                                                  (letrec ((x7273
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7273))))
                                                          (car x7272))))
                                                g7271)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7274 '())) g7274)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7275
                                                        (letrec ((x7277
                                                                  (list? l)))
                                                          (assert x7277)))
                                                       (g7276
                                                        (letrec ((x-cnd7278
                                                                  (null? l)))
                                                          (if x-cnd7278
                                                            '()
                                                            (letrec ((x7281
                                                                      (letrec ((x7282
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7282)))
                                                                     (x7279
                                                                      (letrec ((x7280
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7280))))
                                                              (append
                                                               x7281
                                                               x7279))))))
                                                g7276)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7283
                                                        (letrec ((x7284
                                                                  (letrec ((x7285
                                                                            (letrec ((x7286
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7286))))
                                                                    (car
                                                                     x7285))))
                                                          (car x7284))))
                                                g7283)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7287
                                                        (letrec ((x7288
                                                                  (letrec ((x7289
                                                                            (letrec ((x7290
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7290))))
                                                                    (cdr
                                                                     x7289))))
                                                          (cdr x7288))))
                                                g7287)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7291
                                                        (letrec ((x7293
                                                                  (number? x)))
                                                          (assert x7293)))
                                                       (g7292
                                                        (letrec ((x7294
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7294))))
                                                g7292)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7295
                                                        (letrec ((x7296
                                                                  (letrec ((x7297
                                                                            (letrec ((x7298
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7298))))
                                                                    (car
                                                                     x7297))))
                                                          (car x7296))))
                                                g7295)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7299
                                                        (letrec ((x7302
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7302)))
                                                       (g7300
                                                        (letrec ((x7303
                                                                  (list?
                                                                   args)))
                                                          (assert x7303)))
                                                       (g7301
                                                        (if cnd
                                                          (letrec ((g7304
                                                                    (proc)))
                                                            g7304)
                                                          (if cnd
                                                            (letrec ((g7305
                                                                      (letrec ((x7306
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7306))))
                                                              g7305)
                                                            (if cnd
                                                              (letrec ((g7307
                                                                        (letrec ((x7309
                                                                                  (car
                                                                                   args))
                                                                                 (x7308
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7309
                                                                           x7308))))
                                                                g7307)
                                                              (if cnd
                                                                (letrec ((g7310
                                                                          (letrec ((x7313
                                                                                    (car
                                                                                     args))
                                                                                   (x7312
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7311
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7313
                                                                             x7312
                                                                             x7311))))
                                                                  g7310)
                                                                (if cnd
                                                                  (letrec ((g7314
                                                                            (letrec ((x7318
                                                                                      (car
                                                                                       args))
                                                                                     (x7317
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7316
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7315
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7318
                                                                               x7317
                                                                               x7316
                                                                               x7315))))
                                                                    g7314)
                                                                  (if cnd
                                                                    (letrec ((g7319
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
                                                                                         args))
                                                                                       (x7320
                                                                                        (letrec ((x7321
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7321))))
                                                                                (proc
                                                                                 x7325
                                                                                 x7324
                                                                                 x7323
                                                                                 x7322
                                                                                 x7320))))
                                                                      g7319)
                                                                    (if cnd
                                                                      (letrec ((g7326
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
                                                                                             x7330)))
                                                                                         (x7327
                                                                                          (letrec ((x7328
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7328))))
                                                                                  (proc
                                                                                   x7334
                                                                                   x7333
                                                                                   x7332
                                                                                   x7331
                                                                                   x7329
                                                                                   x7327))))
                                                                        g7326)
                                                                      (if cnd
                                                                        (letrec ((g7335
                                                                                  (letrec ((x7345
                                                                                            (car
                                                                                             args))
                                                                                           (x7344
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7343
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7342
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7340
                                                                                            (letrec ((x7341
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7341)))
                                                                                           (x7338
                                                                                            (letrec ((x7339
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7339)))
                                                                                           (x7336
                                                                                            (letrec ((x7337
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7337))))
                                                                                    (proc
                                                                                     x7345
                                                                                     x7344
                                                                                     x7343
                                                                                     x7342
                                                                                     x7340
                                                                                     x7338
                                                                                     x7336))))
                                                                          g7335)
                                                                        (letrec ((g7346
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7346)))))))))))
                                                g7301)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7347
                                                        (letrec ((x7349
                                                                  (list? l)))
                                                          (assert x7349)))
                                                       (g7348
                                                        (letrec ((x-cnd7350
                                                                  (null? l)))
                                                          (if x-cnd7350
                                                            #f
                                                            (letrec ((x-cnd7351
                                                                      (letrec ((x7352
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7352
                                                                         e))))
                                                              (if x-cnd7351
                                                                l
                                                                (letrec ((x7353
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7353))))))))
                                                g7348)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7354
                                                        (letrec ((x7355
                                                                  (letrec ((x7356
                                                                            (letrec ((x7357
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7357))))
                                                                    (cdr
                                                                     x7356))))
                                                          (cdr x7355))))
                                                g7354)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7358
                                                        (letrec ((x7359
                                                                  (letrec ((x7360
                                                                            (letrec ((x7361
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7361))))
                                                                    (cdr
                                                                     x7360))))
                                                          (car x7359))))
                                                g7358)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7362 (random 42)))
                                                g7362)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7363
                                                        (letrec ((x7365
                                                                  (number? x)))
                                                          (assert x7365)))
                                                       (g7364 (= x 0)))
                                                g7364)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7366
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7367
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7367))))
                                                g7366)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7368
                                                        (letrec ((x7369
                                                                  (cdr x)))
                                                          (car x7369))))
                                                g7368)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7370
                                                        (letrec ((val6900
                                                                  (letrec ((x7373
                                                                            (pair?
                                                                             l))
                                                                           (x7371
                                                                            (letrec ((x7372
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7372))))
                                                                    (and x7373
                                                                         x7371))))
                                                          (letrec ((g7374
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7374))))
                                                g7370)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7375
                                                        (letrec ((x7376
                                                                  (letrec ((x7377
                                                                            (letrec ((x7378
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7378))))
                                                                    (cdr
                                                                     x7377))))
                                                          (cdr x7376))))
                                                g7375)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7379
                                                        (letrec ((x-cnd7380
                                                                  (letrec ((x7381
                                                                            #\0))
                                                                    (char<=?
                                                                     x7381
                                                                     c))))
                                                          (if x-cnd7380
                                                            (letrec ((x7382
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7382))
                                                            #f))))
                                                g7379)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7383
                                                        (letrec ((x7385
                                                                  (list? l)))
                                                          (assert x7385)))
                                                       (g7384
                                                        (letrec ((x-cnd7386
                                                                  (null? l)))
                                                          (if x-cnd7386
                                                            #f
                                                            (letrec ((x-cnd7387
                                                                      (letrec ((x7388
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7388
                                                                         k))))
                                                              (if x-cnd7387
                                                                (car l)
                                                                (letrec ((x7389
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7389))))))))
                                                g7384)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7390 (if x #f #t)))
                                                g7390)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7391 (append l1 l2)))
                                                g7391)))
                                           (memq
                                            (lambda (e l)
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
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7397
                                                                         e))))
                                                              (if x-cnd7396
                                                                l
                                                                (letrec ((x7398
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7398))))))))
                                                g7393)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7399
                                                        (letrec ((x7400
                                                                  (letrec ((x7401
                                                                            (letrec ((x7402
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7402))))
                                                                    (cdr
                                                                     x7401))))
                                                          (car x7400))))
                                                g7399)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7403
                                                        (letrec ((x7405
                                                                  (list? l)))
                                                          (assert x7405)))
                                                       (g7404
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7406
                                                                              (letrec ((x-cnd7407
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7407
                                                                                  0
                                                                                  (letrec ((x7408
                                                                                            (letrec ((x7409
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7409))))
                                                                                    (+
                                                                                     1
                                                                                     x7408))))))
                                                                      g7406))))
                                                          (letrec ((g7410
                                                                    (rec l)))
                                                            g7410))))
                                                g7404)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7411
                                                        (letrec ((x7414
                                                                  (char? c1)))
                                                          (assert x7414)))
                                                       (g7412
                                                        (letrec ((x7415
                                                                  (char? c2)))
                                                          (assert x7415)))
                                                       (g7413
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7416
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7416))))
                                                g7413)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7417
                                                        (letrec ((x7418
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7418))))
                                                g7417)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7419
                                                        (letrec ((x7420
                                                                  (letrec ((x7421
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7421))))
                                                          (cdr x7420))))
                                                g7419)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7422
                                                        (letrec ((x7424
                                                                  (list? l)))
                                                          (assert x7424)))
                                                       (g7423
                                                        (letrec ((x-cnd7425
                                                                  (null? l)))
                                                          (if x-cnd7425
                                                            #f
                                                            (letrec ((x-cnd7426
                                                                      (letrec ((x7427
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7427
                                                                         k))))
                                                              (if x-cnd7426
                                                                (car l)
                                                                (letrec ((x7428
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7428))))))))
                                                g7423)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7429
                                                        (letrec ((x7430
                                                                  (car x)))
                                                          (car x7430))))
                                                g7429)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7431
                                                        (letrec ((x7434
                                                                  (char? c1)))
                                                          (assert x7434)))
                                                       (g7432
                                                        (letrec ((x7435
                                                                  (char? c2)))
                                                          (assert x7435)))
                                                       (g7433
                                                        (letrec ((x7436
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7436))))
                                                g7433)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7437
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7438
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7438))))
                                                g7437)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7439
                                                        (letrec ((x7442
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7442)))
                                                       (g7440
                                                        (letrec ((x7443
                                                                  (list? l)))
                                                          (assert x7443)))
                                                       (g7441
                                                        (letrec ((x-cnd7444
                                                                  (null? l)))
                                                          (if x-cnd7444
                                                            #t
                                                            (letrec ((x-cnd7445
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7445
                                                                (letrec ((g7446
                                                                          (letrec ((x7448
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7448)))
                                                                         (g7447
                                                                          (letrec ((x7449
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7449))))
                                                                  g7447)
                                                                '()))))))
                                                g7441)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7450
                                                        (letrec ((x7452
                                                                  (number? x)))
                                                          (assert x7452)))
                                                       (g7451
                                                        (letrec ((x-cnd7453
                                                                  (< x 0)))
                                                          (if x-cnd7453
                                                            (- 0 x)
                                                            x))))
                                                g7451)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7454
                                                        (letrec ((x7457
                                                                  (char? c1)))
                                                          (assert x7457)))
                                                       (g7455
                                                        (letrec ((x7458
                                                                  (char? c2)))
                                                          (assert x7458)))
                                                       (g7456
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7459
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7459))))
                                                g7456)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7460
                                                        (letrec ((x7461
                                                                  (letrec ((x7462
                                                                            (letrec ((x7463
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7463))))
                                                                    (cdr
                                                                     x7462))))
                                                          (car x7461))))
                                                g7460)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7464 #f)) g7464)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7465
                                                        (letrec ((x7467
                                                                  (letrec ((x7468
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7468)))
                                                                 (x7466
                                                                  (gcd m n)))
                                                          (/ x7467 x7466))))
                                                g7465)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7469
                                                        (letrec ((x7471
                                                                  (number? x)))
                                                          (assert x7471)))
                                                       (g7470
                                                        (letrec ((x7472
                                                                  (<= x y)))
                                                          (not x7472))))
                                                g7470)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7473
                                                        (letrec ((x7477
                                                                  (list? l)))
                                                          (assert x7477)))
                                                       (g7474
                                                        (letrec ((x7478
                                                                  (number?
                                                                   index)))
                                                          (assert x7478)))
                                                       (g7475
                                                        (letrec ((x7479
                                                                  (letrec ((x7480
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7480))))
                                                          (assert x7479)))
                                                       (g7476
                                                        (letrec ((x-cnd7481
                                                                  (= index 0)))
                                                          (if x-cnd7481
                                                            (car l)
                                                            (letrec ((x7483
                                                                      (cdr l))
                                                                     (x7482
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7483
                                                               x7482))))))
                                                g7476)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7484
                                                        (letrec ((x-cnd7485
                                                                  (= b 0)))
                                                          (if x-cnd7485
                                                            a
                                                            (letrec ((x7486
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7486))))))
                                                g7484)))
                                           (sum
                                            (lambda (n)
                                              (letrec ((g7487
                                                        (letrec ((x-cnd7488
                                                                  (<= n 0)))
                                                          (if x-cnd7488
                                                            0
                                                            (letrec ((x7489
                                                                      (letrec ((x7490
                                                                                (-
                                                                                 n
                                                                                 1)))
                                                                        (sum
                                                                         x7490))))
                                                              (+ n x7489))))))
                                                g7487))))
                                    (letrec ((g7491
                                              ((lambda (j6974 k6975 f6976)
                                                 (letrec ((g7492
                                                           (lambda (g6973)
                                                             (letrec ((g7493
                                                                       (letrec ((x6977
                                                                                 (integer?/c
                                                                                  j6974
                                                                                  k6975
                                                                                  g6973)))
                                                                         (letrec ((g7494
                                                                                   (letrec ((x7496
                                                                                             ((lambda (n)
                                                                                                (letrec ((g7497
                                                                                                          (letrec ((x7498
                                                                                                                    (>=/c
                                                                                                                     n)))
                                                                                                            (and/c
                                                                                                             integer?/c
                                                                                                             x7498))))
                                                                                                  g7497))
                                                                                              x6977))
                                                                                            (x7495
                                                                                             (f6976
                                                                                              x6977)))
                                                                                     (x7496
                                                                                      j6974
                                                                                      k6975
                                                                                      x7495))))
                                                                           g7494))))
                                                               g7493))))
                                                   g7492))
                                               'module
                                               'importer
                                               sum)))
                                      g7491))))
                          g6991))))
              g6989)))
    g6988))
