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
                                                                                                                (letrec ((x7214
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7213
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7196
                                                                                                                          (letrec ((x7210
                                                                                                                                    (letrec ((x7211
                                                                                                                                              (letrec ((x7212
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7212))))
                                                                                                                                      (x7211)))
                                                                                                                                   (x7197
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
                                                                                                                            (let x7210 x7197))))
                                                                                                                  (and x7214
                                                                                                                       x7213
                                                                                                                       x7196)))))
                                                                                                      g7195)))))
                                                                                        g7186)))))
                                                                          g7182)))))
                                                            g7179))))
                                                g7178)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7215
                                                        (letrec ((x7216
                                                                  (letrec ((x7217
                                                                            (letrec ((x7218
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7218))))
                                                                    (car
                                                                     x7217))))
                                                          (cdr x7216))))
                                                g7215)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7219
                                                        (letrec ((x7220
                                                                  (letrec ((x7221
                                                                            (letrec ((x7222
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7222))))
                                                                    (car
                                                                     x7221))))
                                                          (car x7220))))
                                                g7219)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7223 (eq? x y)))
                                                g7223)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7224
                                                        (letrec ((x7226
                                                                  (number? x)))
                                                          (assert x7226)))
                                                       (g7225
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7227
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7228
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7228)))))
                                                            g7227))))
                                                g7225)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7229
                                                        (letrec ((x7232
                                                                  (string?
                                                                   filename)))
                                                          (assert x7232)))
                                                       (g7230
                                                        (letrec ((x7233
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7233)))
                                                       (g7231
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7234
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7235 res))
                                                            g7235))))
                                                g7231)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7236 (cons x '())))
                                                g7236)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7237
                                                        (letrec ((x7240
                                                                  (char? c1)))
                                                          (assert x7240)))
                                                       (g7238
                                                        (letrec ((x7241
                                                                  (char? c2)))
                                                          (assert x7241)))
                                                       (g7239
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7242
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7242))))
                                                g7239)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7243
                                                        (letrec ((x7244
                                                                  (letrec ((x7245
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7245))))
                                                          (cdr x7244))))
                                                g7243)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7246
                                                        (letrec ((x7247
                                                                  (letrec ((x7248
                                                                            (letrec ((x7249
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7249))))
                                                                    (car
                                                                     x7248))))
                                                          (cdr x7247))))
                                                g7246)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7250
                                                        (letrec ((x7251
                                                                  (letrec ((x7252
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7252))))
                                                          (car x7251))))
                                                g7250)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7253
                                                        (letrec ((x7254
                                                                  (letrec ((x7255
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7255))))
                                                          (car x7254))))
                                                g7253)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7256
                                                        (letrec ((x7259
                                                                  (char? c1)))
                                                          (assert x7259)))
                                                       (g7257
                                                        (letrec ((x7260
                                                                  (char? c2)))
                                                          (assert x7260)))
                                                       (g7258
                                                        (letrec ((x7261
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7261))))
                                                g7258)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7262
                                                        (letrec ((x7263
                                                                  (letrec ((x7264
                                                                            (letrec ((x7265
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7265))))
                                                                    (car
                                                                     x7264))))
                                                          (car x7263))))
                                                g7262)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7266
                                                        (letrec ((x7268
                                                                  (number? x)))
                                                          (assert x7268)))
                                                       (g7267 (< x 0)))
                                                g7267)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7269 (memq e l)))
                                                g7269)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7270
                                                        (letrec ((x7271
                                                                  (letrec ((x7272
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7272))))
                                                          (car x7271))))
                                                g7270)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7273 '())) g7273)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7274
                                                        (letrec ((x7276
                                                                  (list? l)))
                                                          (assert x7276)))
                                                       (g7275
                                                        (letrec ((x-cnd7277
                                                                  (null? l)))
                                                          (if x-cnd7277
                                                            '()
                                                            (letrec ((x7280
                                                                      (letrec ((x7281
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7281)))
                                                                     (x7278
                                                                      (letrec ((x7279
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7279))))
                                                              (append
                                                               x7280
                                                               x7278))))))
                                                g7275)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7282
                                                        (letrec ((x7283
                                                                  (letrec ((x7284
                                                                            (letrec ((x7285
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7285))))
                                                                    (car
                                                                     x7284))))
                                                          (car x7283))))
                                                g7282)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7286
                                                        (letrec ((x7287
                                                                  (letrec ((x7288
                                                                            (letrec ((x7289
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7289))))
                                                                    (cdr
                                                                     x7288))))
                                                          (cdr x7287))))
                                                g7286)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7290
                                                        (letrec ((x7292
                                                                  (number? x)))
                                                          (assert x7292)))
                                                       (g7291
                                                        (letrec ((x7293
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7293))))
                                                g7291)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7294
                                                        (letrec ((x7295
                                                                  (letrec ((x7296
                                                                            (letrec ((x7297
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7297))))
                                                                    (car
                                                                     x7296))))
                                                          (car x7295))))
                                                g7294)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7298
                                                        (letrec ((x7301
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7301)))
                                                       (g7299
                                                        (letrec ((x7302
                                                                  (list?
                                                                   args)))
                                                          (assert x7302)))
                                                       (g7300
                                                        (if cnd
                                                          (letrec ((g7303
                                                                    (proc)))
                                                            g7303)
                                                          (if cnd
                                                            (letrec ((g7304
                                                                      (letrec ((x7305
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7305))))
                                                              g7304)
                                                            (if cnd
                                                              (letrec ((g7306
                                                                        (letrec ((x7308
                                                                                  (car
                                                                                   args))
                                                                                 (x7307
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7308
                                                                           x7307))))
                                                                g7306)
                                                              (if cnd
                                                                (letrec ((g7309
                                                                          (letrec ((x7312
                                                                                    (car
                                                                                     args))
                                                                                   (x7311
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7310
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7312
                                                                             x7311
                                                                             x7310))))
                                                                  g7309)
                                                                (if cnd
                                                                  (letrec ((g7313
                                                                            (letrec ((x7317
                                                                                      (car
                                                                                       args))
                                                                                     (x7316
                                                                                      (cadr
                                                                                       args))
                                                                                     (x7315
                                                                                      (caddr
                                                                                       args))
                                                                                     (x7314
                                                                                      (cadddr
                                                                                       args)))
                                                                              (proc
                                                                               x7317
                                                                               x7316
                                                                               x7315
                                                                               x7314))))
                                                                    g7313)
                                                                  (if cnd
                                                                    (letrec ((g7318
                                                                              (letrec ((x7324
                                                                                        (car
                                                                                         args))
                                                                                       (x7323
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7322
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7321
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7319
                                                                                        (letrec ((x7320
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7320))))
                                                                                (proc
                                                                                 x7324
                                                                                 x7323
                                                                                 x7322
                                                                                 x7321
                                                                                 x7319))))
                                                                      g7318)
                                                                    (if cnd
                                                                      (letrec ((g7325
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
                                                                                             x7329)))
                                                                                         (x7326
                                                                                          (letrec ((x7327
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7327))))
                                                                                  (proc
                                                                                   x7333
                                                                                   x7332
                                                                                   x7331
                                                                                   x7330
                                                                                   x7328
                                                                                   x7326))))
                                                                        g7325)
                                                                      (if cnd
                                                                        (letrec ((g7334
                                                                                  (letrec ((x7344
                                                                                            (car
                                                                                             args))
                                                                                           (x7343
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7342
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7341
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7339
                                                                                            (letrec ((x7340
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7340)))
                                                                                           (x7337
                                                                                            (letrec ((x7338
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7338)))
                                                                                           (x7335
                                                                                            (letrec ((x7336
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7336))))
                                                                                    (proc
                                                                                     x7344
                                                                                     x7343
                                                                                     x7342
                                                                                     x7341
                                                                                     x7339
                                                                                     x7337
                                                                                     x7335))))
                                                                          g7334)
                                                                        (letrec ((g7345
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7345)))))))))))
                                                g7300)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7346
                                                        (letrec ((x7348
                                                                  (list? l)))
                                                          (assert x7348)))
                                                       (g7347
                                                        (letrec ((x-cnd7349
                                                                  (null? l)))
                                                          (if x-cnd7349
                                                            #f
                                                            (letrec ((x-cnd7350
                                                                      (letrec ((x7351
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7351
                                                                         e))))
                                                              (if x-cnd7350
                                                                l
                                                                (letrec ((x7352
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7352))))))))
                                                g7347)))
                                           (cddddr
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
                                                          (cdr x7354))))
                                                g7353)))
                                           (cadddr
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
                                                          (car x7358))))
                                                g7357)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7361 (random 42)))
                                                g7361)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7362
                                                        (letrec ((x7364
                                                                  (number? x)))
                                                          (assert x7364)))
                                                       (g7363 (= x 0)))
                                                g7363)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7365
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7366
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7366))))
                                                g7365)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7367
                                                        (letrec ((x7368
                                                                  (cdr x)))
                                                          (car x7368))))
                                                g7367)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7369
                                                        (letrec ((val6900
                                                                  (letrec ((x7372
                                                                            (pair?
                                                                             l))
                                                                           (x7370
                                                                            (letrec ((x7371
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7371))))
                                                                    (and x7372
                                                                         x7370))))
                                                          (letrec ((g7373
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7373))))
                                                g7369)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7374
                                                        (letrec ((x7375
                                                                  (letrec ((x7376
                                                                            (letrec ((x7377
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7377))))
                                                                    (cdr
                                                                     x7376))))
                                                          (cdr x7375))))
                                                g7374)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7378
                                                        (letrec ((x-cnd7379
                                                                  (letrec ((x7380
                                                                            #\0))
                                                                    (char<=?
                                                                     x7380
                                                                     c))))
                                                          (if x-cnd7379
                                                            (letrec ((x7381
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7381))
                                                            #f))))
                                                g7378)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7382
                                                        (letrec ((x7384
                                                                  (list? l)))
                                                          (assert x7384)))
                                                       (g7383
                                                        (letrec ((x-cnd7385
                                                                  (null? l)))
                                                          (if x-cnd7385
                                                            #f
                                                            (letrec ((x-cnd7386
                                                                      (letrec ((x7387
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7387
                                                                         k))))
                                                              (if x-cnd7386
                                                                (car l)
                                                                (letrec ((x7388
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7388))))))))
                                                g7383)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7389 (if x #f #t)))
                                                g7389)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7390 (append l1 l2)))
                                                g7390)))
                                           (memq
                                            (lambda (e l)
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
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7396
                                                                         e))))
                                                              (if x-cnd7395
                                                                l
                                                                (letrec ((x7397
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7397))))))))
                                                g7392)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7398
                                                        (letrec ((x7399
                                                                  (letrec ((x7400
                                                                            (letrec ((x7401
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7401))))
                                                                    (cdr
                                                                     x7400))))
                                                          (car x7399))))
                                                g7398)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7402
                                                        (letrec ((x7404
                                                                  (list? l)))
                                                          (assert x7404)))
                                                       (g7403
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7405
                                                                              (letrec ((x-cnd7406
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7406
                                                                                  0
                                                                                  (letrec ((x7407
                                                                                            (letrec ((x7408
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7408))))
                                                                                    (+
                                                                                     1
                                                                                     x7407))))))
                                                                      g7405))))
                                                          (letrec ((g7409
                                                                    (rec l)))
                                                            g7409))))
                                                g7403)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7410
                                                        (letrec ((x7413
                                                                  (char? c1)))
                                                          (assert x7413)))
                                                       (g7411
                                                        (letrec ((x7414
                                                                  (char? c2)))
                                                          (assert x7414)))
                                                       (g7412
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7415
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7415))))
                                                g7412)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7416
                                                        (letrec ((x7417
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7417))))
                                                g7416)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7418
                                                        (letrec ((x7419
                                                                  (letrec ((x7420
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7420))))
                                                          (cdr x7419))))
                                                g7418)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7421
                                                        (letrec ((x7423
                                                                  (list? l)))
                                                          (assert x7423)))
                                                       (g7422
                                                        (letrec ((x-cnd7424
                                                                  (null? l)))
                                                          (if x-cnd7424
                                                            #f
                                                            (letrec ((x-cnd7425
                                                                      (letrec ((x7426
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7426
                                                                         k))))
                                                              (if x-cnd7425
                                                                (car l)
                                                                (letrec ((x7427
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7427))))))))
                                                g7422)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7428
                                                        (letrec ((x7429
                                                                  (car x)))
                                                          (car x7429))))
                                                g7428)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7430
                                                        (letrec ((x7433
                                                                  (char? c1)))
                                                          (assert x7433)))
                                                       (g7431
                                                        (letrec ((x7434
                                                                  (char? c2)))
                                                          (assert x7434)))
                                                       (g7432
                                                        (letrec ((x7435
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7435))))
                                                g7432)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7436
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7437
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7437))))
                                                g7436)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7438
                                                        (letrec ((x7441
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7441)))
                                                       (g7439
                                                        (letrec ((x7442
                                                                  (list? l)))
                                                          (assert x7442)))
                                                       (g7440
                                                        (letrec ((x-cnd7443
                                                                  (null? l)))
                                                          (if x-cnd7443
                                                            #t
                                                            (letrec ((x-cnd7444
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7444
                                                                (letrec ((g7445
                                                                          (letrec ((x7447
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7447)))
                                                                         (g7446
                                                                          (letrec ((x7448
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7448))))
                                                                  g7446)
                                                                '()))))))
                                                g7440)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7449
                                                        (letrec ((x7451
                                                                  (number? x)))
                                                          (assert x7451)))
                                                       (g7450
                                                        (letrec ((x-cnd7452
                                                                  (< x 0)))
                                                          (if x-cnd7452
                                                            (- 0 x)
                                                            x))))
                                                g7450)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7453
                                                        (letrec ((x7456
                                                                  (char? c1)))
                                                          (assert x7456)))
                                                       (g7454
                                                        (letrec ((x7457
                                                                  (char? c2)))
                                                          (assert x7457)))
                                                       (g7455
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7458
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7458))))
                                                g7455)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7459
                                                        (letrec ((x7460
                                                                  (letrec ((x7461
                                                                            (letrec ((x7462
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7462))))
                                                                    (cdr
                                                                     x7461))))
                                                          (car x7460))))
                                                g7459)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7463 #f)) g7463)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7464
                                                        (letrec ((x7466
                                                                  (letrec ((x7467
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7467)))
                                                                 (x7465
                                                                  (gcd m n)))
                                                          (/ x7466 x7465))))
                                                g7464)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7468
                                                        (letrec ((x7470
                                                                  (number? x)))
                                                          (assert x7470)))
                                                       (g7469
                                                        (letrec ((x7471
                                                                  (<= x y)))
                                                          (not x7471))))
                                                g7469)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7472
                                                        (letrec ((x7476
                                                                  (list? l)))
                                                          (assert x7476)))
                                                       (g7473
                                                        (letrec ((x7477
                                                                  (number?
                                                                   index)))
                                                          (assert x7477)))
                                                       (g7474
                                                        (letrec ((x7478
                                                                  (letrec ((x7479
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7479))))
                                                          (assert x7478)))
                                                       (g7475
                                                        (letrec ((x-cnd7480
                                                                  (= index 0)))
                                                          (if x-cnd7480
                                                            (car l)
                                                            (letrec ((x7482
                                                                      (cdr l))
                                                                     (x7481
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7482
                                                               x7481))))))
                                                g7475)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7483
                                                        (letrec ((x-cnd7484
                                                                  (= b 0)))
                                                          (if x-cnd7484
                                                            a
                                                            (letrec ((x7485
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7485))))))
                                                g7483)))
                                           (phi
                                            (letrec ((x7509 (x1))
                                                     (x7486
                                                      (letrec ((x7508 (x2))
                                                               (x7487
                                                                (letrec ((x7507
                                                                          (x3))
                                                                         (x7488
                                                                          (letrec ((x7506
                                                                                    (x4))
                                                                                   (x7489
                                                                                    (letrec ((x7505
                                                                                              (x5))
                                                                                             (x7490
                                                                                              (letrec ((x7504
                                                                                                        (x6))
                                                                                                       (x7491
                                                                                                        (letrec ((x7503
                                                                                                                  (x7))
                                                                                                                 (x7492
                                                                                                                  (letrec ((x-cnd7493
                                                                                                                            (or x1
                                                                                                                                x2)))
                                                                                                                    (if x-cnd7493
                                                                                                                      (letrec ((x-cnd7494
                                                                                                                                (letrec ((x7496
                                                                                                                                          (not
                                                                                                                                           x2))
                                                                                                                                         (x7495
                                                                                                                                          (not
                                                                                                                                           x3)))
                                                                                                                                  (or x1
                                                                                                                                      x7496
                                                                                                                                      x7495))))
                                                                                                                        (if x-cnd7494
                                                                                                                          (letrec ((x-cnd7497
                                                                                                                                    (or x3
                                                                                                                                        x4)))
                                                                                                                            (if x-cnd7497
                                                                                                                              (letrec ((x-cnd7498
                                                                                                                                        (letrec ((x7499
                                                                                                                                                  (not
                                                                                                                                                   x4)))
                                                                                                                                          (or x7499
                                                                                                                                              x1))))
                                                                                                                                (if x-cnd7498
                                                                                                                                  (letrec ((x-cnd7500
                                                                                                                                            (letrec ((x7502
                                                                                                                                                      (not
                                                                                                                                                       x2))
                                                                                                                                                     (x7501
                                                                                                                                                      (not
                                                                                                                                                       x3)))
                                                                                                                                              (or x7502
                                                                                                                                                  x7501))))
                                                                                                                                    (if x-cnd7500
                                                                                                                                      (or x4
                                                                                                                                          x2)
                                                                                                                                      #f))
                                                                                                                                  #f))
                                                                                                                              #f))
                                                                                                                          #f))
                                                                                                                      #f))))
                                                                                                          (λ x7503
                                                                                                            x7492))))
                                                                                                (λ x7504
                                                                                                  x7491))))
                                                                                      (λ x7505
                                                                                        x7490))))
                                                                            (λ x7506
                                                                              x7489))))
                                                                  (λ x7507
                                                                    x7488))))
                                                        (λ x7508 x7487))))
                                              (λ x7509 x7486)))
                                           (try
                                            (letrec ((x7512 (f))
                                                     (x7510
                                                      (letrec ((val6904
                                                                (f #t)))
                                                        (letrec ((g7511
                                                                  (if val6904
                                                                    val6904
                                                                    (f #f))))
                                                          g7511))))
                                              (λ x7512 x7510)))
                                           (sat-solve-7
                                            (letrec ((x7541 (p))
                                                     (x7513
                                                      (letrec ((x7514
                                                                (letrec ((x7540
                                                                          (n1))
                                                                         (x7515
                                                                          (letrec ((x7516
                                                                                    (letrec ((x7539
                                                                                              (n2))
                                                                                             (x7517
                                                                                              (letrec ((x7518
                                                                                                        (letrec ((x7538
                                                                                                                  (n3))
                                                                                                                 (x7519
                                                                                                                  (letrec ((x7520
                                                                                                                            (letrec ((x7537
                                                                                                                                      (n4))
                                                                                                                                     (x7521
                                                                                                                                      (letrec ((x7522
                                                                                                                                                (letrec ((x7536
                                                                                                                                                          (n5))
                                                                                                                                                         (x7523
                                                                                                                                                          (letrec ((x7524
                                                                                                                                                                    (letrec ((x7535
                                                                                                                                                                              (n6))
                                                                                                                                                                             (x7525
                                                                                                                                                                              (letrec ((x7526
                                                                                                                                                                                        (letrec ((x7534
                                                                                                                                                                                                  (n7))
                                                                                                                                                                                                 (x7527
                                                                                                                                                                                                  (letrec ((x7528
                                                                                                                                                                                                            (letrec ((x7529
                                                                                                                                                                                                                      (letrec ((x7530
                                                                                                                                                                                                                                (letrec ((x7531
                                                                                                                                                                                                                                          (letrec ((x7532
                                                                                                                                                                                                                                                    (letrec ((x7533
                                                                                                                                                                                                                                                              (p
                                                                                                                                                                                                                                                               n1)))
                                                                                                                                                                                                                                                      (x7533
                                                                                                                                                                                                                                                       n2))))
                                                                                                                                                                                                                                            (x7532
                                                                                                                                                                                                                                             n3))))
                                                                                                                                                                                                                                  (x7531
                                                                                                                                                                                                                                   n4))))
                                                                                                                                                                                                                        (x7530
                                                                                                                                                                                                                         n5))))
                                                                                                                                                                                                              (x7529
                                                                                                                                                                                                               n6))))
                                                                                                                                                                                                    (x7528
                                                                                                                                                                                                     n7))))
                                                                                                                                                                                          (λ x7534
                                                                                                                                                                                            x7527))))
                                                                                                                                                                                (try
                                                                                                                                                                                 x7526))))
                                                                                                                                                                      (λ x7535
                                                                                                                                                                        x7525))))
                                                                                                                                                            (try
                                                                                                                                                             x7524))))
                                                                                                                                                  (λ x7536
                                                                                                                                                    x7523))))
                                                                                                                                        (try
                                                                                                                                         x7522))))
                                                                                                                              (λ x7537
                                                                                                                                x7521))))
                                                                                                                    (try
                                                                                                                     x7520))))
                                                                                                          (λ x7538
                                                                                                            x7519))))
                                                                                                (try
                                                                                                 x7518))))
                                                                                      (λ x7539
                                                                                        x7517))))
                                                                            (try
                                                                             x7516))))
                                                                  (λ x7540
                                                                    x7515))))
                                                        (try x7514))))
                                              (λ x7541 x7513))))
                                    (letrec ((g7542 (sat-solve-7 phi)))
                                      g7542))))
                          g6987))))
              g6985)))
    g6984))
