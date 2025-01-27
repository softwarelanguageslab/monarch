(letrec ((any? (lambda (v) (letrec ((g6973 #t)) g6973)))
         (meta (lambda (v) (letrec ((g6974 v)) g6974)))
         (member
          (lambda (v lst)
            (letrec ((g6975
                      (letrec ((g6976
                                (letrec ((x-e6977 lst))
                                  (match
                                   x-e6977
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd6978 (eq? v v1)))
                                       (if x-cnd6978 #t (member v vs)))))))))
                        g6976)))
              g6975)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g6979 (lambda (v) (letrec ((g6980 v)) g6980)))) g6979)))
         (nonzero?
          (lambda (v)
            (letrec ((g6981 (letrec ((x6982 (= v 0))) (not x6982)))) g6981))))
  (letrec ((g6983
            (letrec ((g6984
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g6985 '())
                                 (g6986
                                  (letrec ((real/c
                                            (lambda (g6904 g6905 g6906)
                                              (letrec ((g6987
                                                        (letrec ((x-cnd6988
                                                                  (real?
                                                                   g6906)))
                                                          (if x-cnd6988
                                                            g6906
                                                            (blame
                                                             g6904
                                                             'real?)))))
                                                g6987)))
                                           (boolean?/c
                                            (lambda (g6907 g6908 g6909)
                                              (letrec ((g6989
                                                        (letrec ((x-cnd6990
                                                                  (boolean?
                                                                   g6909)))
                                                          (if x-cnd6990
                                                            g6909
                                                            (blame
                                                             g6907
                                                             'boolean?)))))
                                                g6989)))
                                           (number?/c
                                            (lambda (g6910 g6911 g6912)
                                              (letrec ((g6991
                                                        (letrec ((x-cnd6992
                                                                  (number?
                                                                   g6912)))
                                                          (if x-cnd6992
                                                            g6912
                                                            (blame
                                                             g6910
                                                             'number?)))))
                                                g6991)))
                                           (any/c
                                            (lambda (g6913 g6914 g6915)
                                              (letrec ((g6993
                                                        (letrec ((x-cnd6994
                                                                  ((lambda (v)
                                                                     (letrec ((g6995
                                                                               #t))
                                                                       g6995))
                                                                   g6915)))
                                                          (if x-cnd6994
                                                            g6915
                                                            (blame
                                                             g6913
                                                             '(lambda (v)
                                                                #t))))))
                                                g6993)))
                                           (any?/c
                                            (lambda (g6916 g6917 g6918)
                                              (letrec ((g6996
                                                        (letrec ((x-cnd6997
                                                                  ((lambda (v)
                                                                     (letrec ((g6998
                                                                               #t))
                                                                       g6998))
                                                                   g6918)))
                                                          (if x-cnd6997
                                                            g6918
                                                            (blame
                                                             g6916
                                                             '(lambda (v)
                                                                #t))))))
                                                g6996)))
                                           (cons?/c
                                            (lambda (g6919 g6920 g6921)
                                              (letrec ((g6999
                                                        (letrec ((x-cnd7000
                                                                  (pair?
                                                                   g6921)))
                                                          (if x-cnd7000
                                                            g6921
                                                            (blame
                                                             g6919
                                                             'pair?)))))
                                                g6999)))
                                           (pair?/c
                                            (lambda (g6922 g6923 g6924)
                                              (letrec ((g7001
                                                        (letrec ((x-cnd7002
                                                                  (pair?
                                                                   g6924)))
                                                          (if x-cnd7002
                                                            g6924
                                                            (blame
                                                             g6922
                                                             'pair?)))))
                                                g7001)))
                                           (integer?/c
                                            (lambda (g6925 g6926 g6927)
                                              (letrec ((g7003
                                                        (letrec ((x-cnd7004
                                                                  (integer?
                                                                   g6927)))
                                                          (if x-cnd7004
                                                            g6927
                                                            (blame
                                                             g6925
                                                             'integer?)))))
                                                g7003)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7005
                                                        (lambda (k j v)
                                                          (letrec ((g7006
                                                                    (letrec ((x-cnd7007
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7007
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7006))))
                                                g7005)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7008
                                                        (lambda (k j v)
                                                          (letrec ((g7009
                                                                    (letrec ((x-cnd7010
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7010
                                                                        '()
                                                                        (letrec ((x7014
                                                                                  (letrec ((x7015
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7015)))
                                                                                 (x7011
                                                                                  (letrec ((x7013
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7012
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7013
                                                                                     k
                                                                                     j
                                                                                     x7012))))
                                                                          (cons
                                                                           x7014
                                                                           x7011))))))
                                                            g7009))))
                                                g7008)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7016 #t)) g7016)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7017
                                                        (letrec ((x7018
                                                                  (= v 0)))
                                                          (not x7018))))
                                                g7017)))
                                           (nonzero?/c
                                            (lambda (g6928 g6929 g6930)
                                              (letrec ((g7019
                                                        (letrec ((x-cnd7020
                                                                  ((lambda (v)
                                                                     (letrec ((g7021
                                                                               (letrec ((x7022
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7022))))
                                                                       g7021))
                                                                   g6930)))
                                                          (if x-cnd7020
                                                            g6930
                                                            (blame
                                                             g6928
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7019)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7023 v)) g7023)))
                                           (+
                                            ((lambda (j6933 k6934 f6935)
                                               (letrec ((g7025
                                                         (lambda (g6931 g6932)
                                                           (letrec ((g7026
                                                                     (letrec ((x7027
                                                                               (letrec ((x7029
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6931))
                                                                                        (x7028
                                                                                         (number?/c
                                                                                          j6933
                                                                                          k6934
                                                                                          g6932)))
                                                                                 (f6935
                                                                                  x7029
                                                                                  x7028))))
                                                                       (number?/c
                                                                        j6933
                                                                        k6934
                                                                        x7027))))
                                                             g7026))))
                                                 g7025))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7024 (orig-+ a b)))
                                                 g7024))))
                                           (-
                                            ((lambda (j6938 k6939 f6940)
                                               (letrec ((g7031
                                                         (lambda (g6936 g6937)
                                                           (letrec ((g7032
                                                                     (letrec ((x7033
                                                                               (letrec ((x7035
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6936))
                                                                                        (x7034
                                                                                         (number?/c
                                                                                          j6938
                                                                                          k6939
                                                                                          g6937)))
                                                                                 (f6940
                                                                                  x7035
                                                                                  x7034))))
                                                                       (number?/c
                                                                        j6938
                                                                        k6939
                                                                        x7033))))
                                                             g7032))))
                                                 g7031))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7030 (orig-- a b)))
                                                 g7030))))
                                           (*
                                            ((lambda (j6943 k6944 f6945)
                                               (letrec ((g7037
                                                         (lambda (g6941 g6942)
                                                           (letrec ((g7038
                                                                     (letrec ((x7039
                                                                               (letrec ((x7041
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6941))
                                                                                        (x7040
                                                                                         (number?/c
                                                                                          j6943
                                                                                          k6944
                                                                                          g6942)))
                                                                                 (f6945
                                                                                  x7041
                                                                                  x7040))))
                                                                       (number?/c
                                                                        j6943
                                                                        k6944
                                                                        x7039))))
                                                             g7038))))
                                                 g7037))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7036 (orig-* a b)))
                                                 g7036))))
                                           (/
                                            ((lambda (j6948 k6949 f6950)
                                               (letrec ((g7043
                                                         (lambda (g6946 g6947)
                                                           (letrec ((g7044
                                                                     (letrec ((x7045
                                                                               (letrec ((x7047
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6946))
                                                                                        (x7046
                                                                                         (number?/c
                                                                                          j6948
                                                                                          k6949
                                                                                          g6947)))
                                                                                 (f6950
                                                                                  x7047
                                                                                  x7046))))
                                                                       (number?/c
                                                                        j6948
                                                                        k6949
                                                                        x7045))))
                                                             g7044))))
                                                 g7043))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7042 (orig-/ a b)))
                                                 g7042))))
                                           (car
                                            ((lambda (j6952 k6953 f6954)
                                               (letrec ((g7049
                                                         (lambda (g6951)
                                                           (letrec ((g7050
                                                                     (letrec ((x7051
                                                                               (letrec ((x7052
                                                                                         (pair?/c
                                                                                          j6952
                                                                                          k6953
                                                                                          g6951)))
                                                                                 (f6954
                                                                                  x7052))))
                                                                       (any/c
                                                                        j6952
                                                                        k6953
                                                                        x7051))))
                                                             g7050))))
                                                 g7049))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7048 (orig-car p)))
                                                 g7048))))
                                           (cdr
                                            ((lambda (j6956 k6957 f6958)
                                               (letrec ((g7054
                                                         (lambda (g6955)
                                                           (letrec ((g7055
                                                                     (letrec ((x7056
                                                                               (letrec ((x7057
                                                                                         (pair?/c
                                                                                          j6956
                                                                                          k6957
                                                                                          g6955)))
                                                                                 (f6958
                                                                                  x7057))))
                                                                       (any/c
                                                                        j6956
                                                                        k6957
                                                                        x7056))))
                                                             g7055))))
                                                 g7054))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7053 (orig-cdr p)))
                                                 g7053))))
                                           (cons
                                            ((lambda (j6961 k6962 f6963)
                                               (letrec ((g7059
                                                         (lambda (g6959 g6960)
                                                           (letrec ((g7060
                                                                     (letrec ((x7061
                                                                               (letrec ((x7063
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6959))
                                                                                        (x7062
                                                                                         (any/c
                                                                                          j6961
                                                                                          k6962
                                                                                          g6960)))
                                                                                 (f6963
                                                                                  x7063
                                                                                  x7062))))
                                                                       (pair?/c
                                                                        j6961
                                                                        k6962
                                                                        x7061))))
                                                             g7060))))
                                                 g7059))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7058 (cons a b)))
                                                 g7058))))
                                           (vector-ref
                                            ((lambda (j6965 k6966 f6967)
                                               (letrec ((g7065
                                                         (lambda (g6964)
                                                           (letrec ((g7066
                                                                     (letrec ((x7067
                                                                               (letrec ((x7068
                                                                                         (vector?/c
                                                                                          j6965
                                                                                          k6966
                                                                                          g6964)))
                                                                                 (f6967
                                                                                  x7068))))
                                                                       (integer?/c
                                                                        j6965
                                                                        k6966
                                                                        x7067))))
                                                             g7066))))
                                                 g7065))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7064
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7064))))
                                           (vector-set!
                                            ((lambda (j6970 k6971 f6972)
                                               (letrec ((g7070
                                                         (lambda (g6968 g6969)
                                                           (letrec ((g7071
                                                                     (letrec ((x7072
                                                                               (letrec ((x7074
                                                                                         (vector?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6968))
                                                                                        (x7073
                                                                                         (integer?/c
                                                                                          j6970
                                                                                          k6971
                                                                                          g6969)))
                                                                                 (f6972
                                                                                  x7074
                                                                                  x7073))))
                                                                       (any/c
                                                                        j6970
                                                                        k6971
                                                                        x7072))))
                                                             g7071))))
                                                 g7070))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7069
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7069))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7075 #t)) g7075)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7076
                                                        (letrec ((x7077
                                                                  (letrec ((x7078
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7078))))
                                                          (cdr x7077))))
                                                g7076)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7079
                                                        (letrec ((x7082
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7082)))
                                                       (g7080
                                                        (letrec ((x7083
                                                                  (list? l)))
                                                          (assert x7083)))
                                                       (g7081
                                                        (letrec ((x-cnd7084
                                                                  (null? l)))
                                                          (if x-cnd7084
                                                            '()
                                                            (letrec ((x7087
                                                                      (letrec ((x7088
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7088)))
                                                                     (x7085
                                                                      (letrec ((x7086
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7086))))
                                                              (cons
                                                               x7087
                                                               x7085))))))
                                                g7081)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7089
                                                        (letrec ((x7090
                                                                  (car x)))
                                                          (cdr x7090))))
                                                g7089)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7091
                                                        (letrec ((x7092
                                                                  (letrec ((x7093
                                                                            (letrec ((x7094
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7094))))
                                                                    (cdr
                                                                     x7093))))
                                                          (car x7092))))
                                                g7091)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7095
                                                        (letrec ((x7096
                                                                  (letrec ((x7097
                                                                            (letrec ((x7098
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7098))))
                                                                    (car
                                                                     x7097))))
                                                          (cdr x7096))))
                                                g7095)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7099
                                                        (letrec ((x7102
                                                                  (string?
                                                                   filename)))
                                                          (assert x7102)))
                                                       (g7100
                                                        (letrec ((x7103
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7103)))
                                                       (g7101
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7104
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7105 res))
                                                            g7105))))
                                                g7101)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7106
                                                        (letrec ((x7107
                                                                  (letrec ((x7108
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7108))))
                                                          (car x7107))))
                                                g7106)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7109
                                                        (letrec ((x7110
                                                                  (letrec ((x7111
                                                                            (letrec ((x7112
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7112))))
                                                                    (car
                                                                     x7111))))
                                                          (cdr x7110))))
                                                g7109)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7113
                                                        (letrec ((x7115
                                                                  (list? l)))
                                                          (assert x7115)))
                                                       (g7114
                                                        (letrec ((x-cnd7116
                                                                  (null? l)))
                                                          (if x-cnd7116
                                                            #f
                                                            (letrec ((x-cnd7117
                                                                      (letrec ((x7118
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7118
                                                                         k))))
                                                              (if x-cnd7117
                                                                (car l)
                                                                (letrec ((x7119
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7119))))))))
                                                g7114)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7120
                                                        (letrec ((x7121
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7121))))
                                                g7120)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7122
                                                        (letrec ((x7124
                                                                  (list? l)))
                                                          (assert x7124)))
                                                       (g7123
                                                        (letrec ((x-cnd7125
                                                                  (null? l)))
                                                          (if x-cnd7125
                                                            ""
                                                            (letrec ((x7128
                                                                      (letrec ((x7129
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7129)))
                                                                     (x7126
                                                                      (letrec ((x7127
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7127))))
                                                              (string-append
                                                               x7128
                                                               x7126))))))
                                                g7123)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7130
                                                        (letrec ((x7133
                                                                  (char? c1)))
                                                          (assert x7133)))
                                                       (g7131
                                                        (letrec ((x7134
                                                                  (char? c2)))
                                                          (assert x7134)))
                                                       (g7132
                                                        (letrec ((val6887
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7135
                                                                    (if val6887
                                                                      val6887
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7135))))
                                                g7132)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7136
                                                        (letrec ((x7137
                                                                  (letrec ((x7138
                                                                            (letrec ((x7139
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7139))))
                                                                    (cdr
                                                                     x7138))))
                                                          (cdr x7137))))
                                                g7136)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7140
                                                        (letrec ((x7143
                                                                  (list? l)))
                                                          (assert x7143)))
                                                       (g7141
                                                        (letrec ((x7144
                                                                  (numer?)))
                                                          (assert x7144)))
                                                       (g7142
                                                        (letrec ((x-cnd7145
                                                                  (zero? k)))
                                                          (if x-cnd7145
                                                            x
                                                            (letrec ((x7147
                                                                      (cdr x))
                                                                     (x7146
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7147
                                                               x7146))))))
                                                g7142)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7148 '())) g7148)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7149
                                                        (letrec ((x-cnd7150
                                                                  (letrec ((x7151
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7151))))
                                                          (if x-cnd7150
                                                            (letrec ((x7152
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7152))
                                                            #f))))
                                                g7149)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7153
                                                        (letrec ((x7155
                                                                  (number? x)))
                                                          (assert x7155)))
                                                       (g7154
                                                        (letrec ((val6888
                                                                  (< x y)))
                                                          (letrec ((g7156
                                                                    (if val6888
                                                                      val6888
                                                                      (letrec ((val6889
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7157
                                                                                  (if val6889
                                                                                    val6889
                                                                                    #f)))
                                                                          g7157)))))
                                                            g7156))))
                                                g7154)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7158
                                                        (letrec ((val6890
                                                                  (letrec ((x7159
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7159
                                                                     9))))
                                                          (letrec ((g7160
                                                                    (if val6890
                                                                      val6890
                                                                      (letrec ((val6891
                                                                                (letrec ((x7161
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7161
                                                                                   10))))
                                                                        (letrec ((g7162
                                                                                  (if val6891
                                                                                    val6891
                                                                                    (letrec ((x7163
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7163
                                                                                       32)))))
                                                                          g7162)))))
                                                            g7160))))
                                                g7158)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7164
                                                        (letrec ((x7165
                                                                  (letrec ((x7166
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7166))))
                                                          (cdr x7165))))
                                                g7164)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7167
                                                        (letrec ((x7169
                                                                  (number? x)))
                                                          (assert x7169)))
                                                       (g7168 (> x 0)))
                                                g7168)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7170 #f)) g7170)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7171
                                                        (letrec ((x7172
                                                                  (cdr x)))
                                                          (cdr x7172))))
                                                g7171)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7173
                                                        (letrec ((x7175
                                                                  (number? x)))
                                                          (assert x7175)))
                                                       (g7174
                                                        (letrec ((x-cnd7176
                                                                  (< x 0)))
                                                          (if x-cnd7176
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7174)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7177
                                                        (letrec ((val6892
                                                                  (eq? a b)))
                                                          (letrec ((g7178
                                                                    (if val6892
                                                                      val6892
                                                                      (letrec ((val6893
                                                                                (letrec ((x7180
                                                                                          (null?
                                                                                           a))
                                                                                         (x7179
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7180
                                                                                       x7179))))
                                                                        (letrec ((g7181
                                                                                  (if val6893
                                                                                    val6893
                                                                                    (letrec ((val6894
                                                                                              (letrec ((x7184
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7183
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7182
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7184
                                                                                                     x7183
                                                                                                     x7182))))
                                                                                      (letrec ((g7185
                                                                                                (if val6894
                                                                                                  val6894
                                                                                                  (letrec ((val6895
                                                                                                            (letrec ((x7193
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7192
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7189
                                                                                                                      (letrec ((x7191
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7190
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7191
                                                                                                                         x7190)))
                                                                                                                     (x7186
                                                                                                                      (letrec ((x7188
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7187
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7188
                                                                                                                         x7187))))
                                                                                                              (and x7193
                                                                                                                   x7192
                                                                                                                   x7189
                                                                                                                   x7186))))
                                                                                                    (letrec ((g7194
                                                                                                              (if val6895
                                                                                                                val6895
                                                                                                                (letrec ((x7210
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7209
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7195
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7196
                                                                                                                                      (letrec ((x7207
                                                                                                                                                (letrec ((x7208
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7208
                                                                                                                                                   n)))
                                                                                                                                               (x7197
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7198
                                                                                                                                                                      (letrec ((x7205
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7199
                                                                                                                                                                                (letrec ((x7202
                                                                                                                                                                                          (letrec ((x7204
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7203
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7204
                                                                                                                                                                                             x7203)))
                                                                                                                                                                                         (x7200
                                                                                                                                                                                          (letrec ((x7201
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7201))))
                                                                                                                                                                                  (and x7202
                                                                                                                                                                                       x7200))))
                                                                                                                                                                        (or x7205
                                                                                                                                                                            x7199))))
                                                                                                                                                              g7198))))
                                                                                                                                                  (letrec ((g7206
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7206))))
                                                                                                                                        (and x7207
                                                                                                                                             x7197))))
                                                                                                                              g7196))))
                                                                                                                  (and x7210
                                                                                                                       x7209
                                                                                                                       x7195)))))
                                                                                                      g7194)))))
                                                                                        g7185)))))
                                                                          g7181)))))
                                                            g7178))))
                                                g7177)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7211
                                                        (letrec ((x7212
                                                                  (letrec ((x7213
                                                                            (letrec ((x7214
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7214))))
                                                                    (car
                                                                     x7213))))
                                                          (cdr x7212))))
                                                g7211)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7215
                                                        (letrec ((x7216
                                                                  (letrec ((x7217
                                                                            (letrec ((x7218
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7218))))
                                                                    (car
                                                                     x7217))))
                                                          (car x7216))))
                                                g7215)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7219 (eq? x y)))
                                                g7219)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7220
                                                        (letrec ((x7222
                                                                  (number? x)))
                                                          (assert x7222)))
                                                       (g7221
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7223
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7224
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7224)))))
                                                            g7223))))
                                                g7221)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7225
                                                        (letrec ((x7228
                                                                  (string?
                                                                   filename)))
                                                          (assert x7228)))
                                                       (g7226
                                                        (letrec ((x7229
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7229)))
                                                       (g7227
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7230
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7231 res))
                                                            g7231))))
                                                g7227)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7232 (cons x '())))
                                                g7232)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7233
                                                        (letrec ((x7236
                                                                  (char? c1)))
                                                          (assert x7236)))
                                                       (g7234
                                                        (letrec ((x7237
                                                                  (char? c2)))
                                                          (assert x7237)))
                                                       (g7235
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7238
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7238))))
                                                g7235)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7239
                                                        (letrec ((x7240
                                                                  (letrec ((x7241
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7241))))
                                                          (cdr x7240))))
                                                g7239)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7242
                                                        (letrec ((x7243
                                                                  (letrec ((x7244
                                                                            (letrec ((x7245
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7245))))
                                                                    (car
                                                                     x7244))))
                                                          (cdr x7243))))
                                                g7242)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7246
                                                        (letrec ((x7247
                                                                  (letrec ((x7248
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7248))))
                                                          (car x7247))))
                                                g7246)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7249
                                                        (letrec ((x7250
                                                                  (letrec ((x7251
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7251))))
                                                          (car x7250))))
                                                g7249)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7252
                                                        (letrec ((x7255
                                                                  (char? c1)))
                                                          (assert x7255)))
                                                       (g7253
                                                        (letrec ((x7256
                                                                  (char? c2)))
                                                          (assert x7256)))
                                                       (g7254
                                                        (letrec ((x7257
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7257))))
                                                g7254)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7258
                                                        (letrec ((x7259
                                                                  (letrec ((x7260
                                                                            (letrec ((x7261
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7261))))
                                                                    (car
                                                                     x7260))))
                                                          (car x7259))))
                                                g7258)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7262
                                                        (letrec ((x7264
                                                                  (number? x)))
                                                          (assert x7264)))
                                                       (g7263 (< x 0)))
                                                g7263)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7265 (memq e l)))
                                                g7265)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7266
                                                        (letrec ((x7267
                                                                  (letrec ((x7268
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7268))))
                                                          (car x7267))))
                                                g7266)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7269 '())) g7269)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7270
                                                        (letrec ((x7272
                                                                  (list? l)))
                                                          (assert x7272)))
                                                       (g7271
                                                        (letrec ((x-cnd7273
                                                                  (null? l)))
                                                          (if x-cnd7273
                                                            '()
                                                            (letrec ((x7276
                                                                      (letrec ((x7277
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7277)))
                                                                     (x7274
                                                                      (letrec ((x7275
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7275))))
                                                              (append
                                                               x7276
                                                               x7274))))))
                                                g7271)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7278
                                                        (letrec ((x7279
                                                                  (letrec ((x7280
                                                                            (letrec ((x7281
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7281))))
                                                                    (car
                                                                     x7280))))
                                                          (car x7279))))
                                                g7278)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7282
                                                        (letrec ((x7283
                                                                  (letrec ((x7284
                                                                            (letrec ((x7285
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7285))))
                                                                    (cdr
                                                                     x7284))))
                                                          (cdr x7283))))
                                                g7282)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7286
                                                        (letrec ((x7288
                                                                  (number? x)))
                                                          (assert x7288)))
                                                       (g7287
                                                        (letrec ((x7289
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7289))))
                                                g7287)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7290
                                                        (letrec ((x7291
                                                                  (letrec ((x7292
                                                                            (letrec ((x7293
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7293))))
                                                                    (car
                                                                     x7292))))
                                                          (car x7291))))
                                                g7290)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7294
                                                        (letrec ((x7297
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7297)))
                                                       (g7295
                                                        (letrec ((x7298
                                                                  (list?
                                                                   args)))
                                                          (assert x7298)))
                                                       (g7296
                                                        (if cnd
                                                          (letrec ((g7299
                                                                    (proc)))
                                                            g7299)
                                                          (if cnd
                                                            (letrec ((g7300
                                                                      (letrec ((x7301
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7301))))
                                                              g7300)
                                                            (if cnd
                                                              (letrec ((g7302
                                                                        (letrec ((x7304
                                                                                  (car
                                                                                   args))
                                                                                 (x7303
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7304
                                                                           x7303))))
                                                                g7302)
                                                              (if cnd
                                                                (letrec ((g7305
                                                                          (letrec ((x7308
                                                                                    (car
                                                                                     args))
                                                                                   (x7307
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7306
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7308
                                                                             x7307
                                                                             x7306))))
                                                                  g7305)
                                                                (if cnd
                                                                  (letrec ((g7309
                                                                            (letrec ((x7313
                                                                                      (car
                                                                                       args))
                                                                                     (x7312
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7311
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7310
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7313
                                                                               x7312
                                                                               x7311
                                                                               x7310))))
                                                                    g7309)
                                                                  (if cnd
                                                                    (letrec ((g7314
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
                                                                                         args))
                                                                                       (x7315
                                                                                        (letrec ((x7316
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7316))))
                                                                                (proc
                                                                                 x7320
                                                                                 x7319
                                                                                 x7318
                                                                                 x7317
                                                                                 x7315))))
                                                                      g7314)
                                                                    (if cnd
                                                                      (letrec ((g7321
                                                                                (letrec ((x7329
                                                                                          (car
                                                                                           args))
                                                                                         (x7328
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7327
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7326
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7324
                                                                                          (letrec ((x7325
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7325)))
                                                                                         (x7322
                                                                                          (letrec ((x7323
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7323))))
                                                                                  (proc
                                                                                   x7329
                                                                                   x7328
                                                                                   x7327
                                                                                   x7326
                                                                                   x7324
                                                                                   x7322))))
                                                                        g7321)
                                                                      (if cnd
                                                                        (letrec ((g7330
                                                                                  (letrec ((x7340
                                                                                            (car
                                                                                             args))
                                                                                           (x7339
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7338
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7337
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7335
                                                                                            (letrec ((x7336
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7336)))
                                                                                           (x7333
                                                                                            (letrec ((x7334
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7334)))
                                                                                           (x7331
                                                                                            (letrec ((x7332
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7332))))
                                                                                    (proc
                                                                                     x7340
                                                                                     x7339
                                                                                     x7338
                                                                                     x7337
                                                                                     x7335
                                                                                     x7333
                                                                                     x7331))))
                                                                          g7330)
                                                                        (letrec ((g7341
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7341)))))))))))
                                                g7296)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7342
                                                        (letrec ((x7344
                                                                  (list? l)))
                                                          (assert x7344)))
                                                       (g7343
                                                        (letrec ((x-cnd7345
                                                                  (null? l)))
                                                          (if x-cnd7345
                                                            #f
                                                            (letrec ((x-cnd7346
                                                                      (letrec ((x7347
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7347
                                                                         e))))
                                                              (if x-cnd7346
                                                                l
                                                                (letrec ((x7348
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7348))))))))
                                                g7343)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7349
                                                        (letrec ((x7350
                                                                  (letrec ((x7351
                                                                            (letrec ((x7352
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7352))))
                                                                    (cdr
                                                                     x7351))))
                                                          (cdr x7350))))
                                                g7349)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7353
                                                        (letrec ((x7354
                                                                  (letrec ((x7355
                                                                            (letrec ((x7356
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7356))))
                                                                    (cdr
                                                                     x7355))))
                                                          (car x7354))))
                                                g7353)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7357 (random 42)))
                                                g7357)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7358
                                                        (letrec ((x7360
                                                                  (number? x)))
                                                          (assert x7360)))
                                                       (g7359 (= x 0)))
                                                g7359)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7361
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7362
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7362))))
                                                g7361)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7363
                                                        (letrec ((x7364
                                                                  (cdr x)))
                                                          (car x7364))))
                                                g7363)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7365
                                                        (letrec ((val6900
                                                                  (letrec ((x7368
                                                                            (pair?
                                                                             l))
                                                                           (x7366
                                                                            (letrec ((x7367
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7367))))
                                                                    (and x7368
                                                                         x7366))))
                                                          (letrec ((g7369
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7369))))
                                                g7365)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7370
                                                        (letrec ((x7371
                                                                  (letrec ((x7372
                                                                            (letrec ((x7373
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7373))))
                                                                    (cdr
                                                                     x7372))))
                                                          (cdr x7371))))
                                                g7370)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7374
                                                        (letrec ((x-cnd7375
                                                                  (letrec ((x7376
                                                                            #\0))
                                                                    (char<=?
                                                                     x7376
                                                                     c))))
                                                          (if x-cnd7375
                                                            (letrec ((x7377
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7377))
                                                            #f))))
                                                g7374)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7378
                                                        (letrec ((x7380
                                                                  (list? l)))
                                                          (assert x7380)))
                                                       (g7379
                                                        (letrec ((x-cnd7381
                                                                  (null? l)))
                                                          (if x-cnd7381
                                                            #f
                                                            (letrec ((x-cnd7382
                                                                      (letrec ((x7383
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7383
                                                                         k))))
                                                              (if x-cnd7382
                                                                (car l)
                                                                (letrec ((x7384
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7384))))))))
                                                g7379)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7385 (if x #f #t)))
                                                g7385)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7386 (append l1 l2)))
                                                g7386)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7387
                                                        (letrec ((x7389
                                                                  (list? l)))
                                                          (assert x7389)))
                                                       (g7388
                                                        (letrec ((x-cnd7390
                                                                  (null? l)))
                                                          (if x-cnd7390
                                                            #f
                                                            (letrec ((x-cnd7391
                                                                      (letrec ((x7392
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7392
                                                                         e))))
                                                              (if x-cnd7391
                                                                l
                                                                (letrec ((x7393
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7393))))))))
                                                g7388)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7394
                                                        (letrec ((x7395
                                                                  (letrec ((x7396
                                                                            (letrec ((x7397
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7397))))
                                                                    (cdr
                                                                     x7396))))
                                                          (car x7395))))
                                                g7394)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7398
                                                        (letrec ((x7400
                                                                  (list? l)))
                                                          (assert x7400)))
                                                       (g7399
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7401
                                                                              (letrec ((x-cnd7402
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7402
                                                                                  0
                                                                                  (letrec ((x7403
                                                                                            (letrec ((x7404
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7404))))
                                                                                    (+
                                                                                     1
                                                                                     x7403))))))
                                                                      g7401))))
                                                          (letrec ((g7405
                                                                    (rec l)))
                                                            g7405))))
                                                g7399)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7406
                                                        (letrec ((x7409
                                                                  (char? c1)))
                                                          (assert x7409)))
                                                       (g7407
                                                        (letrec ((x7410
                                                                  (char? c2)))
                                                          (assert x7410)))
                                                       (g7408
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7411
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7411))))
                                                g7408)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7412
                                                        (letrec ((x7413
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7413))))
                                                g7412)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7414
                                                        (letrec ((x7415
                                                                  (letrec ((x7416
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7416))))
                                                          (cdr x7415))))
                                                g7414)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7417
                                                        (letrec ((x7419
                                                                  (list? l)))
                                                          (assert x7419)))
                                                       (g7418
                                                        (letrec ((x-cnd7420
                                                                  (null? l)))
                                                          (if x-cnd7420
                                                            #f
                                                            (letrec ((x-cnd7421
                                                                      (letrec ((x7422
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7422
                                                                         k))))
                                                              (if x-cnd7421
                                                                (car l)
                                                                (letrec ((x7423
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7423))))))))
                                                g7418)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7424
                                                        (letrec ((x7425
                                                                  (car x)))
                                                          (car x7425))))
                                                g7424)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7426
                                                        (letrec ((x7429
                                                                  (char? c1)))
                                                          (assert x7429)))
                                                       (g7427
                                                        (letrec ((x7430
                                                                  (char? c2)))
                                                          (assert x7430)))
                                                       (g7428
                                                        (letrec ((x7431
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7431))))
                                                g7428)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7432
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7433
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7433))))
                                                g7432)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7434
                                                        (letrec ((x7437
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7437)))
                                                       (g7435
                                                        (letrec ((x7438
                                                                  (list? l)))
                                                          (assert x7438)))
                                                       (g7436
                                                        (letrec ((x-cnd7439
                                                                  (null? l)))
                                                          (if x-cnd7439
                                                            #t
                                                            (letrec ((x-cnd7440
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7440
                                                                (letrec ((g7441
                                                                          (letrec ((x7443
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7443)))
                                                                         (g7442
                                                                          (letrec ((x7444
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7444))))
                                                                  g7442)
                                                                '()))))))
                                                g7436)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7445
                                                        (letrec ((x7447
                                                                  (number? x)))
                                                          (assert x7447)))
                                                       (g7446
                                                        (letrec ((x-cnd7448
                                                                  (< x 0)))
                                                          (if x-cnd7448
                                                            (- 0 x)
                                                            x))))
                                                g7446)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7449
                                                        (letrec ((x7452
                                                                  (char? c1)))
                                                          (assert x7452)))
                                                       (g7450
                                                        (letrec ((x7453
                                                                  (char? c2)))
                                                          (assert x7453)))
                                                       (g7451
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7454
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7454))))
                                                g7451)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7455
                                                        (letrec ((x7456
                                                                  (letrec ((x7457
                                                                            (letrec ((x7458
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7458))))
                                                                    (cdr
                                                                     x7457))))
                                                          (car x7456))))
                                                g7455)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7459 #f)) g7459)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7460
                                                        (letrec ((x7462
                                                                  (letrec ((x7463
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7463)))
                                                                 (x7461
                                                                  (gcd m n)))
                                                          (/ x7462 x7461))))
                                                g7460)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7464
                                                        (letrec ((x7466
                                                                  (number? x)))
                                                          (assert x7466)))
                                                       (g7465
                                                        (letrec ((x7467
                                                                  (<= x y)))
                                                          (not x7467))))
                                                g7465)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7468
                                                        (letrec ((x7472
                                                                  (list? l)))
                                                          (assert x7472)))
                                                       (g7469
                                                        (letrec ((x7473
                                                                  (number?
                                                                   index)))
                                                          (assert x7473)))
                                                       (g7470
                                                        (letrec ((x7474
                                                                  (letrec ((x7475
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7475))))
                                                          (assert x7474)))
                                                       (g7471
                                                        (letrec ((x-cnd7476
                                                                  (= index 0)))
                                                          (if x-cnd7476
                                                            (car l)
                                                            (letrec ((x7478
                                                                      (cdr l))
                                                                     (x7477
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7478
                                                               x7477))))))
                                                g7471)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7479
                                                        (letrec ((x-cnd7480
                                                                  (= b 0)))
                                                          (if x-cnd7480
                                                            a
                                                            (letrec ((x7481
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7481))))))
                                                g7479))))
                                    (letrec ((g7482
                                              (if cnd
                                                (letrec ((g7483 new)) g7483)
                                                (if cnd
                                                  (letrec ((g7484
                                                            (letrec ((x7487
                                                                      (letrec ((x7488
                                                                                (car
                                                                                 t)))
                                                                        (subst*
                                                                         new
                                                                         old
                                                                         x7488)))
                                                                     (x7485
                                                                      (letrec ((x7486
                                                                                (cdr
                                                                                 t)))
                                                                        (subst*
                                                                         new
                                                                         old
                                                                         x7486))))
                                                              (cons
                                                               x7487
                                                               x7485))))
                                                    g7484)
                                                  (letrec ((g7489 t))
                                                    g7489)))))
                                      g7482))))
                          g6986))))
              g6984)))
    g6983))
