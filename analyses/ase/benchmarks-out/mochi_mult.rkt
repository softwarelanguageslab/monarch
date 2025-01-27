(letrec ((any? (lambda (v) (letrec ((g6984 #t)) g6984)))
         (meta (lambda (v) (letrec ((g6985 v)) g6985)))
         (member
          (lambda (v lst)
            (letrec ((g6986
                      (letrec ((g6987
                                (letrec ((x-e6988 lst))
                                  (match
                                   x-e6988
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd6989 (eq? v v1)))
                                       (if x-cnd6989 #t (member v vs)))))))))
                        g6987)))
              g6986)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g6990 (lambda (v) (letrec ((g6991 v)) g6991)))) g6990)))
         (nonzero?
          (lambda (v)
            (letrec ((g6992 (letrec ((x6993 (= v 0))) (not x6993)))) g6992))))
  (letrec ((g6994
            (letrec ((g6995
                      (letrec ((orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g6996 '())
                                 (g6997
                                  (letrec ((real/c
                                            (lambda (g6905 g6906 g6907)
                                              (letrec ((g6998
                                                        (letrec ((x-cnd6999
                                                                  (real?
                                                                   g6907)))
                                                          (if x-cnd6999
                                                            g6907
                                                            (blame
                                                             g6905
                                                             'real?)))))
                                                g6998)))
                                           (boolean?/c
                                            (lambda (g6908 g6909 g6910)
                                              (letrec ((g7000
                                                        (letrec ((x-cnd7001
                                                                  (boolean?
                                                                   g6910)))
                                                          (if x-cnd7001
                                                            g6910
                                                            (blame
                                                             g6908
                                                             'boolean?)))))
                                                g7000)))
                                           (number?/c
                                            (lambda (g6911 g6912 g6913)
                                              (letrec ((g7002
                                                        (letrec ((x-cnd7003
                                                                  (number?
                                                                   g6913)))
                                                          (if x-cnd7003
                                                            g6913
                                                            (blame
                                                             g6911
                                                             'number?)))))
                                                g7002)))
                                           (any/c
                                            (lambda (g6914 g6915 g6916)
                                              (letrec ((g7004
                                                        (letrec ((x-cnd7005
                                                                  ((lambda (v)
                                                                     (letrec ((g7006
                                                                               #t))
                                                                       g7006))
                                                                   g6916)))
                                                          (if x-cnd7005
                                                            g6916
                                                            (blame
                                                             g6914
                                                             '(lambda (v)
                                                                #t))))))
                                                g7004)))
                                           (any?/c
                                            (lambda (g6917 g6918 g6919)
                                              (letrec ((g7007
                                                        (letrec ((x-cnd7008
                                                                  ((lambda (v)
                                                                     (letrec ((g7009
                                                                               #t))
                                                                       g7009))
                                                                   g6919)))
                                                          (if x-cnd7008
                                                            g6919
                                                            (blame
                                                             g6917
                                                             '(lambda (v)
                                                                #t))))))
                                                g7007)))
                                           (cons?/c
                                            (lambda (g6920 g6921 g6922)
                                              (letrec ((g7010
                                                        (letrec ((x-cnd7011
                                                                  (pair?
                                                                   g6922)))
                                                          (if x-cnd7011
                                                            g6922
                                                            (blame
                                                             g6920
                                                             'pair?)))))
                                                g7010)))
                                           (pair?/c
                                            (lambda (g6923 g6924 g6925)
                                              (letrec ((g7012
                                                        (letrec ((x-cnd7013
                                                                  (pair?
                                                                   g6925)))
                                                          (if x-cnd7013
                                                            g6925
                                                            (blame
                                                             g6923
                                                             'pair?)))))
                                                g7012)))
                                           (integer?/c
                                            (lambda (g6926 g6927 g6928)
                                              (letrec ((g7014
                                                        (letrec ((x-cnd7015
                                                                  (integer?
                                                                   g6928)))
                                                          (if x-cnd7015
                                                            g6928
                                                            (blame
                                                             g6926
                                                             'integer?)))))
                                                g7014)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7016
                                                        (lambda (k j v)
                                                          (letrec ((g7017
                                                                    (letrec ((x-cnd7018
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7018
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7017))))
                                                g7016)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7019
                                                        (lambda (k j v)
                                                          (letrec ((g7020
                                                                    (letrec ((x-cnd7021
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7021
                                                                        '()
                                                                        (letrec ((x7025
                                                                                  (letrec ((x7026
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7026)))
                                                                                 (x7022
                                                                                  (letrec ((x7024
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7023
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7024
                                                                                     k
                                                                                     j
                                                                                     x7023))))
                                                                          (cons
                                                                           x7025
                                                                           x7022))))))
                                                            g7020))))
                                                g7019)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7027 #t)) g7027)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7028
                                                        (letrec ((x7029
                                                                  (= v 0)))
                                                          (not x7029))))
                                                g7028)))
                                           (nonzero?/c
                                            (lambda (g6929 g6930 g6931)
                                              (letrec ((g7030
                                                        (letrec ((x-cnd7031
                                                                  ((lambda (v)
                                                                     (letrec ((g7032
                                                                               (letrec ((x7033
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7033))))
                                                                       g7032))
                                                                   g6931)))
                                                          (if x-cnd7031
                                                            g6931
                                                            (blame
                                                             g6929
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7030)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7034 v)) g7034)))
                                           (+
                                            ((lambda (j6934 k6935 f6936)
                                               (letrec ((g7036
                                                         (lambda (g6932 g6933)
                                                           (letrec ((g7037
                                                                     (letrec ((x7038
                                                                               (letrec ((x7040
                                                                                         (number?/c
                                                                                          j6934
                                                                                          k6935
                                                                                          g6932))
                                                                                        (x7039
                                                                                         (number?/c
                                                                                          j6934
                                                                                          k6935
                                                                                          g6933)))
                                                                                 (f6936
                                                                                  x7040
                                                                                  x7039))))
                                                                       (number?/c
                                                                        j6934
                                                                        k6935
                                                                        x7038))))
                                                             g7037))))
                                                 g7036))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7035 (orig-+ a b)))
                                                 g7035))))
                                           (-
                                            ((lambda (j6939 k6940 f6941)
                                               (letrec ((g7042
                                                         (lambda (g6937 g6938)
                                                           (letrec ((g7043
                                                                     (letrec ((x7044
                                                                               (letrec ((x7046
                                                                                         (number?/c
                                                                                          j6939
                                                                                          k6940
                                                                                          g6937))
                                                                                        (x7045
                                                                                         (number?/c
                                                                                          j6939
                                                                                          k6940
                                                                                          g6938)))
                                                                                 (f6941
                                                                                  x7046
                                                                                  x7045))))
                                                                       (number?/c
                                                                        j6939
                                                                        k6940
                                                                        x7044))))
                                                             g7043))))
                                                 g7042))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7041 (orig-- a b)))
                                                 g7041))))
                                           (*
                                            ((lambda (j6944 k6945 f6946)
                                               (letrec ((g7048
                                                         (lambda (g6942 g6943)
                                                           (letrec ((g7049
                                                                     (letrec ((x7050
                                                                               (letrec ((x7052
                                                                                         (number?/c
                                                                                          j6944
                                                                                          k6945
                                                                                          g6942))
                                                                                        (x7051
                                                                                         (number?/c
                                                                                          j6944
                                                                                          k6945
                                                                                          g6943)))
                                                                                 (f6946
                                                                                  x7052
                                                                                  x7051))))
                                                                       (number?/c
                                                                        j6944
                                                                        k6945
                                                                        x7050))))
                                                             g7049))))
                                                 g7048))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7047 (orig-* a b)))
                                                 g7047))))
                                           (/
                                            ((lambda (j6949 k6950 f6951)
                                               (letrec ((g7054
                                                         (lambda (g6947 g6948)
                                                           (letrec ((g7055
                                                                     (letrec ((x7056
                                                                               (letrec ((x7058
                                                                                         (number?/c
                                                                                          j6949
                                                                                          k6950
                                                                                          g6947))
                                                                                        (x7057
                                                                                         (number?/c
                                                                                          j6949
                                                                                          k6950
                                                                                          g6948)))
                                                                                 (f6951
                                                                                  x7058
                                                                                  x7057))))
                                                                       (number?/c
                                                                        j6949
                                                                        k6950
                                                                        x7056))))
                                                             g7055))))
                                                 g7054))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7053 (orig-/ a b)))
                                                 g7053))))
                                           (car
                                            ((lambda (j6953 k6954 f6955)
                                               (letrec ((g7060
                                                         (lambda (g6952)
                                                           (letrec ((g7061
                                                                     (letrec ((x7062
                                                                               (letrec ((x7063
                                                                                         (pair?/c
                                                                                          j6953
                                                                                          k6954
                                                                                          g6952)))
                                                                                 (f6955
                                                                                  x7063))))
                                                                       (any/c
                                                                        j6953
                                                                        k6954
                                                                        x7062))))
                                                             g7061))))
                                                 g7060))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7059 (orig-car p)))
                                                 g7059))))
                                           (cdr
                                            ((lambda (j6957 k6958 f6959)
                                               (letrec ((g7065
                                                         (lambda (g6956)
                                                           (letrec ((g7066
                                                                     (letrec ((x7067
                                                                               (letrec ((x7068
                                                                                         (pair?/c
                                                                                          j6957
                                                                                          k6958
                                                                                          g6956)))
                                                                                 (f6959
                                                                                  x7068))))
                                                                       (any/c
                                                                        j6957
                                                                        k6958
                                                                        x7067))))
                                                             g7066))))
                                                 g7065))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7064 (orig-cdr p)))
                                                 g7064))))
                                           (cons
                                            ((lambda (j6962 k6963 f6964)
                                               (letrec ((g7070
                                                         (lambda (g6960 g6961)
                                                           (letrec ((g7071
                                                                     (letrec ((x7072
                                                                               (letrec ((x7074
                                                                                         (any/c
                                                                                          j6962
                                                                                          k6963
                                                                                          g6960))
                                                                                        (x7073
                                                                                         (any/c
                                                                                          j6962
                                                                                          k6963
                                                                                          g6961)))
                                                                                 (f6964
                                                                                  x7074
                                                                                  x7073))))
                                                                       (pair?/c
                                                                        j6962
                                                                        k6963
                                                                        x7072))))
                                                             g7071))))
                                                 g7070))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7069 (cons a b)))
                                                 g7069))))
                                           (vector-ref
                                            ((lambda (j6966 k6967 f6968)
                                               (letrec ((g7076
                                                         (lambda (g6965)
                                                           (letrec ((g7077
                                                                     (letrec ((x7078
                                                                               (letrec ((x7079
                                                                                         (vector?/c
                                                                                          j6966
                                                                                          k6967
                                                                                          g6965)))
                                                                                 (f6968
                                                                                  x7079))))
                                                                       (integer?/c
                                                                        j6966
                                                                        k6967
                                                                        x7078))))
                                                             g7077))))
                                                 g7076))
                                             'server
                                             'client
                                             (lambda (v i)
                                               (letrec ((g7075
                                                         (orig-vector-ref
                                                          v
                                                          i)))
                                                 g7075))))
                                           (vector-set!
                                            ((lambda (j6971 k6972 f6973)
                                               (letrec ((g7081
                                                         (lambda (g6969 g6970)
                                                           (letrec ((g7082
                                                                     (letrec ((x7083
                                                                               (letrec ((x7085
                                                                                         (vector?/c
                                                                                          j6971
                                                                                          k6972
                                                                                          g6969))
                                                                                        (x7084
                                                                                         (integer?/c
                                                                                          j6971
                                                                                          k6972
                                                                                          g6970)))
                                                                                 (f6973
                                                                                  x7085
                                                                                  x7084))))
                                                                       (any/c
                                                                        j6971
                                                                        k6972
                                                                        x7083))))
                                                             g7082))))
                                                 g7081))
                                             'server
                                             'client
                                             (lambda (vec i v)
                                               (letrec ((g7080
                                                         (orig-vector-set!
                                                          vec
                                                          i
                                                          v)))
                                                 g7080))))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7086 #t)) g7086)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7087
                                                        (letrec ((x7088
                                                                  (letrec ((x7089
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7089))))
                                                          (cdr x7088))))
                                                g7087)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7090
                                                        (letrec ((x7093
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7093)))
                                                       (g7091
                                                        (letrec ((x7094
                                                                  (list? l)))
                                                          (assert x7094)))
                                                       (g7092
                                                        (letrec ((x-cnd7095
                                                                  (null? l)))
                                                          (if x-cnd7095
                                                            '()
                                                            (letrec ((x7098
                                                                      (letrec ((x7099
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7099)))
                                                                     (x7096
                                                                      (letrec ((x7097
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7097))))
                                                              (cons
                                                               x7098
                                                               x7096))))))
                                                g7092)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7100
                                                        (letrec ((x7101
                                                                  (car x)))
                                                          (cdr x7101))))
                                                g7100)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7102
                                                        (letrec ((x7103
                                                                  (letrec ((x7104
                                                                            (letrec ((x7105
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7105))))
                                                                    (cdr
                                                                     x7104))))
                                                          (car x7103))))
                                                g7102)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7106
                                                        (letrec ((x7107
                                                                  (letrec ((x7108
                                                                            (letrec ((x7109
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7109))))
                                                                    (car
                                                                     x7108))))
                                                          (cdr x7107))))
                                                g7106)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7110
                                                        (letrec ((x7113
                                                                  (string?
                                                                   filename)))
                                                          (assert x7113)))
                                                       (g7111
                                                        (letrec ((x7114
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7114)))
                                                       (g7112
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7115
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7116 res))
                                                            g7116))))
                                                g7112)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7117
                                                        (letrec ((x7118
                                                                  (letrec ((x7119
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7119))))
                                                          (car x7118))))
                                                g7117)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7120
                                                        (letrec ((x7121
                                                                  (letrec ((x7122
                                                                            (letrec ((x7123
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7123))))
                                                                    (car
                                                                     x7122))))
                                                          (cdr x7121))))
                                                g7120)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7124
                                                        (letrec ((x7126
                                                                  (list? l)))
                                                          (assert x7126)))
                                                       (g7125
                                                        (letrec ((x-cnd7127
                                                                  (null? l)))
                                                          (if x-cnd7127
                                                            #f
                                                            (letrec ((x-cnd7128
                                                                      (letrec ((x7129
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7129
                                                                         k))))
                                                              (if x-cnd7128
                                                                (car l)
                                                                (letrec ((x7130
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7130))))))))
                                                g7125)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7131
                                                        (letrec ((x7132
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7132))))
                                                g7131)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7133
                                                        (letrec ((x7135
                                                                  (list? l)))
                                                          (assert x7135)))
                                                       (g7134
                                                        (letrec ((x-cnd7136
                                                                  (null? l)))
                                                          (if x-cnd7136
                                                            ""
                                                            (letrec ((x7139
                                                                      (letrec ((x7140
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7140)))
                                                                     (x7137
                                                                      (letrec ((x7138
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7138))))
                                                              (string-append
                                                               x7139
                                                               x7137))))))
                                                g7134)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7141
                                                        (letrec ((x7144
                                                                  (char? c1)))
                                                          (assert x7144)))
                                                       (g7142
                                                        (letrec ((x7145
                                                                  (char? c2)))
                                                          (assert x7145)))
                                                       (g7143
                                                        (letrec ((val6887
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7146
                                                                    (if val6887
                                                                      val6887
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7146))))
                                                g7143)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7147
                                                        (letrec ((x7148
                                                                  (letrec ((x7149
                                                                            (letrec ((x7150
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7150))))
                                                                    (cdr
                                                                     x7149))))
                                                          (cdr x7148))))
                                                g7147)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7151
                                                        (letrec ((x7154
                                                                  (list? l)))
                                                          (assert x7154)))
                                                       (g7152
                                                        (letrec ((x7155
                                                                  (numer?)))
                                                          (assert x7155)))
                                                       (g7153
                                                        (letrec ((x-cnd7156
                                                                  (zero? k)))
                                                          (if x-cnd7156
                                                            x
                                                            (letrec ((x7158
                                                                      (cdr x))
                                                                     (x7157
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7158
                                                               x7157))))))
                                                g7153)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7159 '())) g7159)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7160
                                                        (letrec ((x-cnd7161
                                                                  (letrec ((x7162
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7162))))
                                                          (if x-cnd7161
                                                            (letrec ((x7163
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7163))
                                                            #f))))
                                                g7160)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7164
                                                        (letrec ((x7166
                                                                  (number? x)))
                                                          (assert x7166)))
                                                       (g7165
                                                        (letrec ((val6888
                                                                  (< x y)))
                                                          (letrec ((g7167
                                                                    (if val6888
                                                                      val6888
                                                                      (letrec ((val6889
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7168
                                                                                  (if val6889
                                                                                    val6889
                                                                                    #f)))
                                                                          g7168)))))
                                                            g7167))))
                                                g7165)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7169
                                                        (letrec ((val6890
                                                                  (letrec ((x7170
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7170
                                                                     9))))
                                                          (letrec ((g7171
                                                                    (if val6890
                                                                      val6890
                                                                      (letrec ((val6891
                                                                                (letrec ((x7172
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7172
                                                                                   10))))
                                                                        (letrec ((g7173
                                                                                  (if val6891
                                                                                    val6891
                                                                                    (letrec ((x7174
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7174
                                                                                       32)))))
                                                                          g7173)))))
                                                            g7171))))
                                                g7169)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7175
                                                        (letrec ((x7176
                                                                  (letrec ((x7177
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7177))))
                                                          (cdr x7176))))
                                                g7175)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7178
                                                        (letrec ((x7180
                                                                  (number? x)))
                                                          (assert x7180)))
                                                       (g7179 (> x 0)))
                                                g7179)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7181 #f)) g7181)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7182
                                                        (letrec ((x7183
                                                                  (cdr x)))
                                                          (cdr x7183))))
                                                g7182)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7184
                                                        (letrec ((x7186
                                                                  (number? x)))
                                                          (assert x7186)))
                                                       (g7185
                                                        (letrec ((x-cnd7187
                                                                  (< x 0)))
                                                          (if x-cnd7187
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7185)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7188
                                                        (letrec ((val6892
                                                                  (eq? a b)))
                                                          (letrec ((g7189
                                                                    (if val6892
                                                                      val6892
                                                                      (letrec ((val6893
                                                                                (letrec ((x7191
                                                                                          (null?
                                                                                           a))
                                                                                         (x7190
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7191
                                                                                       x7190))))
                                                                        (letrec ((g7192
                                                                                  (if val6893
                                                                                    val6893
                                                                                    (letrec ((val6894
                                                                                              (letrec ((x7195
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7194
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7193
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7195
                                                                                                     x7194
                                                                                                     x7193))))
                                                                                      (letrec ((g7196
                                                                                                (if val6894
                                                                                                  val6894
                                                                                                  (letrec ((val6895
                                                                                                            (letrec ((x7204
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7203
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7200
                                                                                                                      (letrec ((x7202
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7201
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7202
                                                                                                                         x7201)))
                                                                                                                     (x7197
                                                                                                                      (letrec ((x7199
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7198
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7199
                                                                                                                         x7198))))
                                                                                                              (and x7204
                                                                                                                   x7203
                                                                                                                   x7200
                                                                                                                   x7197))))
                                                                                                    (letrec ((g7205
                                                                                                              (if val6895
                                                                                                                val6895
                                                                                                                (letrec ((x7221
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7220
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7206
                                                                                                                          (letrec ((n
                                                                                                                                    (vector-length
                                                                                                                                     a)))
                                                                                                                            (letrec ((g7207
                                                                                                                                      (letrec ((x7218
                                                                                                                                                (letrec ((x7219
                                                                                                                                                          (vector-length
                                                                                                                                                           b)))
                                                                                                                                                  (=
                                                                                                                                                   x7219
                                                                                                                                                   n)))
                                                                                                                                               (x7208
                                                                                                                                                (letrec ((loop
                                                                                                                                                          (lambda (i)
                                                                                                                                                            (letrec ((g7209
                                                                                                                                                                      (letrec ((x7216
                                                                                                                                                                                (=
                                                                                                                                                                                 i
                                                                                                                                                                                 n))
                                                                                                                                                                               (x7210
                                                                                                                                                                                (letrec ((x7213
                                                                                                                                                                                          (letrec ((x7215
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     a
                                                                                                                                                                                                     i))
                                                                                                                                                                                                   (x7214
                                                                                                                                                                                                    (vector-ref
                                                                                                                                                                                                     b
                                                                                                                                                                                                     i)))
                                                                                                                                                                                            (equal?
                                                                                                                                                                                             x7215
                                                                                                                                                                                             x7214)))
                                                                                                                                                                                         (x7211
                                                                                                                                                                                          (letrec ((x7212
                                                                                                                                                                                                    (+
                                                                                                                                                                                                     i
                                                                                                                                                                                                     1)))
                                                                                                                                                                                            (loop
                                                                                                                                                                                             x7212))))
                                                                                                                                                                                  (and x7213
                                                                                                                                                                                       x7211))))
                                                                                                                                                                        (or x7216
                                                                                                                                                                            x7210))))
                                                                                                                                                              g7209))))
                                                                                                                                                  (letrec ((g7217
                                                                                                                                                            (loop
                                                                                                                                                             0)))
                                                                                                                                                    g7217))))
                                                                                                                                        (and x7218
                                                                                                                                             x7208))))
                                                                                                                              g7207))))
                                                                                                                  (and x7221
                                                                                                                       x7220
                                                                                                                       x7206)))))
                                                                                                      g7205)))))
                                                                                        g7196)))))
                                                                          g7192)))))
                                                            g7189))))
                                                g7188)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7222
                                                        (letrec ((x7223
                                                                  (letrec ((x7224
                                                                            (letrec ((x7225
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7225))))
                                                                    (car
                                                                     x7224))))
                                                          (cdr x7223))))
                                                g7222)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7226
                                                        (letrec ((x7227
                                                                  (letrec ((x7228
                                                                            (letrec ((x7229
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7229))))
                                                                    (car
                                                                     x7228))))
                                                          (car x7227))))
                                                g7226)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7230 (eq? x y)))
                                                g7230)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7231
                                                        (letrec ((x7233
                                                                  (number? x)))
                                                          (assert x7233)))
                                                       (g7232
                                                        (letrec ((val6896
                                                                  (> x y)))
                                                          (letrec ((g7234
                                                                    (if val6896
                                                                      val6896
                                                                      (letrec ((val6897
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7235
                                                                                  (if val6897
                                                                                    val6897
                                                                                    #f)))
                                                                          g7235)))))
                                                            g7234))))
                                                g7232)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7236
                                                        (letrec ((x7239
                                                                  (string?
                                                                   filename)))
                                                          (assert x7239)))
                                                       (g7237
                                                        (letrec ((x7240
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7240)))
                                                       (g7238
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7241
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7242 res))
                                                            g7242))))
                                                g7238)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7243 (cons x '())))
                                                g7243)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7244
                                                        (letrec ((x7247
                                                                  (char? c1)))
                                                          (assert x7247)))
                                                       (g7245
                                                        (letrec ((x7248
                                                                  (char? c2)))
                                                          (assert x7248)))
                                                       (g7246
                                                        (letrec ((val6898
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7249
                                                                    (if val6898
                                                                      val6898
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7249))))
                                                g7246)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7250
                                                        (letrec ((x7251
                                                                  (letrec ((x7252
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7252))))
                                                          (cdr x7251))))
                                                g7250)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7253
                                                        (letrec ((x7254
                                                                  (letrec ((x7255
                                                                            (letrec ((x7256
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7256))))
                                                                    (car
                                                                     x7255))))
                                                          (cdr x7254))))
                                                g7253)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7257
                                                        (letrec ((x7258
                                                                  (letrec ((x7259
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7259))))
                                                          (car x7258))))
                                                g7257)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7260
                                                        (letrec ((x7261
                                                                  (letrec ((x7262
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7262))))
                                                          (car x7261))))
                                                g7260)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7263
                                                        (letrec ((x7266
                                                                  (char? c1)))
                                                          (assert x7266)))
                                                       (g7264
                                                        (letrec ((x7267
                                                                  (char? c2)))
                                                          (assert x7267)))
                                                       (g7265
                                                        (letrec ((x7268
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7268))))
                                                g7265)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7269
                                                        (letrec ((x7270
                                                                  (letrec ((x7271
                                                                            (letrec ((x7272
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7272))))
                                                                    (car
                                                                     x7271))))
                                                          (car x7270))))
                                                g7269)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7273
                                                        (letrec ((x7275
                                                                  (number? x)))
                                                          (assert x7275)))
                                                       (g7274 (< x 0)))
                                                g7274)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7276 (memq e l)))
                                                g7276)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7277
                                                        (letrec ((x7278
                                                                  (letrec ((x7279
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7279))))
                                                          (car x7278))))
                                                g7277)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7280 '())) g7280)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7281
                                                        (letrec ((x7283
                                                                  (list? l)))
                                                          (assert x7283)))
                                                       (g7282
                                                        (letrec ((x-cnd7284
                                                                  (null? l)))
                                                          (if x-cnd7284
                                                            '()
                                                            (letrec ((x7287
                                                                      (letrec ((x7288
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7288)))
                                                                     (x7285
                                                                      (letrec ((x7286
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7286))))
                                                              (append
                                                               x7287
                                                               x7285))))))
                                                g7282)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7289
                                                        (letrec ((x7290
                                                                  (letrec ((x7291
                                                                            (letrec ((x7292
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7292))))
                                                                    (car
                                                                     x7291))))
                                                          (car x7290))))
                                                g7289)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7293
                                                        (letrec ((x7294
                                                                  (letrec ((x7295
                                                                            (letrec ((x7296
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7296))))
                                                                    (cdr
                                                                     x7295))))
                                                          (cdr x7294))))
                                                g7293)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7297
                                                        (letrec ((x7299
                                                                  (number? x)))
                                                          (assert x7299)))
                                                       (g7298
                                                        (letrec ((x7300
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7300))))
                                                g7298)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7301
                                                        (letrec ((x7302
                                                                  (letrec ((x7303
                                                                            (letrec ((x7304
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7304))))
                                                                    (car
                                                                     x7303))))
                                                          (car x7302))))
                                                g7301)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7305
                                                        (letrec ((x7308
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7308)))
                                                       (g7306
                                                        (letrec ((x7309
                                                                  (list?
                                                                   args)))
                                                          (assert x7309)))
                                                       (g7307
                                                        (if cnd
                                                          (letrec ((g7310
                                                                    (proc)))
                                                            g7310)
                                                          (if cnd
                                                            (letrec ((g7311
                                                                      (letrec ((x7312
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7312))))
                                                              g7311)
                                                            (if cnd
                                                              (letrec ((g7313
                                                                        (letrec ((x7315
                                                                                  (car
                                                                                   args))
                                                                                 (x7314
                                                                                  (cadr
                                                                                   args)))
                                                                          (proc
                                                                           x7315
                                                                           x7314))))
                                                                g7313)
                                                              (if cnd
                                                                (letrec ((g7316
                                                                          (letrec ((x7319
                                                                                    (car
                                                                                     args))
                                                                                   (x7318
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7317
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7319
                                                                             x7318
                                                                             x7317))))
                                                                  g7316)
                                                                (if cnd
                                                                  (letrec ((g7320
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
                                                                                       args)))
                                                                              (proc
                                                                               x7324
                                                                               x7323
                                                                               x7322
                                                                               x7321))))
                                                                    g7320)
                                                                  (if cnd
                                                                    (letrec ((g7325
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
                                                                                         args))
                                                                                       (x7326
                                                                                        (letrec ((x7327
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7327))))
                                                                                (proc
                                                                                 x7331
                                                                                 x7330
                                                                                 x7329
                                                                                 x7328
                                                                                 x7326))))
                                                                      g7325)
                                                                    (if cnd
                                                                      (letrec ((g7332
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
                                                                                             x7334))))
                                                                                  (proc
                                                                                   x7340
                                                                                   x7339
                                                                                   x7338
                                                                                   x7337
                                                                                   x7335
                                                                                   x7333))))
                                                                        g7332)
                                                                      (if cnd
                                                                        (letrec ((g7341
                                                                                  (letrec ((x7351
                                                                                            (car
                                                                                             args))
                                                                                           (x7350
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7349
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7348
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7346
                                                                                            (letrec ((x7347
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7347)))
                                                                                           (x7344
                                                                                            (letrec ((x7345
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7345)))
                                                                                           (x7342
                                                                                            (letrec ((x7343
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7343))))
                                                                                    (proc
                                                                                     x7351
                                                                                     x7350
                                                                                     x7349
                                                                                     x7348
                                                                                     x7346
                                                                                     x7344
                                                                                     x7342))))
                                                                          g7341)
                                                                        (letrec ((g7352
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7352)))))))))))
                                                g7307)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7353
                                                        (letrec ((x7355
                                                                  (list? l)))
                                                          (assert x7355)))
                                                       (g7354
                                                        (letrec ((x-cnd7356
                                                                  (null? l)))
                                                          (if x-cnd7356
                                                            #f
                                                            (letrec ((x-cnd7357
                                                                      (letrec ((x7358
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7358
                                                                         e))))
                                                              (if x-cnd7357
                                                                l
                                                                (letrec ((x7359
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7359))))))))
                                                g7354)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7360
                                                        (letrec ((x7361
                                                                  (letrec ((x7362
                                                                            (letrec ((x7363
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7363))))
                                                                    (cdr
                                                                     x7362))))
                                                          (cdr x7361))))
                                                g7360)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7364
                                                        (letrec ((x7365
                                                                  (letrec ((x7366
                                                                            (letrec ((x7367
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7367))))
                                                                    (cdr
                                                                     x7366))))
                                                          (car x7365))))
                                                g7364)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7368 (random 42)))
                                                g7368)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7369
                                                        (letrec ((x7371
                                                                  (number? x)))
                                                          (assert x7371)))
                                                       (g7370 (= x 0)))
                                                g7370)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7372
                                                        (letrec ((val6899
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7373
                                                                    (if val6899
                                                                      val6899
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7373))))
                                                g7372)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7374
                                                        (letrec ((x7375
                                                                  (cdr x)))
                                                          (car x7375))))
                                                g7374)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7376
                                                        (letrec ((val6900
                                                                  (letrec ((x7379
                                                                            (pair?
                                                                             l))
                                                                           (x7377
                                                                            (letrec ((x7378
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7378))))
                                                                    (and x7379
                                                                         x7377))))
                                                          (letrec ((g7380
                                                                    (if val6900
                                                                      val6900
                                                                      (null?
                                                                       l))))
                                                            g7380))))
                                                g7376)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7381
                                                        (letrec ((x7382
                                                                  (letrec ((x7383
                                                                            (letrec ((x7384
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7384))))
                                                                    (cdr
                                                                     x7383))))
                                                          (cdr x7382))))
                                                g7381)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7385
                                                        (letrec ((x-cnd7386
                                                                  (letrec ((x7387
                                                                            #\0))
                                                                    (char<=?
                                                                     x7387
                                                                     c))))
                                                          (if x-cnd7386
                                                            (letrec ((x7388
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7388))
                                                            #f))))
                                                g7385)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7389
                                                        (letrec ((x7391
                                                                  (list? l)))
                                                          (assert x7391)))
                                                       (g7390
                                                        (letrec ((x-cnd7392
                                                                  (null? l)))
                                                          (if x-cnd7392
                                                            #f
                                                            (letrec ((x-cnd7393
                                                                      (letrec ((x7394
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7394
                                                                         k))))
                                                              (if x-cnd7393
                                                                (car l)
                                                                (letrec ((x7395
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7395))))))))
                                                g7390)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7396 (if x #f #t)))
                                                g7396)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7397 (append l1 l2)))
                                                g7397)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7398
                                                        (letrec ((x7400
                                                                  (list? l)))
                                                          (assert x7400)))
                                                       (g7399
                                                        (letrec ((x-cnd7401
                                                                  (null? l)))
                                                          (if x-cnd7401
                                                            #f
                                                            (letrec ((x-cnd7402
                                                                      (letrec ((x7403
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7403
                                                                         e))))
                                                              (if x-cnd7402
                                                                l
                                                                (letrec ((x7404
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7404))))))))
                                                g7399)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7405
                                                        (letrec ((x7406
                                                                  (letrec ((x7407
                                                                            (letrec ((x7408
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7408))))
                                                                    (cdr
                                                                     x7407))))
                                                          (car x7406))))
                                                g7405)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7409
                                                        (letrec ((x7411
                                                                  (list? l)))
                                                          (assert x7411)))
                                                       (g7410
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7412
                                                                              (letrec ((x-cnd7413
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7413
                                                                                  0
                                                                                  (letrec ((x7414
                                                                                            (letrec ((x7415
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7415))))
                                                                                    (+
                                                                                     1
                                                                                     x7414))))))
                                                                      g7412))))
                                                          (letrec ((g7416
                                                                    (rec l)))
                                                            g7416))))
                                                g7410)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7417
                                                        (letrec ((x7420
                                                                  (char? c1)))
                                                          (assert x7420)))
                                                       (g7418
                                                        (letrec ((x7421
                                                                  (char? c2)))
                                                          (assert x7421)))
                                                       (g7419
                                                        (letrec ((val6901
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7422
                                                                    (if val6901
                                                                      val6901
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7422))))
                                                g7419)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7423
                                                        (letrec ((x7424
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7424))))
                                                g7423)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7425
                                                        (letrec ((x7426
                                                                  (letrec ((x7427
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7427))))
                                                          (cdr x7426))))
                                                g7425)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7428
                                                        (letrec ((x7430
                                                                  (list? l)))
                                                          (assert x7430)))
                                                       (g7429
                                                        (letrec ((x-cnd7431
                                                                  (null? l)))
                                                          (if x-cnd7431
                                                            #f
                                                            (letrec ((x-cnd7432
                                                                      (letrec ((x7433
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7433
                                                                         k))))
                                                              (if x-cnd7432
                                                                (car l)
                                                                (letrec ((x7434
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7434))))))))
                                                g7429)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7435
                                                        (letrec ((x7436
                                                                  (car x)))
                                                          (car x7436))))
                                                g7435)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7437
                                                        (letrec ((x7440
                                                                  (char? c1)))
                                                          (assert x7440)))
                                                       (g7438
                                                        (letrec ((x7441
                                                                  (char? c2)))
                                                          (assert x7441)))
                                                       (g7439
                                                        (letrec ((x7442
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7442))))
                                                g7439)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7443
                                                        (letrec ((val6902
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7444
                                                                    (if val6902
                                                                      val6902
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7444))))
                                                g7443)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7445
                                                        (letrec ((x7448
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7448)))
                                                       (g7446
                                                        (letrec ((x7449
                                                                  (list? l)))
                                                          (assert x7449)))
                                                       (g7447
                                                        (letrec ((x-cnd7450
                                                                  (null? l)))
                                                          (if x-cnd7450
                                                            #t
                                                            (letrec ((x-cnd7451
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7451
                                                                (letrec ((g7452
                                                                          (letrec ((x7454
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7454)))
                                                                         (g7453
                                                                          (letrec ((x7455
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7455))))
                                                                  g7453)
                                                                '()))))))
                                                g7447)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7456
                                                        (letrec ((x7458
                                                                  (number? x)))
                                                          (assert x7458)))
                                                       (g7457
                                                        (letrec ((x-cnd7459
                                                                  (< x 0)))
                                                          (if x-cnd7459
                                                            (- 0 x)
                                                            x))))
                                                g7457)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7460
                                                        (letrec ((x7463
                                                                  (char? c1)))
                                                          (assert x7463)))
                                                       (g7461
                                                        (letrec ((x7464
                                                                  (char? c2)))
                                                          (assert x7464)))
                                                       (g7462
                                                        (letrec ((val6903
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7465
                                                                    (if val6903
                                                                      val6903
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7465))))
                                                g7462)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7466
                                                        (letrec ((x7467
                                                                  (letrec ((x7468
                                                                            (letrec ((x7469
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7469))))
                                                                    (cdr
                                                                     x7468))))
                                                          (car x7467))))
                                                g7466)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7470 #f)) g7470)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7471
                                                        (letrec ((x7473
                                                                  (letrec ((x7474
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7474)))
                                                                 (x7472
                                                                  (gcd m n)))
                                                          (/ x7473 x7472))))
                                                g7471)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7475
                                                        (letrec ((x7477
                                                                  (number? x)))
                                                          (assert x7477)))
                                                       (g7476
                                                        (letrec ((x7478
                                                                  (<= x y)))
                                                          (not x7478))))
                                                g7476)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7479
                                                        (letrec ((x7483
                                                                  (list? l)))
                                                          (assert x7483)))
                                                       (g7480
                                                        (letrec ((x7484
                                                                  (number?
                                                                   index)))
                                                          (assert x7484)))
                                                       (g7481
                                                        (letrec ((x7485
                                                                  (letrec ((x7486
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7486))))
                                                          (assert x7485)))
                                                       (g7482
                                                        (letrec ((x-cnd7487
                                                                  (= index 0)))
                                                          (if x-cnd7487
                                                            (car l)
                                                            (letrec ((x7489
                                                                      (cdr l))
                                                                     (x7488
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7489
                                                               x7488))))))
                                                g7482)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7490
                                                        (letrec ((x-cnd7491
                                                                  (= b 0)))
                                                          (if x-cnd7491
                                                            a
                                                            (letrec ((x7492
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7492))))))
                                                g7490)))
                                           (mult
                                            (lambda (n m)
                                              (letrec ((g7493
                                                        (letrec ((x-cnd7494
                                                                  (letrec ((val6904
                                                                            (<=
                                                                             n
                                                                             0)))
                                                                    (letrec ((g7495
                                                                              (if val6904
                                                                                val6904
                                                                                (<=
                                                                                 m
                                                                                 0))))
                                                                      g7495))))
                                                          (if x-cnd7494
                                                            0
                                                            (letrec ((x7496
                                                                      (letrec ((x7497
                                                                                (-
                                                                                 m
                                                                                 1)))
                                                                        (mult
                                                                         n
                                                                         x7497))))
                                                              (+ n x7496))))))
                                                g7493)))
                                           (sqr
                                            (lambda (n)
                                              (letrec ((g7498 (mult n n)))
                                                g7498))))
                                    (letrec ((g7499
                                              (letrec ((x7503
                                                        ((lambda (j6976
                                                                  k6977
                                                                  f6978)
                                                           (letrec ((g7504
                                                                     (lambda (g6974
                                                                              g6975)
                                                                       (letrec ((g7505
                                                                                 (letrec ((x7509
                                                                                           (letrec ((x7510
                                                                                                     (>=/c
                                                                                                      0)))
                                                                                             (and/c
                                                                                              integer?/c
                                                                                              x7510)))
                                                                                          (x7506
                                                                                           (letrec ((x7508
                                                                                                     (integer?/c
                                                                                                      j6976
                                                                                                      k6977
                                                                                                      g6974))
                                                                                                    (x7507
                                                                                                     (integer?/c
                                                                                                      j6976
                                                                                                      k6977
                                                                                                      g6975)))
                                                                                             (f6978
                                                                                              x7508
                                                                                              x7507))))
                                                                                   (x7509
                                                                                    j6976
                                                                                    k6977
                                                                                    x7506))))
                                                                         g7505))))
                                                             g7504))
                                                         'module
                                                         'importer
                                                         mult))
                                                       (x7502 (input))
                                                       (x7501 (input)))
                                                (x7503 x7502 x7501)))
                                             (g7500
                                              ((lambda (j6980 k6981 f6982)
                                                 (letrec ((g7511
                                                           (lambda (g6979)
                                                             (letrec ((g7512
                                                                       (letrec ((x6983
                                                                                 (integer?/c
                                                                                  j6980
                                                                                  k6981
                                                                                  g6979)))
                                                                         (letrec ((g7513
                                                                                   (letrec ((x7515
                                                                                             ((lambda (n)
                                                                                                (letrec ((g7516
                                                                                                          (letrec ((x7517
                                                                                                                    (>=/c
                                                                                                                     n)))
                                                                                                            (and/c
                                                                                                             integer?/c
                                                                                                             x7517))))
                                                                                                  g7516))
                                                                                              x6983))
                                                                                            (x7514
                                                                                             (f6982
                                                                                              x6983)))
                                                                                     (x7515
                                                                                      j6980
                                                                                      k6981
                                                                                      x7514))))
                                                                           g7513))))
                                                               g7512))))
                                                   g7511))
                                               'module
                                               'importer
                                               sqr)))
                                      g7500))))
                          g6997))))
              g6995)))
    g6994))
