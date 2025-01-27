(letrec ((any? (lambda (v) (letrec ((g6974 #t)) g6974)))
         (meta (lambda (v) (letrec ((g6975 v)) g6975)))
         (member
          (lambda (v lst)
            (letrec ((g6976
                      (letrec ((g6977
                                (letrec ((x-e6978 lst))
                                  (match
                                   x-e6978
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd6979 (eq? v v1)))
                                       (if x-cnd6979 #t (member v vs)))))))))
                        g6977)))
              g6976)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g6980 (lambda (v) (letrec ((g6981 v)) g6981)))) g6980)))
         (nonzero?
          (lambda (v)
            (letrec ((g6982 (letrec ((x6983 (= v 0))) (not x6983)))) g6982))))
  (letrec ((g6984
            (letrec ((g6985
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g6986 '())
                                 (g6987
                                  (letrec ((real/c
                                            (lambda (g6905 g6906 g6907)
                                              (letrec ((g6988
                                                        (letrec ((x-cnd6989
                                                                  (real?
                                                                   g6907)))
                                                          (if x-cnd6989
                                                            g6907
                                                            (blame
                                                             g6905
                                                             'real?)))))
                                                g6988)))
                                           (boolean?/c
                                            (lambda (g6908 g6909 g6910)
                                              (letrec ((g6990
                                                        (letrec ((x-cnd6991
                                                                  (boolean?
                                                                   g6910)))
                                                          (if x-cnd6991
                                                            g6910
                                                            (blame
                                                             g6908
                                                             'boolean?)))))
                                                g6990)))
                                           (number?/c
                                            (lambda (g6911 g6912 g6913)
                                              (letrec ((g6992
                                                        (letrec ((x-cnd6993
                                                                  (number?
                                                                   g6913)))
                                                          (if x-cnd6993
                                                            g6913
                                                            (blame
                                                             g6911
                                                             'number?)))))
                                                g6992)))
                                           (any/c
                                            (lambda (g6914 g6915 g6916)
                                              (letrec ((g6994
                                                        (letrec ((x-cnd6995
                                                                  ((lambda (v)
                                                                     (letrec ((g6996
                                                                               #t))
                                                                       g6996))
                                                                   g6916)))
                                                          (if x-cnd6995
                                                            g6916
                                                            (blame
                                                             g6914
                                                             '(lambda (v)
                                                                #t))))))
                                                g6994)))
                                           (any?/c
                                            (lambda (g6917 g6918 g6919)
                                              (letrec ((g6997
                                                        (letrec ((x-cnd6998
                                                                  ((lambda (v)
                                                                     (letrec ((g6999
                                                                               #t))
                                                                       g6999))
                                                                   g6919)))
                                                          (if x-cnd6998
                                                            g6919
                                                            (blame
                                                             g6917
                                                             '(lambda (v)
                                                                #t))))))
                                                g6997)))
                                           (cons?/c
                                            (lambda (g6920 g6921 g6922)
                                              (letrec ((g7000
                                                        (letrec ((x-cnd7001
                                                                  (pair?
                                                                   g6922)))
                                                          (if x-cnd7001
                                                            g6922
                                                            (blame
                                                             g6920
                                                             'pair?)))))
                                                g7000)))
                                           (pair?/c
                                            (lambda (g6923 g6924 g6925)
                                              (letrec ((g7002
                                                        (letrec ((x-cnd7003
                                                                  (pair?
                                                                   g6925)))
                                                          (if x-cnd7003
                                                            g6925
                                                            (blame
                                                             g6923
                                                             'pair?)))))
                                                g7002)))
                                           (integer?/c
                                            (lambda (g6926 g6927 g6928)
                                              (letrec ((g7004
                                                        (letrec ((x-cnd7005
                                                                  (integer?
                                                                   g6928)))
                                                          (if x-cnd7005
                                                            g6928
                                                            (blame
                                                             g6926
                                                             'integer?)))))
                                                g7004)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7006
                                                        (lambda (k j v)
                                                          (letrec ((g7007
                                                                    (letrec ((x-cnd7008
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7008
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7007))))
                                                g7006)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7009
                                                        (lambda (k j v)
                                                          (letrec ((g7010
                                                                    (letrec ((x-cnd7011
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7011
                                                                        '()
                                                                        (letrec ((x7015
                                                                                  (letrec ((x7016
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7016)))
                                                                                 (x7012
                                                                                  (letrec ((x7014
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7013
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7014
                                                                                     k
                                                                                     j
                                                                                     x7013))))
                                                                          (cons
                                                                           x7015
                                                                           x7012))))))
                                                            g7010))))
                                                g7009)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7017 #t)) g7017)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7018
                                                        (letrec ((x7019
                                                                  (= v 0)))
                                                          (not x7019))))
                                                g7018)))
                                           (nonzero?/c
                                            (lambda (g6929 g6930 g6931)
                                              (letrec ((g7020
                                                        (letrec ((x-cnd7021
                                                                  ((lambda (v)
                                                                     (letrec ((g7022
                                                                               (letrec ((x7023
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7023))))
                                                                       g7022))
                                                                   g6931)))
                                                          (if x-cnd7021
                                                            g6931
                                                            (blame
                                                             g6929
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7020)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7024 v)) g7024)))
                                           (+
                                            ((lambda (j6934 k6935 f6936)
                                               (letrec ((g7026
                                                         (lambda (g6932 g6933)
                                                           (letrec ((g7027
                                                                     (letrec ((x7028
                                                                               (letrec ((x7030
                                                                                         (number?/c
                                                                                          j6934
                                                                                          k6935
                                                                                          g6932))
                                                                                        (x7029
                                                                                         (number?/c
                                                                                          j6934
                                                                                          k6935
                                                                                          g6933)))
                                                                                 (f6936
                                                                                  x7030
                                                                                  x7029))))
                                                                       (number?/c
                                                                        j6934
                                                                        k6935
                                                                        x7028))))
                                                             g7027))))
                                                 g7026))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7025 (orig-+ a b)))
                                                 g7025))))
                                           (-
                                            ((lambda (j6939 k6940 f6941)
                                               (letrec ((g7032
                                                         (lambda (g6937 g6938)
                                                           (letrec ((g7033
                                                                     (letrec ((x7034
                                                                               (letrec ((x7036
                                                                                         (number?/c
                                                                                          j6939
                                                                                          k6940
                                                                                          g6937))
                                                                                        (x7035
                                                                                         (number?/c
                                                                                          j6939
                                                                                          k6940
                                                                                          g6938)))
                                                                                 (f6941
                                                                                  x7036
                                                                                  x7035))))
                                                                       (number?/c
                                                                        j6939
                                                                        k6940
                                                                        x7034))))
                                                             g7033))))
                                                 g7032))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7031 (orig-- a b)))
                                                 g7031))))
                                           (*
                                            ((lambda (j6944 k6945 f6946)
                                               (letrec ((g7038
                                                         (lambda (g6942 g6943)
                                                           (letrec ((g7039
                                                                     (letrec ((x7040
                                                                               (letrec ((x7042
                                                                                         (number?/c
                                                                                          j6944
                                                                                          k6945
                                                                                          g6942))
                                                                                        (x7041
                                                                                         (number?/c
                                                                                          j6944
                                                                                          k6945
                                                                                          g6943)))
                                                                                 (f6946
                                                                                  x7042
                                                                                  x7041))))
                                                                       (number?/c
                                                                        j6944
                                                                        k6945
                                                                        x7040))))
                                                             g7039))))
                                                 g7038))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7037 (orig-* a b)))
                                                 g7037))))
                                           (/
                                            ((lambda (j6949 k6950 f6951)
                                               (letrec ((g7044
                                                         (lambda (g6947 g6948)
                                                           (letrec ((g7045
                                                                     (letrec ((x7046
                                                                               (letrec ((x7048
                                                                                         (number?/c
                                                                                          j6949
                                                                                          k6950
                                                                                          g6947))
                                                                                        (x7047
                                                                                         (number?/c
                                                                                          j6949
                                                                                          k6950
                                                                                          g6948)))
                                                                                 (f6951
                                                                                  x7048
                                                                                  x7047))))
                                                                       (number?/c
                                                                        j6949
                                                                        k6950
                                                                        x7046))))
                                                             g7045))))
                                                 g7044))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7043 (orig-/ a b)))
                                                 g7043))))
                                           (car
                                            ((lambda (j6953 k6954 f6955)
                                               (letrec ((g7050
                                                         (lambda (g6952)
                                                           (letrec ((g7051
                                                                     (letrec ((x7052
                                                                               (letrec ((x7053
                                                                                         (pair?/c
                                                                                          j6953
                                                                                          k6954
                                                                                          g6952)))
                                                                                 (f6955
                                                                                  x7053))))
                                                                       (any/c
                                                                        j6953
                                                                        k6954
                                                                        x7052))))
                                                             g7051))))
                                                 g7050))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7049 (orig-car p)))
                                                 g7049))))
                                           (cdr
                                            ((lambda (j6957 k6958 f6959)
                                               (letrec ((g7055
                                                         (lambda (g6956)
                                                           (letrec ((g7056
                                                                     (letrec ((x7057
                                                                               (letrec ((x7058
                                                                                         (pair?/c
                                                                                          j6957
                                                                                          k6958
                                                                                          g6956)))
                                                                                 (f6959
                                                                                  x7058))))
                                                                       (any/c
                                                                        j6957
                                                                        k6958
                                                                        x7057))))
                                                             g7056))))
                                                 g7055))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7054 (orig-cdr p)))
                                                 g7054))))
                                           (cons
                                            ((lambda (j6962 k6963 f6964)
                                               (letrec ((g7060
                                                         (lambda (g6960 g6961)
                                                           (letrec ((g7061
                                                                     (letrec ((x7062
                                                                               (letrec ((x7064
                                                                                         (any/c
                                                                                          j6962
                                                                                          k6963
                                                                                          g6960))
                                                                                        (x7063
                                                                                         (any/c
                                                                                          j6962
                                                                                          k6963
                                                                                          g6961)))
                                                                                 (f6964
                                                                                  x7064
                                                                                  x7063))))
                                                                       (pair?/c
                                                                        j6962
                                                                        k6963
                                                                        x7062))))
                                                             g7061))))
                                                 g7060))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7059 (cons a b)))
                                                 g7059))))
                                           (vector-ref
                                            ((lambda (j6966 k6967 f6968)
                                               (letrec ((g7066
                                                         (lambda (g6965)
                                                           (letrec ((g7067
                                                                     (letrec ((x7068
                                                                               (letrec ((x7069
                                                                                         (vector?/c
                                                                                          j6966
                                                                                          k6967
                                                                                          g6965)))
                                                                                 (f6968
                                                                                  x7069))))
                                                                       (integer?/c
                                                                        j6966
                                                                        k6967
                                                                        x7068))))
                                                             g7067))))
                                                 g7066))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7065
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7065))))
                                           (vector-set!
                                            ((lambda (j6971 k6972 f6973)
                                               (letrec ((g7071
                                                         (lambda (g6969 g6970)
                                                           (letrec ((g7072
                                                                     (letrec ((x7073
                                                                               (letrec ((x7075
                                                                                         (vector?/c
                                                                                          j6971
                                                                                          k6972
                                                                                          g6969))
                                                                                        (x7074
                                                                                         (integer?/c
                                                                                          j6971
                                                                                          k6972
                                                                                          g6970)))
                                                                                 (f6973
                                                                                  x7075
                                                                                  x7074))))
                                                                       (any/c
                                                                        j6971
                                                                        k6972
                                                                        x7073))))
                                                             g7072))))
                                                 g7071))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7070
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7070))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7076 #t)) g7076)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7077
                                                        (letrec ((x7078
                                                                  (letrec ((x7079
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7079))))
                                                          (cdr x7078))))
                                                g7077)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7080
                                                        (letrec ((x7083
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7083)))
                                                       (g7081
                                                        (letrec ((x7084
                                                                  (list? l)))
                                                          (assert x7084)))
                                                       (g7082
                                                        (letrec ((x-cnd7085
                                                                  (null? l)))
                                                          (if x-cnd7085
                                                            '()
                                                            (letrec ((x7088
                                                                      (letrec ((x7089
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7089)))
                                                                     (x7086
                                                                      (letrec ((x7087
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7087))))
                                                              (cons
                                                               x7088
                                                               x7086))))))
                                                g7082)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7090
                                                        (letrec ((x7091
                                                                  (car x)))
                                                          (cdr x7091))))
                                                g7090)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7092
                                                        (letrec ((x7093
                                                                  (letrec ((x7094
                                                                            (letrec ((x7095
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7095))))
                                                                    (cdr
                                                                     x7094))))
                                                          (car x7093))))
                                                g7092)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7096
                                                        (letrec ((x7097
                                                                  (letrec ((x7098
                                                                            (letrec ((x7099
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7099))))
                                                                    (car
                                                                     x7098))))
                                                          (cdr x7097))))
                                                g7096)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7100
                                                        (letrec ((x7103
                                                                  (string?
                                                                   filename)))
                                                          (assert x7103)))
                                                       (g7101
                                                        (letrec ((x7104
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7104)))
                                                       (g7102
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7105
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7106 res))
                                                            g7106))))
                                                g7102)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7107
                                                        (letrec ((x7108
                                                                  (letrec ((x7109
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7109))))
                                                          (car x7108))))
                                                g7107)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7110
                                                        (letrec ((x7111
                                                                  (letrec ((x7112
                                                                            (letrec ((x7113
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7113))))
                                                                    (car
                                                                     x7112))))
                                                          (cdr x7111))))
                                                g7110)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7114
                                                        (letrec ((x7116
                                                                  (list? l)))
                                                          (assert x7116)))
                                                       (g7115
                                                        (letrec ((x-cnd7117
                                                                  (null? l)))
                                                          (if x-cnd7117
                                                            #f
                                                            (letrec ((x-cnd7118
                                                                      (letrec ((x7119
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7119
                                                                         k))))
                                                              (if x-cnd7118
                                                                (car l)
                                                                (letrec ((x7120
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7120))))))))
                                                g7115)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7121
                                                        (letrec ((x7122
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7122))))
                                                g7121)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7123
                                                        (letrec ((x7125
                                                                  (list? l)))
                                                          (assert x7125)))
                                                       (g7124
                                                        (letrec ((x-cnd7126
                                                                  (null? l)))
                                                          (if x-cnd7126
                                                            ""
                                                            (letrec ((x7129
                                                                      (letrec ((x7130
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7130)))
                                                                     (x7127
                                                                      (letrec ((x7128
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7128))))
                                                              (string-append
                                                               x7129
                                                               x7127))))))
                                                g7124)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7131
                                                        (letrec ((x7134
                                                                  (char? c1)))
                                                          (assert x7134)))
                                                       (g7132
                                                        (letrec ((x7135
                                                                  (char? c2)))
                                                          (assert x7135)))
                                                       (g7133
                                                        (letrec ((val6887
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7136
                                                                    (if val6887
                                                                      val6887
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7136))))
                                                g7133)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7137
                                                        (letrec ((x7138
                                                                  (letrec ((x7139
                                                                            (letrec ((x7140
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7140))))
                                                                    (cdr
                                                                     x7139))))
                                                          (cdr x7138))))
                                                g7137)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7141
                                                        (letrec ((x7144
                                                                  (list? l)))
                                                          (assert x7144)))
                                                       (g7142
                                                        (letrec ((x7145
                                                                  (numer?)))
                                                          (assert x7145)))
                                                       (g7143
                                                        (letrec ((x-cnd7146
                                                                  (zero? k)))
                                                          (if x-cnd7146
                                                            x
                                                            (letrec ((x7148
                                                                      (cdr x))
                                                                     (x7147
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7148
                                                               x7147))))))
                                                g7143)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7149 '())) g7149)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7150
                                                        (letrec ((x-cnd7151
                                                                  (letrec ((x7152
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7152))))
                                                          (if x-cnd7151
                                                            (letrec ((x7153
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7153))
                                                            #f))))
                                                g7150)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7154
                                                        (letrec ((x7156
                                                                  (number? x)))
                                                          (assert x7156)))
                                                       (g7155
                                                        (letrec ((val6888
                                                                  (< x y)))
                                                          (letrec ((g7157
                                                                    (if val6888
                                                                      val6888
                                                                      (letrec ((val6889
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7158
                                                                                  (if val6889
                                                                                    val6889
                                                                                    #f)))
                                                                          g7158)))))
                                                            g7157))))
                                                g7155)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7159
                                                        (letrec ((val6890
                                                                  (letrec ((x7160
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7160
                                                                     9))))
                                                          (letrec ((g7161
                                                                    (if val6890
                                                                      val6890
                                                                      (letrec ((val6891
                                                                                (letrec ((x7162
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7162
                                                                                   10))))
                                                                        (letrec ((g7163
                                                                                  (if val6891
                                                                                    val6891
                                                                                    (letrec ((x7164
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7164
                                                                                       32)))))
                                                                          g7163)))))
                                                            g7161))))
                                                g7159)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7165
                                                        (letrec ((x7166
                                                                  (letrec ((x7167
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7167))))
                                                          (cdr x7166))))
                                                g7165)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7168
                                                        (letrec ((x7170
                                                                  (number? x)))
                                                          (assert x7170)))
                                                       (g7169 (> x 0)))
                                                g7169)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7171 #f)) g7171)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7172
                                                        (letrec ((x7173
                                                                  (cdr x)))
                                                          (cdr x7173))))
                                                g7172)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7174
                                                        (letrec ((x7176
                                                                  (number? x)))
                                                          (assert x7176)))
                                                       (g7175
                                                        (letrec ((x-cnd7177
                                                                  (< x 0)))
                                                          (if x-cnd7177
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7175)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7178
                                                        (letrec ((val6892
                                                                  (eq? a b)))
                                                          (letrec ((g7179
                                                                    (if val6892
                                                                      val6892
                                                                      (letrec ((val6893
                                                                                (letrec ((x7181
                                                                                          (null?
                                                                                           a))
                                                                                         (x7180
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7181
                                                                                       x7180))))
                                                                        (letrec ((g7182
                                                                                  (if val6893
                                                                                    val6893
                                                                                    (letrec ((val6894
                                                                                              (letrec ((x7185
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7184
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7183
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7185
                                                                                                     x7184
                                                                                                     x7183))))
                                                                                      (letrec ((g7186
                                                                                                (if val6894
                                                                                                  val6894
                                                                                                  (letrec ((val6895
                                                                                                            (letrec ((x7194
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7193
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7190
                                                                                                                      (letrec ((x7192
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7191
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7192
                                                                                                                         x7191)))
                                                                                                                     (x7187
                                                                                                                      (letrec ((x7189
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7188
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7189
                                                                                                                         x7188))))
                                                                                                              (and x7194
                                                                                                                   x7193
                                                                                                                   x7190
                                                                                                                   x7187))))
                                                                                                    (letrec ((g7195
                                                                                                              (if val6895
                                                                                                                val6895
                                                                                                                (letrec ((x7211
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7210
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7196
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7197
                                                                                                                                      (letrec ((x7208
                                                                                                                                                (letrec ((x7209
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7209
                                                                                                                                                   n)))
                                                                                                                                               (x7198
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7199
                                                                                                                                                                      (letrec ((x7206
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7200
                                                                                                                                                                                (letrec ((x7203
                                                                                                                                                                                          (letrec ((x7205
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7204
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7205
                                                                                                                                                                                             x7204)))
                                                                                                                                                                                         (x7201
                                                                                                                                                                                          (letrec ((x7202
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7202))))
                                                                                                                                                                                  (and x7203
                                                                                                                                                                                       x7201))))
                                                                                                                                                                        (or x7206
                                                                                                                                                                            x7200))))
                                                                                                                                                              g7199))))
                                                                                                                                                  (letrec ((g7207
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7207))))
                                                                                                                                        (and x7208
                                                                                                                                             x7198))))
                                                                                                                              g7197))))
                                                                                                                  (and x7211
                                                                                                                       x7210
                                                                                                                       x7196)))))
                                                                                                      g7195)))))
                                                                                        g7186)))))
                                                                          g7182)))))
                                                            g7179))))
                                                g7178)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7212
                                                        (letrec ((x7213
                                                                  (letrec ((x7214
                                                                            (letrec ((x7215
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7215))))
                                                                    (car
                                                                     x7214))))
                                                          (cdr x7213))))
                                                g7212)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7216
                                                        (letrec ((x7217
                                                                  (letrec ((x7218
                                                                            (letrec ((x7219
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7219))))
                                                                    (car
                                                                     x7218))))
                                                          (car x7217))))
                                                g7216)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7220 (eq? x y)))
                                                g7220)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7221
                                                        (letrec ((x7223
                                                                  (number? x)))
                                                          (assert x7223)))
                                                       (g7222
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7224
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7225
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7225)))))
                                                            g7224))))
                                                g7222)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7226
                                                        (letrec ((x7229
                                                                  (string?
                                                                   filename)))
                                                          (assert x7229)))
                                                       (g7227
                                                        (letrec ((x7230
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7230)))
                                                       (g7228
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7231
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7232 res))
                                                            g7232))))
                                                g7228)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7233 (cons x '())))
                                                g7233)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7234
                                                        (letrec ((x7237
                                                                  (char? c1)))
                                                          (assert x7237)))
                                                       (g7235
                                                        (letrec ((x7238
                                                                  (char? c2)))
                                                          (assert x7238)))
                                                       (g7236
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7239
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7239))))
                                                g7236)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7240
                                                        (letrec ((x7241
                                                                  (letrec ((x7242
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7242))))
                                                          (cdr x7241))))
                                                g7240)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7243
                                                        (letrec ((x7244
                                                                  (letrec ((x7245
                                                                            (letrec ((x7246
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7246))))
                                                                    (car
                                                                     x7245))))
                                                          (cdr x7244))))
                                                g7243)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7247
                                                        (letrec ((x7248
                                                                  (letrec ((x7249
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7249))))
                                                          (car x7248))))
                                                g7247)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7250
                                                        (letrec ((x7251
                                                                  (letrec ((x7252
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7252))))
                                                          (car x7251))))
                                                g7250)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7253
                                                        (letrec ((x7256
                                                                  (char? c1)))
                                                          (assert x7256)))
                                                       (g7254
                                                        (letrec ((x7257
                                                                  (char? c2)))
                                                          (assert x7257)))
                                                       (g7255
                                                        (letrec ((x7258
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7258))))
                                                g7255)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7259
                                                        (letrec ((x7260
                                                                  (letrec ((x7261
                                                                            (letrec ((x7262
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7262))))
                                                                    (car
                                                                     x7261))))
                                                          (car x7260))))
                                                g7259)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7263
                                                        (letrec ((x7265
                                                                  (number? x)))
                                                          (assert x7265)))
                                                       (g7264 (< x 0)))
                                                g7264)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7266 (memq e l)))
                                                g7266)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7267
                                                        (letrec ((x7268
                                                                  (letrec ((x7269
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7269))))
                                                          (car x7268))))
                                                g7267)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7270 '())) g7270)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7271
                                                        (letrec ((x7273
                                                                  (list? l)))
                                                          (assert x7273)))
                                                       (g7272
                                                        (letrec ((x-cnd7274
                                                                  (null? l)))
                                                          (if x-cnd7274
                                                            '()
                                                            (letrec ((x7277
                                                                      (letrec ((x7278
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7278)))
                                                                     (x7275
                                                                      (letrec ((x7276
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7276))))
                                                              (append
                                                               x7277
                                                               x7275))))))
                                                g7272)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7279
                                                        (letrec ((x7280
                                                                  (letrec ((x7281
                                                                            (letrec ((x7282
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7282))))
                                                                    (car
                                                                     x7281))))
                                                          (car x7280))))
                                                g7279)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7283
                                                        (letrec ((x7284
                                                                  (letrec ((x7285
                                                                            (letrec ((x7286
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7286))))
                                                                    (cdr
                                                                     x7285))))
                                                          (cdr x7284))))
                                                g7283)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7287
                                                        (letrec ((x7289
                                                                  (number? x)))
                                                          (assert x7289)))
                                                       (g7288
                                                        (letrec ((x7290
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7290))))
                                                g7288)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7291
                                                        (letrec ((x7292
                                                                  (letrec ((x7293
                                                                            (letrec ((x7294
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7294))))
                                                                    (car
                                                                     x7293))))
                                                          (car x7292))))
                                                g7291)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7295
                                                        (letrec ((x7298
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7298)))
                                                       (g7296
                                                        (letrec ((x7299
                                                                  (list?
                                                                   args)))
                                                          (assert x7299)))
                                                       (g7297
                                                        (if cnd
                                                          (letrec ((g7300
                                                                    (proc)))
                                                            g7300)
                                                          (if cnd
                                                            (letrec ((g7301
                                                                      (letrec ((x7302
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7302))))
                                                              g7301)
                                                            (if cnd
                                                              (letrec ((g7303
                                                                        (letrec ((x7305
                                                                                  (car
                                                                                   args))
                                                                                 (x7304
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7305
                                                                           x7304))))
                                                                g7303)
                                                              (if cnd
                                                                (letrec ((g7306
                                                                          (letrec ((x7309
                                                                                    (car
                                                                                     args))
                                                                                   (x7308
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7307
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7309
                                                                             x7308
                                                                             x7307))))
                                                                  g7306)
                                                                (if cnd
                                                                  (letrec ((g7310
                                                                            (letrec ((x7314
                                                                                      (car
                                                                                       args))
                                                                                     (x7313
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7312
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7311
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7314
                                                                               x7313
                                                                               x7312
                                                                               x7311))))
                                                                    g7310)
                                                                  (if cnd
                                                                    (letrec ((g7315
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
                                                                                         args))
                                                                                       (x7316
                                                                                        (letrec ((x7317
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7317))))
                                                                                (proc
                                                                                 x7321
                                                                                 x7320
                                                                                 x7319
                                                                                 x7318
                                                                                 x7316))))
                                                                      g7315)
                                                                    (if cnd
                                                                      (letrec ((g7322
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
                                                                                           args))
                                                                                         (x7325
                                                                                          (letrec ((x7326
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7326)))
                                                                                         (x7323
                                                                                          (letrec ((x7324
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7324))))
                                                                                  (proc
                                                                                   x7330
                                                                                   x7329
                                                                                   x7328
                                                                                   x7327
                                                                                   x7325
                                                                                   x7323))))
                                                                        g7322)
                                                                      (if cnd
                                                                        (letrec ((g7331
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
                                                                                               x7335)))
                                                                                           (x7332
                                                                                            (letrec ((x7333
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7333))))
                                                                                    (proc
                                                                                     x7341
                                                                                     x7340
                                                                                     x7339
                                                                                     x7338
                                                                                     x7336
                                                                                     x7334
                                                                                     x7332))))
                                                                          g7331)
                                                                        (letrec ((g7342
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7342)))))))))))
                                                g7297)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7343
                                                        (letrec ((x7345
                                                                  (list? l)))
                                                          (assert x7345)))
                                                       (g7344
                                                        (letrec ((x-cnd7346
                                                                  (null? l)))
                                                          (if x-cnd7346
                                                            #f
                                                            (letrec ((x-cnd7347
                                                                      (letrec ((x7348
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7348
                                                                         e))))
                                                              (if x-cnd7347
                                                                l
                                                                (letrec ((x7349
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7349))))))))
                                                g7344)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7350
                                                        (letrec ((x7351
                                                                  (letrec ((x7352
                                                                            (letrec ((x7353
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7353))))
                                                                    (cdr
                                                                     x7352))))
                                                          (cdr x7351))))
                                                g7350)))
                                           (cadddr
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
                                                          (car x7355))))
                                                g7354)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7358 (random 42)))
                                                g7358)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7359
                                                        (letrec ((x7361
                                                                  (number? x)))
                                                          (assert x7361)))
                                                       (g7360 (= x 0)))
                                                g7360)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7362
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7363
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7363))))
                                                g7362)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7364
                                                        (letrec ((x7365
                                                                  (cdr x)))
                                                          (car x7365))))
                                                g7364)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7366
                                                        (letrec ((val6900
                                                                  (letrec ((x7369
                                                                            (pair?
                                                                             l))
                                                                           (x7367
                                                                            (letrec ((x7368
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7368))))
                                                                    (and x7369
                                                                         x7367))))
                                                          (letrec ((g7370
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7370))))
                                                g7366)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7371
                                                        (letrec ((x7372
                                                                  (letrec ((x7373
                                                                            (letrec ((x7374
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7374))))
                                                                    (cdr
                                                                     x7373))))
                                                          (cdr x7372))))
                                                g7371)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7375
                                                        (letrec ((x-cnd7376
                                                                  (letrec ((x7377
                                                                            #\0))
                                                                    (char<=?
                                                                     x7377
                                                                     c))))
                                                          (if x-cnd7376
                                                            (letrec ((x7378
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7378))
                                                            #f))))
                                                g7375)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7379
                                                        (letrec ((x7381
                                                                  (list? l)))
                                                          (assert x7381)))
                                                       (g7380
                                                        (letrec ((x-cnd7382
                                                                  (null? l)))
                                                          (if x-cnd7382
                                                            #f
                                                            (letrec ((x-cnd7383
                                                                      (letrec ((x7384
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7384
                                                                         k))))
                                                              (if x-cnd7383
                                                                (car l)
                                                                (letrec ((x7385
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7385))))))))
                                                g7380)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7386 (if x #f #t)))
                                                g7386)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7387 (append l1 l2)))
                                                g7387)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7388
                                                        (letrec ((x7390
                                                                  (list? l)))
                                                          (assert x7390)))
                                                       (g7389
                                                        (letrec ((x-cnd7391
                                                                  (null? l)))
                                                          (if x-cnd7391
                                                            #f
                                                            (letrec ((x-cnd7392
                                                                      (letrec ((x7393
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7393
                                                                         e))))
                                                              (if x-cnd7392
                                                                l
                                                                (letrec ((x7394
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7394))))))))
                                                g7389)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7395
                                                        (letrec ((x7396
                                                                  (letrec ((x7397
                                                                            (letrec ((x7398
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7398))))
                                                                    (cdr
                                                                     x7397))))
                                                          (car x7396))))
                                                g7395)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7399
                                                        (letrec ((x7401
                                                                  (list? l)))
                                                          (assert x7401)))
                                                       (g7400
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7402
                                                                              (letrec ((x-cnd7403
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7403
                                                                                  0
                                                                                  (letrec ((x7404
                                                                                            (letrec ((x7405
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7405))))
                                                                                    (+
                                                                                     1
                                                                                     x7404))))))
                                                                      g7402))))
                                                          (letrec ((g7406
                                                                    (rec l)))
                                                            g7406))))
                                                g7400)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7407
                                                        (letrec ((x7410
                                                                  (char? c1)))
                                                          (assert x7410)))
                                                       (g7408
                                                        (letrec ((x7411
                                                                  (char? c2)))
                                                          (assert x7411)))
                                                       (g7409
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7412
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7412))))
                                                g7409)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7413
                                                        (letrec ((x7414
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7414))))
                                                g7413)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7415
                                                        (letrec ((x7416
                                                                  (letrec ((x7417
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7417))))
                                                          (cdr x7416))))
                                                g7415)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7418
                                                        (letrec ((x7420
                                                                  (list? l)))
                                                          (assert x7420)))
                                                       (g7419
                                                        (letrec ((x-cnd7421
                                                                  (null? l)))
                                                          (if x-cnd7421
                                                            #f
                                                            (letrec ((x-cnd7422
                                                                      (letrec ((x7423
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7423
                                                                         k))))
                                                              (if x-cnd7422
                                                                (car l)
                                                                (letrec ((x7424
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7424))))))))
                                                g7419)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7425
                                                        (letrec ((x7426
                                                                  (car x)))
                                                          (car x7426))))
                                                g7425)))
                                           (char>?
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
                                                        (letrec ((x7432
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7432))))
                                                g7429)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7433
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7434
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7434))))
                                                g7433)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7435
                                                        (letrec ((x7438
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7438)))
                                                       (g7436
                                                        (letrec ((x7439
                                                                  (list? l)))
                                                          (assert x7439)))
                                                       (g7437
                                                        (letrec ((x-cnd7440
                                                                  (null? l)))
                                                          (if x-cnd7440
                                                            #t
                                                            (letrec ((x-cnd7441
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7441
                                                                (letrec ((g7442
                                                                          (letrec ((x7444
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7444)))
                                                                         (g7443
                                                                          (letrec ((x7445
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7445))))
                                                                  g7443)
                                                                '()))))))
                                                g7437)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7446
                                                        (letrec ((x7448
                                                                  (number? x)))
                                                          (assert x7448)))
                                                       (g7447
                                                        (letrec ((x-cnd7449
                                                                  (< x 0)))
                                                          (if x-cnd7449
                                                            (- 0 x)
                                                            x))))
                                                g7447)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7450
                                                        (letrec ((x7453
                                                                  (char? c1)))
                                                          (assert x7453)))
                                                       (g7451
                                                        (letrec ((x7454
                                                                  (char? c2)))
                                                          (assert x7454)))
                                                       (g7452
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7455
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7455))))
                                                g7452)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7456
                                                        (letrec ((x7457
                                                                  (letrec ((x7458
                                                                            (letrec ((x7459
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7459))))
                                                                    (cdr
                                                                     x7458))))
                                                          (car x7457))))
                                                g7456)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7460 #f)) g7460)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7461
                                                        (letrec ((x7463
                                                                  (letrec ((x7464
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7464)))
                                                                 (x7462
                                                                  (gcd m n)))
                                                          (/ x7463 x7462))))
                                                g7461)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7465
                                                        (letrec ((x7467
                                                                  (number? x)))
                                                          (assert x7467)))
                                                       (g7466
                                                        (letrec ((x7468
                                                                  (<= x y)))
                                                          (not x7468))))
                                                g7466)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7469
                                                        (letrec ((x7473
                                                                  (list? l)))
                                                          (assert x7473)))
                                                       (g7470
                                                        (letrec ((x7474
                                                                  (number?
                                                                   index)))
                                                          (assert x7474)))
                                                       (g7471
                                                        (letrec ((x7475
                                                                  (letrec ((x7476
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7476))))
                                                          (assert x7475)))
                                                       (g7472
                                                        (letrec ((x-cnd7477
                                                                  (= index 0)))
                                                          (if x-cnd7477
                                                            (car l)
                                                            (letrec ((x7479
                                                                      (cdr l))
                                                                     (x7478
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7479
                                                               x7478))))))
                                                g7472)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7480
                                                        (letrec ((x-cnd7481
                                                                  (= b 0)))
                                                          (if x-cnd7481
                                                            a
                                                            (letrec ((x7482
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7482))))))
                                                g7480)))
                                           (phi
                                            (letrec ((x7506 (x1))
                                                     (x7483
                                                      (letrec ((x7505 (x2))
                                                               (x7484
                                                                (letrec ((x7504
                                                                          (x3))
                                                                         (x7485
                                                                          (letrec ((x7503
                                                                                    (x4))
                                                                                   (x7486
                                                                                    (letrec ((x7502
                                                                                              (x5))
                                                                                             (x7487
                                                                                              (letrec ((x7501
                                                                                                        (x6))
                                                                                                       (x7488
                                                                                                        (letrec ((x7500
                                                                                                                  (x7))
                                                                                                                 (x7489
                                                                                                                  (letrec ((x-cnd7490
                                                                                                                            (or x1
                                                                                                                                x2)))
                                                                                                                    (if x-cnd7490
                                                                                                                      (letrec ((x-cnd7491
                                                                                                                                (letrec ((x7493
                                                                                                                                          (not
                                                                                                                                           x2))
                                                                                                                                         (x7492
                                                                                                                                          (not
                                                                                                                                           x3)))
                                                                                                                                  (or x1
                                                                                                                                      x7493
                                                                                                                                      x7492))))
                                                                                                                        (if x-cnd7491
                                                                                                                          (letrec ((x-cnd7494
                                                                                                                                    (or x3
                                                                                                                                        x4)))
                                                                                                                            (if x-cnd7494
                                                                                                                              (letrec ((x-cnd7495
                                                                                                                                        (letrec ((x7496
                                                                                                                                                  (not
                                                                                                                                                   x4)))
                                                                                                                                          (or x7496
                                                                                                                                              x1))))
                                                                                                                                (if x-cnd7495
                                                                                                                                  (letrec ((x-cnd7497
                                                                                                                                            (letrec ((x7499
                                                                                                                                                      (not
                                                                                                                                                       x2))
                                                                                                                                                     (x7498
                                                                                                                                                      (not
                                                                                                                                                       x3)))
                                                                                                                                              (or x7499
                                                                                                                                                  x7498))))
                                                                                                                                    (if x-cnd7497
                                                                                                                                      (or x4
                                                                                                                                          x2)
                                                                                                                                      #f))
                                                                                                                                  #f))
                                                                                                                              #f))
                                                                                                                          #f))
                                                                                                                      #f))))
                                                                                                          (λ x7500
                                                                                                            x7489))))
                                                                                                (λ x7501
                                                                                                  x7488))))
                                                                                      (λ x7502
                                                                                        x7487))))
                                                                            (λ x7503
                                                                              x7486))))
                                                                  (λ x7504
                                                                    x7485))))
                                                        (λ x7505 x7484))))
                                              (λ x7506 x7483)))
                                           (try
                                            (letrec ((x7509 (f))
                                                     (x7507
                                                      (letrec ((val6904
                                                                (f #t)))
                                                        (letrec ((g7508
                                                                  (if val6904
                                                                    val6904
                                                                    (f #f))))
                                                          g7508))))
                                              (λ x7509 x7507)))
                                           (sat-solve-7
                                            (letrec ((x7538 (p))
                                                     (x7510
                                                      (letrec ((x7511
                                                                (letrec ((x7537
                                                                          (n1))
                                                                         (x7512
                                                                          (letrec ((x7513
                                                                                    (letrec ((x7536
                                                                                              (n2))
                                                                                             (x7514
                                                                                              (letrec ((x7515
                                                                                                        (letrec ((x7535
                                                                                                                  (n3))
                                                                                                                 (x7516
                                                                                                                  (letrec ((x7517
                                                                                                                            (letrec ((x7534
                                                                                                                                      (n4))
                                                                                                                                     (x7518
                                                                                                                                      (letrec ((x7519
                                                                                                                                                (letrec ((x7533
                                                                                                                                                          (n5))
                                                                                                                                                         (x7520
                                                                                                                                                          (letrec ((x7521
                                                                                                                                                                    (letrec ((x7532
                                                                                                                                                                              (n6))
                                                                                                                                                                             (x7522
                                                                                                                                                                              (letrec ((x7523
                                                                                                                                                                                        (letrec ((x7531
                                                                                                                                                                                                  (n7))
                                                                                                                                                                                                 (x7524
                                                                                                                                                                                                  (letrec ((x7525
                                                                                                                                                                                                            (letrec ((x7526
                                                                                                                                                                                                                      (letrec ((x7527
                                                                                                                                                                                                                                (letrec ((x7528
                                                                                                                                                                                                                                          (letrec ((x7529
                                                                                                                                                                                                                                                    (letrec ((x7530
                                                                                                                                                                                                                                                              (p
                                                                                                                                                                                                                                                               n1)))
                                                                                                                                                                                                                                                      (x7530
                                                                                                                                                                                                                                                       n2))))
                                                                                                                                                                                                                                            (x7529
                                                                                                                                                                                                                                             n3))))
                                                                                                                                                                                                                                  (x7528
                                                                                                                                                                                                                                   n4))))
                                                                                                                                                                                                                        (x7527
                                                                                                                                                                                                                         n5))))
                                                                                                                                                                                                              (x7526
                                                                                                                                                                                                               n6))))
                                                                                                                                                                                                    (x7525
                                                                                                                                                                                                     n7))))
                                                                                                                                                                                          (λ x7531
                                                                                                                                                                                            x7524))))
                                                                                                                                                                                (try
                                                                                                                                                                                 x7523))))
                                                                                                                                                                      (λ x7532
                                                                                                                                                                        x7522))))
                                                                                                                                                            (try
                                                                                                                                                             x7521))))
                                                                                                                                                  (λ x7533
                                                                                                                                                    x7520))))
                                                                                                                                        (try
                                                                                                                                         x7519))))
                                                                                                                              (λ x7534
                                                                                                                                x7518))))
                                                                                                                    (try
                                                                                                                     x7517))))
                                                                                                          (λ x7535
                                                                                                            x7516))))
                                                                                                (try
                                                                                                 x7515))))
                                                                                      (λ x7536
                                                                                        x7514))))
                                                                            (try
                                                                             x7513))))
                                                                  (λ x7537
                                                                    x7512))))
                                                        (try x7511))))
                                              (λ x7538 x7510))))
                                    (letrec ((g7539 (sat-solve-7 phi)))
                                      g7539))))
                          g6987))))
              g6985)))
    g6984))
