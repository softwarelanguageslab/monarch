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
                                                                                                                (letrec ((x7224
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7223
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7206
                                                                                                                          (letrec ((x7220
                                                                                                                                    (letrec ((x7221
                                                                                                                                              (letrec ((x7222
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7222))))
                                                                                                                                      (x7221)))
                                                                                                                                   (x7207
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
                                                                                                                            (let x7220 x7207))))
                                                                                                                  (and x7224
                                                                                                                       x7223
                                                                                                                       x7206)))))
                                                                                                      g7205)))))
                                                                                        g7196)))))
                                                                          g7192)))))
                                                            g7189))))
                                                g7188)))
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
                                           (mult
                                            (lambda (n m)
                                              (letrec ((g7496
                                                        (letrec ((x-cnd7497
                                                                  (letrec ((val6904
                                                                            (<=
                                                                             n
                                                                             0)))
                                                                    (letrec ((g7498
                                                                              (if val6904
                                                                                val6904
                                                                                (<=
                                                                                 m
                                                                                 0))))
                                                                      g7498))))
                                                          (if x-cnd7497
                                                            0
                                                            (letrec ((x7499
                                                                      (letrec ((x7500
                                                                                (-
                                                                                 m
                                                                                 1)))
                                                                        (mult
                                                                         n
                                                                         x7500))))
                                                              (+ n x7499))))))
                                                g7496)))
                                           (sqr
                                            (lambda (n)
                                              (letrec ((g7501 (mult n n)))
                                                g7501))))
                                    (letrec ((g7502
                                              (letrec ((x7506
                                                        ((lambda (j6976
                                                                  k6977
                                                                  f6978)
                                                           (letrec ((g7507
                                                                     (lambda (g6974
                                                                              g6975)
                                                                       (letrec ((g7508
                                                                                 (letrec ((x7512
                                                                                           (letrec ((x7513
                                                                                                     (>=/c
                                                                                                      0)))
                                                                                             (and/c
                                                                                              integer?/c
                                                                                              x7513)))
                                                                                          (x7509
                                                                                           (letrec ((x7511
                                                                                                     (integer?/c
                                                                                                      j6976
                                                                                                      k6977
                                                                                                      g6974))
                                                                                                    (x7510
                                                                                                     (integer?/c
                                                                                                      j6976
                                                                                                      k6977
                                                                                                      g6975)))
                                                                                             (f6978
                                                                                              x7511
                                                                                              x7510))))
                                                                                   (x7512
                                                                                    j6976
                                                                                    k6977
                                                                                    x7509))))
                                                                         g7508))))
                                                             g7507))
                                                         'module
                                                         'importer
                                                         mult))
                                                       (x7505 (input))
                                                       (x7504 (input)))
                                                (x7506 x7505 x7504)))
                                             (g7503
                                              ((lambda (j6980 k6981 f6982)
                                                 (letrec ((g7514
                                                           (lambda (g6979)
                                                             (letrec ((g7515
                                                                       (letrec ((x6983
                                                                                 (integer?/c
                                                                                  j6980
                                                                                  k6981
                                                                                  g6979)))
                                                                         (letrec ((g7516
                                                                                   (letrec ((x7518
                                                                                             ((lambda (n)
                                                                                                (letrec ((g7519
                                                                                                          (letrec ((x7520
                                                                                                                    (>=/c
                                                                                                                     n)))
                                                                                                            (and/c
                                                                                                             integer?/c
                                                                                                             x7520))))
                                                                                                  g7519))
                                                                                              x6983))
                                                                                            (x7517
                                                                                             (f6982
                                                                                              x6983)))
                                                                                     (x7518
                                                                                      j6980
                                                                                      k6981
                                                                                      x7517))))
                                                                           g7516))))
                                                               g7515))))
                                                   g7514))
                                               'module
                                               'importer
                                               sqr)))
                                      g7503))))
                          g6997))))
              g6995)))
    g6994))
