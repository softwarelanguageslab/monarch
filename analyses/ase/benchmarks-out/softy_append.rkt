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
                                                                                                                (letrec ((x7218
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7217
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7200
                                                                                                                          (letrec ((x7214
                                                                                                                                    (letrec ((x7215
                                                                                                                                              (letrec ((x7216
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7216))))
                                                                                                                                      (x7215)))
                                                                                                                                   (x7201
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
                                                                                                                            (let x7214 x7201))))
                                                                                                                  (and x7218
                                                                                                                       x7217
                                                                                                                       x7200)))))
                                                                                                      g7199)))))
                                                                                        g7190)))))
                                                                          g7186)))))
                                                            g7183))))
                                                g7182)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7219
                                                        (letrec ((x7220
                                                                  (letrec ((x7221
                                                                            (letrec ((x7222
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7222))))
                                                                    (car
                                                                     x7221))))
                                                          (cdr x7220))))
                                                g7219)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7223
                                                        (letrec ((x7224
                                                                  (letrec ((x7225
                                                                            (letrec ((x7226
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7226))))
                                                                    (car
                                                                     x7225))))
                                                          (car x7224))))
                                                g7223)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7227 (eq? x y)))
                                                g7227)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7228
                                                        (letrec ((x7230
                                                                  (number? x)))
                                                          (assert x7230)))
                                                       (g7229
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7231
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7232
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7232)))))
                                                            g7231))))
                                                g7229)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7233
                                                        (letrec ((x7236
                                                                  (string?
                                                                   filename)))
                                                          (assert x7236)))
                                                       (g7234
                                                        (letrec ((x7237
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7237)))
                                                       (g7235
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7238
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7239 res))
                                                            g7239))))
                                                g7235)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7240 (cons x '())))
                                                g7240)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7241
                                                        (letrec ((x7244
                                                                  (char? c1)))
                                                          (assert x7244)))
                                                       (g7242
                                                        (letrec ((x7245
                                                                  (char? c2)))
                                                          (assert x7245)))
                                                       (g7243
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7246
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7246))))
                                                g7243)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7247
                                                        (letrec ((x7248
                                                                  (letrec ((x7249
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7249))))
                                                          (cdr x7248))))
                                                g7247)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7250
                                                        (letrec ((x7251
                                                                  (letrec ((x7252
                                                                            (letrec ((x7253
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7253))))
                                                                    (car
                                                                     x7252))))
                                                          (cdr x7251))))
                                                g7250)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7254
                                                        (letrec ((x7255
                                                                  (letrec ((x7256
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7256))))
                                                          (car x7255))))
                                                g7254)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7257
                                                        (letrec ((x7258
                                                                  (letrec ((x7259
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7259))))
                                                          (car x7258))))
                                                g7257)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7260
                                                        (letrec ((x7263
                                                                  (char? c1)))
                                                          (assert x7263)))
                                                       (g7261
                                                        (letrec ((x7264
                                                                  (char? c2)))
                                                          (assert x7264)))
                                                       (g7262
                                                        (letrec ((x7265
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7265))))
                                                g7262)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7266
                                                        (letrec ((x7267
                                                                  (letrec ((x7268
                                                                            (letrec ((x7269
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7269))))
                                                                    (car
                                                                     x7268))))
                                                          (car x7267))))
                                                g7266)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7270
                                                        (letrec ((x7272
                                                                  (number? x)))
                                                          (assert x7272)))
                                                       (g7271 (< x 0)))
                                                g7271)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7273 (memq e l)))
                                                g7273)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7274
                                                        (letrec ((x7275
                                                                  (letrec ((x7276
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7276))))
                                                          (car x7275))))
                                                g7274)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7277 '())) g7277)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7278
                                                        (letrec ((x7280
                                                                  (list? l)))
                                                          (assert x7280)))
                                                       (g7279
                                                        (letrec ((x-cnd7281
                                                                  (null? l)))
                                                          (if x-cnd7281
                                                            '()
                                                            (letrec ((x7284
                                                                      (letrec ((x7285
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7285)))
                                                                     (x7282
                                                                      (letrec ((x7283
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7283))))
                                                              (append
                                                               x7284
                                                               x7282))))))
                                                g7279)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7286
                                                        (letrec ((x7287
                                                                  (letrec ((x7288
                                                                            (letrec ((x7289
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7289))))
                                                                    (car
                                                                     x7288))))
                                                          (car x7287))))
                                                g7286)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7290
                                                        (letrec ((x7291
                                                                  (letrec ((x7292
                                                                            (letrec ((x7293
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7293))))
                                                                    (cdr
                                                                     x7292))))
                                                          (cdr x7291))))
                                                g7290)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7294
                                                        (letrec ((x7296
                                                                  (number? x)))
                                                          (assert x7296)))
                                                       (g7295
                                                        (letrec ((x7297
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7297))))
                                                g7295)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7298
                                                        (letrec ((x7299
                                                                  (letrec ((x7300
                                                                            (letrec ((x7301
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7301))))
                                                                    (car
                                                                     x7300))))
                                                          (car x7299))))
                                                g7298)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7302
                                                        (letrec ((x7305
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7305)))
                                                       (g7303
                                                        (letrec ((x7306
                                                                  (list?
                                                                   args)))
                                                          (assert x7306)))
                                                       (g7304
                                                        (if cnd
                                                          (letrec ((g7307
                                                                    (proc)))
                                                            g7307)
                                                          (if cnd
                                                            (letrec ((g7308
                                                                      (letrec ((x7309
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7309))))
                                                              g7308)
                                                            (if cnd
                                                              (letrec ((g7310
                                                                        (letrec ((x7312
                                                                                  (car
                                                                                   args))
                                                                                 (x7311
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7312
                                                                           x7311))))
                                                                g7310)
                                                              (if cnd
                                                                (letrec ((g7313
                                                                          (letrec ((x7316
                                                                                    (car
                                                                                     args))
                                                                                   (x7315
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7314
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7316
                                                                             x7315
                                                                             x7314))))
                                                                  g7313)
                                                                (if cnd
                                                                  (letrec ((g7317
                                                                            (letrec ((x7321
                                                                                      (car
                                                                                       args))
                                                                                     (x7320
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7319
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7318
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7321
                                                                               x7320
                                                                               x7319
                                                                               x7318))))
                                                                    g7317)
                                                                  (if cnd
                                                                    (letrec ((g7322
                                                                              (letrec ((x7328
                                                                                        (car
                                                                                         args))
                                                                                       (x7327
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7326
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7325
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7323
                                                                                        (letrec ((x7324
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7324))))
                                                                                (proc
                                                                                 x7328
                                                                                 x7327
                                                                                 x7326
                                                                                 x7325
                                                                                 x7323))))
                                                                      g7322)
                                                                    (if cnd
                                                                      (letrec ((g7329
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
                                                                                             x7333)))
                                                                                         (x7330
                                                                                          (letrec ((x7331
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7331))))
                                                                                  (proc
                                                                                   x7337
                                                                                   x7336
                                                                                   x7335
                                                                                   x7334
                                                                                   x7332
                                                                                   x7330))))
                                                                        g7329)
                                                                      (if cnd
                                                                        (letrec ((g7338
                                                                                  (letrec ((x7348
                                                                                            (car
                                                                                             args))
                                                                                           (x7347
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7346
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7345
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7343
                                                                                            (letrec ((x7344
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7344)))
                                                                                           (x7341
                                                                                            (letrec ((x7342
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7342)))
                                                                                           (x7339
                                                                                            (letrec ((x7340
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7340))))
                                                                                    (proc
                                                                                     x7348
                                                                                     x7347
                                                                                     x7346
                                                                                     x7345
                                                                                     x7343
                                                                                     x7341
                                                                                     x7339))))
                                                                          g7338)
                                                                        (letrec ((g7349
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7349)))))))))))
                                                g7304)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7350
                                                        (letrec ((x7352
                                                                  (list? l)))
                                                          (assert x7352)))
                                                       (g7351
                                                        (letrec ((x-cnd7353
                                                                  (null? l)))
                                                          (if x-cnd7353
                                                            #f
                                                            (letrec ((x-cnd7354
                                                                      (letrec ((x7355
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7355
                                                                         e))))
                                                              (if x-cnd7354
                                                                l
                                                                (letrec ((x7356
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7356))))))))
                                                g7351)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7357
                                                        (letrec ((x7358
                                                                  (letrec ((x7359
                                                                            (letrec ((x7360
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7360))))
                                                                    (cdr
                                                                     x7359))))
                                                          (cdr x7358))))
                                                g7357)))
                                           (cadddr
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
                                                          (car x7362))))
                                                g7361)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7365 (random 42)))
                                                g7365)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7366
                                                        (letrec ((x7368
                                                                  (number? x)))
                                                          (assert x7368)))
                                                       (g7367 (= x 0)))
                                                g7367)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7369
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7370
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7370))))
                                                g7369)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7371
                                                        (letrec ((x7372
                                                                  (cdr x)))
                                                          (car x7372))))
                                                g7371)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7373
                                                        (letrec ((val6900
                                                                  (letrec ((x7376
                                                                            (pair?
                                                                             l))
                                                                           (x7374
                                                                            (letrec ((x7375
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7375))))
                                                                    (and x7376
                                                                         x7374))))
                                                          (letrec ((g7377
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7377))))
                                                g7373)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7378
                                                        (letrec ((x7379
                                                                  (letrec ((x7380
                                                                            (letrec ((x7381
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7381))))
                                                                    (cdr
                                                                     x7380))))
                                                          (cdr x7379))))
                                                g7378)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7382
                                                        (letrec ((x-cnd7383
                                                                  (letrec ((x7384
                                                                            #\0))
                                                                    (char<=?
                                                                     x7384
                                                                     c))))
                                                          (if x-cnd7383
                                                            (letrec ((x7385
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7385))
                                                            #f))))
                                                g7382)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7386
                                                        (letrec ((x7388
                                                                  (list? l)))
                                                          (assert x7388)))
                                                       (g7387
                                                        (letrec ((x-cnd7389
                                                                  (null? l)))
                                                          (if x-cnd7389
                                                            #f
                                                            (letrec ((x-cnd7390
                                                                      (letrec ((x7391
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7391
                                                                         k))))
                                                              (if x-cnd7390
                                                                (car l)
                                                                (letrec ((x7392
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7392))))))))
                                                g7387)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7393 (if x #f #t)))
                                                g7393)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7394 (append l1 l2)))
                                                g7394)))
                                           (memq
                                            (lambda (e l)
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
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7400
                                                                         e))))
                                                              (if x-cnd7399
                                                                l
                                                                (letrec ((x7401
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7401))))))))
                                                g7396)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7402
                                                        (letrec ((x7403
                                                                  (letrec ((x7404
                                                                            (letrec ((x7405
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7405))))
                                                                    (cdr
                                                                     x7404))))
                                                          (car x7403))))
                                                g7402)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7406
                                                        (letrec ((x7408
                                                                  (list? l)))
                                                          (assert x7408)))
                                                       (g7407
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7409
                                                                              (letrec ((x-cnd7410
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7410
                                                                                  0
                                                                                  (letrec ((x7411
                                                                                            (letrec ((x7412
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7412))))
                                                                                    (+
                                                                                     1
                                                                                     x7411))))))
                                                                      g7409))))
                                                          (letrec ((g7413
                                                                    (rec l)))
                                                            g7413))))
                                                g7407)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7414
                                                        (letrec ((x7417
                                                                  (char? c1)))
                                                          (assert x7417)))
                                                       (g7415
                                                        (letrec ((x7418
                                                                  (char? c2)))
                                                          (assert x7418)))
                                                       (g7416
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7419
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7419))))
                                                g7416)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7420
                                                        (letrec ((x7421
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7421))))
                                                g7420)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7422
                                                        (letrec ((x7423
                                                                  (letrec ((x7424
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7424))))
                                                          (cdr x7423))))
                                                g7422)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7425
                                                        (letrec ((x7427
                                                                  (list? l)))
                                                          (assert x7427)))
                                                       (g7426
                                                        (letrec ((x-cnd7428
                                                                  (null? l)))
                                                          (if x-cnd7428
                                                            #f
                                                            (letrec ((x-cnd7429
                                                                      (letrec ((x7430
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7430
                                                                         k))))
                                                              (if x-cnd7429
                                                                (car l)
                                                                (letrec ((x7431
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7431))))))))
                                                g7426)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7432
                                                        (letrec ((x7433
                                                                  (car x)))
                                                          (car x7433))))
                                                g7432)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7434
                                                        (letrec ((x7437
                                                                  (char? c1)))
                                                          (assert x7437)))
                                                       (g7435
                                                        (letrec ((x7438
                                                                  (char? c2)))
                                                          (assert x7438)))
                                                       (g7436
                                                        (letrec ((x7439
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7439))))
                                                g7436)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7440
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7441
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7441))))
                                                g7440)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7442
                                                        (letrec ((x7445
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7445)))
                                                       (g7443
                                                        (letrec ((x7446
                                                                  (list? l)))
                                                          (assert x7446)))
                                                       (g7444
                                                        (letrec ((x-cnd7447
                                                                  (null? l)))
                                                          (if x-cnd7447
                                                            #t
                                                            (letrec ((x-cnd7448
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7448
                                                                (letrec ((g7449
                                                                          (letrec ((x7451
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7451)))
                                                                         (g7450
                                                                          (letrec ((x7452
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7452))))
                                                                  g7450)
                                                                '()))))))
                                                g7444)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7453
                                                        (letrec ((x7455
                                                                  (number? x)))
                                                          (assert x7455)))
                                                       (g7454
                                                        (letrec ((x-cnd7456
                                                                  (< x 0)))
                                                          (if x-cnd7456
                                                            (- 0 x)
                                                            x))))
                                                g7454)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7457
                                                        (letrec ((x7460
                                                                  (char? c1)))
                                                          (assert x7460)))
                                                       (g7458
                                                        (letrec ((x7461
                                                                  (char? c2)))
                                                          (assert x7461)))
                                                       (g7459
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7462
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7462))))
                                                g7459)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7463
                                                        (letrec ((x7464
                                                                  (letrec ((x7465
                                                                            (letrec ((x7466
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7466))))
                                                                    (cdr
                                                                     x7465))))
                                                          (car x7464))))
                                                g7463)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7467 #f)) g7467)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7468
                                                        (letrec ((x7470
                                                                  (letrec ((x7471
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7471)))
                                                                 (x7469
                                                                  (gcd m n)))
                                                          (/ x7470 x7469))))
                                                g7468)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7472
                                                        (letrec ((x7474
                                                                  (number? x)))
                                                          (assert x7474)))
                                                       (g7473
                                                        (letrec ((x7475
                                                                  (<= x y)))
                                                          (not x7475))))
                                                g7473)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7476
                                                        (letrec ((x7480
                                                                  (list? l)))
                                                          (assert x7480)))
                                                       (g7477
                                                        (letrec ((x7481
                                                                  (number?
                                                                   index)))
                                                          (assert x7481)))
                                                       (g7478
                                                        (letrec ((x7482
                                                                  (letrec ((x7483
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7483))))
                                                          (assert x7482)))
                                                       (g7479
                                                        (letrec ((x-cnd7484
                                                                  (= index 0)))
                                                          (if x-cnd7484
                                                            (car l)
                                                            (letrec ((x7486
                                                                      (cdr l))
                                                                     (x7485
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7486
                                                               x7485))))))
                                                g7479)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7487
                                                        (letrec ((x-cnd7488
                                                                  (= b 0)))
                                                          (if x-cnd7488
                                                            a
                                                            (letrec ((x7489
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7489))))))
                                                g7487)))
                                           (append
                                            (lambda (xs ys)
                                              (letrec ((g7490
                                                        (letrec ((x-cnd7491
                                                                  (empty? xs)))
                                                          (if x-cnd7491
                                                            ys
                                                            (letrec ((x7494
                                                                      (car xs))
                                                                     (x7492
                                                                      (letrec ((x7493
                                                                                (cdr
                                                                                 xs)))
                                                                        (append
                                                                         x7493
                                                                         ys))))
                                                              (cons
                                                               x7494
                                                               x7492))))))
                                                g7490))))
                                    (letrec ((g7495
                                              (letrec ((x7498
                                                        ((lambda (j6975
                                                                  k6976
                                                                  f6977)
                                                           (letrec ((g7499
                                                                     (lambda (g6973
                                                                              g6974)
                                                                       (letrec ((g7500
                                                                                 (letrec ((x7506
                                                                                           (listof
                                                                                            any/c))
                                                                                          (x7501
                                                                                           (letrec ((x7504
                                                                                                     (letrec ((x7505
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7505
                                                                                                        j6975
                                                                                                        k6976
                                                                                                        g6973)))
                                                                                                    (x7502
                                                                                                     (letrec ((x7503
                                                                                                               (listof
                                                                                                                any/c)))
                                                                                                       (x7503
                                                                                                        j6975
                                                                                                        k6976
                                                                                                        g6974))))
                                                                                             (f6977
                                                                                              x7504
                                                                                              x7502))))
                                                                                   (x7506
                                                                                    j6975
                                                                                    k6976
                                                                                    x7501))))
                                                                         g7500))))
                                                             g7499))
                                                         'module
                                                         'importer
                                                         append))
                                                       (x7497 (input))
                                                       (x7496 (input)))
                                                (x7498 x7497 x7496))))
                                      g7495))))
                          g6991))))
              g6989)))
    g6988))
