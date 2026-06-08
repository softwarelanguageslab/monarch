#lang simpleactor
(letrec ((any? (lambda (v) #t))
         (meta (lambda (v) v))
         (member
          (lambda (v lst)
            (begin
              (match
               lst
               (((list) #f)
                ((pair v1 vs) (if (eq? v v1) #t (member v vs))))))))
         (loopy-actor
          (lambda ()
            (receive
             (((cons rcv msg) (send^ rcv msg) (loopy-actor))
              ('finish (terminate))))))
         (unconstrained/c (lambda payload (lambda j (spawn^ (loopy-actor)))))
         (actor? (lambda (k j v) v))
         (nonzero? (lambda (v) (not (= v 0)))))
  (begin
    (letrec ((assert (lambda (cnd) (if cnd '() (error "assertion failed"))))
             (>=
              (lambda (x y)
                (assert (number? x))
                (letrec ((val10026 (> x y)))
                  (if val10026
                    val10026
                    (letrec ((val10027 (= x y))) (if val10027 val10027 #f))))))
             (<=
              (lambda (x y)
                (assert (number? x))
                (letrec ((val10028 (< x y)))
                  (if val10028
                    val10028
                    (letrec ((val10029 (= x y))) (if val10029 val10029 #f))))))
             (> (lambda (x y) (assert (number? x)) (not (<= x y))))
             (orig-+ +)
             (orig-- -)
             (orig-* *)
             (orig-/ /)
             (orig-> >)
             (orig-< <)
             (orig-= =)
             (orig->= >=)
             (orig-<= <=)
             (orig-car car)
             (orig-cdr cdr)
             (orig-cons cons)
             (orig-vector-ref vector-ref)
             (orig-vector-set! vector-set!))
      '()
      (letrec ((empty '())
               (listof
                (lambda (contract)
                  (lambda (k j lst) (map (lambda (v) (contract k j v)) lst))))
               (real?/c
                (lambda (g10045 g10046 g10047)
                  (if (real? g10047)
                    g10047
                    (blame
                     g10045
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       40
                       19)))))
               (boolean?/c
                (lambda (g10048 g10049 g10050)
                  (if (boolean? g10050)
                    g10050
                    (blame
                     g10048
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       41
                       22)))))
               (number?/c
                (lambda (g10051 g10052 g10053)
                  (if (number? g10053)
                    g10053
                    (blame
                     g10051
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       42
                       21)))))
               (any/c
                (lambda (g10054 g10055 g10056)
                  (if ((lambda (v) #t) g10056)
                    g10056
                    (blame
                     g10054
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       43
                       17)))))
               (any?/c
                (lambda (g10057 g10058 g10059)
                  (if ((lambda (v) #t) g10059)
                    g10059
                    (blame
                     g10057
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       44
                       18)))))
               (cons?/c
                (lambda (g10060 g10061 g10062)
                  (if (pair? g10062)
                    g10062
                    (blame
                     g10060
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       45
                       19)))))
               (cons/c
                (lambda (k1 k2)
                  (lambda (k j v) (cons (k1 k j (car v)) (k2 k j (cdr v))))))
               (pair?/c
                (lambda (g10063 g10064 g10065)
                  (if (pair? g10065)
                    g10065
                    (blame
                     g10063
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       50
                       19)))))
               (integer?/c
                (lambda (g10066 g10067 g10068)
                  (if (integer? g10068)
                    g10068
                    (blame
                     g10066
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       51
                       22)))))
               (symbol?/c
                (lambda (g10069 g10070 g10071)
                  (if (symbol? g10071)
                    g10071
                    (blame
                     g10069
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       52
                       21)))))
               (string?/c
                (lambda (g10072 g10073 g10074)
                  (if (string? g10074)
                    g10074
                    (blame
                     g10072
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       53
                       21)))))
               (and/c
                (lambda (c1 c2)
                  (lambda (k j v) (if (c1 k j v) (c2 k j v) #f))))
               (or/c
                (lambda (c1 c2)
                  (lambda (k j v)
                    (letrec ((val10030 (c1 k j v)))
                      (if val10030 val10030 (c2 k j v))))))
               (null?/c
                (lambda (g10075 g10076 g10077)
                  (if (null? g10077)
                    g10077
                    (blame
                     g10075
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       60
                       19)))))
               (list-of
                (lambda (contract)
                  (lambda (k j v)
                    (if (null? v)
                      '()
                      (orig-cons
                       (contract k j (car v))
                       ((list-of contract) k j (cdr v)))))))
               (any? (lambda (v) #t))
               (nonzero? (lambda (v) (not (= v 0))))
               (nonzero?/c
                (lambda (g10078 g10079 g10080)
                  (if ((lambda (v) (not (= v 0))) g10080)
                    g10080
                    (blame
                     g10078
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       68
                       22)))))
               (>=/c
                (lambda (n)
                  (lambda (g10081 g10082 g10083)
                    (if ((lambda (v) (orig->= v n)) g10083)
                      g10083
                      (blame
                       g10081
                       '(position-in-file-loc
                         "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                         69
                         20))))))
               (>/c
                (lambda (n)
                  (lambda (g10084 g10085 g10086)
                    (if ((lambda (v) (orig-> v n)) g10086)
                      g10086
                      (blame
                       g10084
                       '(position-in-file-loc
                         "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                         70
                         19))))))
               (</c
                (lambda (n)
                  (lambda (g10087 g10088 g10089)
                    (if ((lambda (v) (orig-< v n)) g10089)
                      g10089
                      (blame
                       g10087
                       '(position-in-file-loc
                         "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                         71
                         19))))))
               (<=/c
                (lambda (n)
                  (lambda (g10090 g10091 g10092)
                    (if ((lambda (v) (orig-<= v n)) g10092)
                      g10092
                      (blame
                       g10090
                       '(position-in-file-loc
                         "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                         72
                         20))))))
               (=/c
                (lambda (n)
                  (lambda (g10093 g10094 g10095)
                    (if ((lambda (v) (orig-= v n)) g10095)
                      g10095
                      (blame
                       g10093
                       '(position-in-file-loc
                         "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                         73
                         19))))))
               (string=?/c
                (lambda (s)
                  (lambda (g10096 g10097 g10098)
                    (if ((lambda (v) (string=? s v)) g10098)
                      g10098
                      (blame
                       g10096
                       '(position-in-file-loc
                         "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                         74
                         26))))))
               (meta (lambda (v) v))
               (+
                (letrec ((xj10099 'server) (xk10100 'client))
                  ((lambda (j10103 k10104 f10105)
                     (lambda (g10101 g10102)
                       (number?/c
                        j10103
                        k10104
                        (f10105
                         (number?/c k10104 j10103 g10101)
                         (number?/c k10104 j10103 g10102)))))
                   xj10099
                   xk10100
                   (lambda (a b) (orig-+ a b)))))
               (-
                (letrec ((xj10106 'server) (xk10107 'client))
                  ((lambda (j10110 k10111 f10112)
                     (lambda (g10108 g10109)
                       (number?/c
                        j10110
                        k10111
                        (f10112
                         (number?/c k10111 j10110 g10108)
                         (number?/c k10111 j10110 g10109)))))
                   xj10106
                   xk10107
                   (lambda (a b) (orig-- a b)))))
               (*
                (letrec ((xj10113 'server) (xk10114 'client))
                  ((lambda (j10117 k10118 f10119)
                     (lambda (g10115 g10116)
                       (number?/c
                        j10117
                        k10118
                        (f10119
                         (number?/c k10118 j10117 g10115)
                         (number?/c k10118 j10117 g10116)))))
                   xj10113
                   xk10114
                   (lambda (a b) (orig-* a b)))))
               (<
                (letrec ((xj10120 'server) (xk10121 'client))
                  ((lambda (j10124 k10125 f10126)
                     (lambda (g10122 g10123)
                       (boolean?/c
                        j10124
                        k10125
                        (f10126
                         (number?/c k10125 j10124 g10122)
                         (number?/c k10125 j10124 g10123)))))
                   xj10120
                   xk10121
                   (lambda (a b) (orig-< a b)))))
               (>
                (letrec ((xj10127 'server) (xk10128 'client))
                  ((lambda (j10131 k10132 f10133)
                     (lambda (g10129 g10130)
                       (boolean?/c
                        j10131
                        k10132
                        (f10133
                         (number?/c k10132 j10131 g10129)
                         (number?/c k10132 j10131 g10130)))))
                   xj10127
                   xk10128
                   (lambda (a b) (orig-> a b)))))
               (<=
                (letrec ((xj10134 'server) (xk10135 'client))
                  ((lambda (j10138 k10139 f10140)
                     (lambda (g10136 g10137)
                       (boolean?/c
                        j10138
                        k10139
                        (f10140
                         (number?/c k10139 j10138 g10136)
                         (number?/c k10139 j10138 g10137)))))
                   xj10134
                   xk10135
                   (lambda (a b) (orig-<= a b)))))
               (>=
                (letrec ((xj10141 'server) (xk10142 'client))
                  ((lambda (j10145 k10146 f10147)
                     (lambda (g10143 g10144)
                       (boolean?/c
                        j10145
                        k10146
                        (f10147
                         (number?/c k10146 j10145 g10143)
                         (number?/c k10146 j10145 g10144)))))
                   xj10141
                   xk10142
                   (lambda (a b) (orig->= a b)))))
               (add1 (lambda (x) (+ x 1)))
               (/
                (letrec ((xj10148 'server) (xk10149 'client))
                  ((lambda (j10152 k10153 f10154)
                     (lambda (g10150 g10151)
                       (number?/c
                        j10152
                        k10153
                        (f10154
                         (number?/c k10153 j10152 g10150)
                         (number?/c k10153 j10152 g10151)))))
                   xj10148
                   xk10149
                   (lambda (a b) (orig-/ a b)))))
               (car
                (letrec ((xj10155 'server) (xk10156 'client))
                  ((lambda (g10157 g10158 g10159)
                     (lambda (g10160)
                       (any/c
                        g10157
                        g10158
                        (g10159 (pair?/c g10158 g10157 g10160)))))
                   xj10155
                   xk10156
                   (lambda (p) (orig-car p)))))
               (cdr
                (letrec ((xj10161 'server) (xk10162 'client))
                  ((lambda (g10163 g10164 g10165)
                     (lambda (g10166)
                       (any/c
                        g10163
                        g10164
                        (g10165 (pair?/c g10164 g10163 g10166)))))
                   xj10161
                   xk10162
                   (lambda (p) (orig-cdr p)))))
               (vector?/c
                (lambda (g10167 g10168 g10169)
                  (if (vector? g10169)
                    g10169
                    (blame
                     g10167
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       108
                       21)))))
               (vector-ref
                (letrec ((xj10170 'server) (xk10171 'client))
                  ((lambda (j10174 k10175 f10176)
                     (lambda (g10172 g10173)
                       (any/c
                        j10174
                        k10175
                        (f10176
                         (vector?/c k10175 j10174 g10172)
                         (integer?/c k10175 j10174 g10173)))))
                   xj10170
                   xk10171
                   (lambda (v i) (orig-vector-ref v i)))))
               (vector-set!
                (letrec ((xj10177 'server) (xk10178 'client))
                  ((lambda (j10182 k10183 f10184)
                     (lambda (g10179 g10180 g10181)
                       (any/c
                        j10182
                        k10183
                        (f10184
                         (vector?/c k10183 j10182 g10179)
                         (integer?/c k10183 j10182 g10180)
                         (any/c k10183 j10182 g10181)))))
                   xj10177
                   xk10178
                   (lambda (vec i v) (orig-vector-set! vec i v)))))
               (cdddr (lambda (x) (cdr (cdr (cdr x)))))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (assert (procedure? f))
                  (assert (list? l))
                  (if (null? l) '() (cons (f (car l)) (map f (cdr l))))))
               (cdar (lambda (x) (cdr (car x))))
               (cadadr (lambda (x) (car (cdr (car (cdr x))))))
               (cdadar (lambda (x) (cdr (car (cdr (car x))))))
               (call-with-output-file
                (lambda (filename proc)
                  (assert (string? filename))
                  (assert (procedure? proc))
                  (letrec ((output-port (open-output-file filename))
                           (res (proc output-port)))
                    (close-output-port output-port)
                    res)))
               (caddr (lambda (x) (car (cdr (cdr x)))))
               (cdaadr (lambda (x) (cdr (car (car (cdr x))))))
               (assq
                (lambda (k l)
                  (assert (list? l))
                  (if (null? l)
                    #f
                    (if (eq? (caar l) k) (car l) (assq k (cdr l))))))
               (even? (lambda (x) (= 0 (modulo x 2))))
               (char<=?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (letrec ((val10031 (char<? c1 c2)))
                    (if val10031 val10031 (char=? c1 c2)))))
               (cdddar (lambda (x) (cdr (cdr (cdr (car x))))))
               (list-tail
                (lambda (x k)
                  (assert (list? x))
                  (assert (number? k))
                  (if (zero? k) x (list-tail (cdr x) (- k 1)))))
               (halt (lambda () '()))
               (char-alphabetic?
                (lambda (c) (if (char-ci>=? c #\a) (char-ci<=? c #\z) #f)))
               (char-whitespace?
                (lambda (c)
                  (letrec ((val10032 (= (char->integer c) 9)))
                    (if val10032
                      val10032
                      (letrec ((val10033 (= (char->integer c) 10)))
                        (if val10033 val10033 (= (char->integer c) 32)))))))
               (cddar (lambda (x) (cdr (cdr (car x)))))
               (positive? (lambda (x) (assert (number? x)) (> x 0)))
               ($pc '())
               (ref-set set-car!)
               (void (lambda () #f))
               (cddr (lambda (x) (cdr (cdr x))))
               (truncate
                (lambda (x)
                  (assert (number? x))
                  (if (< x 0) (ceiling x) (floor x))))
               ($cmp '())
               (bool-top (lambda () (if (> (random) 0.5) #t #f)))
               (equal?
                (lambda (a b)
                  (letrec ((val10034 (eq? a b)))
                    (if val10034
                      val10034
                      (letrec ((val10035 (if (null? a) (null? b) #f)))
                        (if val10035
                          val10035
                          (letrec ((val10036
                                    (if (string? a)
                                      (if (string? b) (string=? a b) #f)
                                      #f)))
                            (if val10036
                              val10036
                              (letrec ((val10037
                                        (if (pair? a)
                                          (if (pair? b)
                                            (if (equal? (car a) (car b))
                                              (equal? (cdr a) (cdr b))
                                              #f)
                                            #f)
                                          #f)))
                                (if val10037
                                  val10037
                                  (if (vector? a)
                                    (if (vector? b)
                                      (letrec ((n (vector-length a)))
                                        (if (= (vector-length b) n)
                                          (letrec ((loop
                                                    (lambda (i)
                                                      (letrec ((val10038
                                                                (= i n)))
                                                        (if val10038
                                                          val10038
                                                          (if (equal?
                                                               (vector-ref a i)
                                                               (vector-ref
                                                                b
                                                                i))
                                                            (loop (+ i 1))
                                                            #f))))))
                                            (loop 0))
                                          #f))
                                      #f)
                                    #f)))))))))))
               (cdaaar (lambda (x) (cdr (car (car (car x))))))
               (caaddr (lambda (x) (car (car (cdr (cdr x))))))
               (eqv? (lambda (x y) (eq? x y)))
               (call-with-input-file
                (lambda (filename proc)
                  (assert (string? filename))
                  (assert (procedure? proc))
                  (letrec ((input-port (open-input-file filename))
                           (res (proc input-port)))
                    (close-input-port input-port)
                    res)))
               (ref (lambda (x) (cons x '())))
               (char>=?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (letrec ((val10039 (char>? c1 c2)))
                    (if val10039 val10039 (char=? c1 c2)))))
               (cdaar (lambda (x) (cdr (car (car x)))))
               (cdaddr (lambda (x) (cdr (car (cdr (cdr x))))))
               (__toplevel_cdr cdr)
               (cadar (lambda (x) (car (cdr (car x)))))
               (caadr (lambda (x) (car (car (cdr x)))))
               (char-ci>?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (not (char-ci<=? c1 c2))))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar (lambda (x) (car (car (car (car x))))))
               (negative? (lambda (x) (assert (number? x)) (< x 0)))
               (memv (lambda (e l) (memq e l)))
               (caaar (lambda (x) (car (car (car x)))))
               (debug (lambda (e) '()))
               (reverse
                (lambda (l)
                  (assert (list? l))
                  (if (null? l)
                    '()
                    (append (reverse (cdr l)) (list (car l))))))
               (caaadr (lambda (x) (car (car (car (cdr x))))))
               (cddadr (lambda (x) (cdr (cdr (car (cdr x))))))
               (odd? (lambda (x) (assert (number? x)) (= 1 (modulo x 2))))
               (caadar (lambda (x) (car (car (cdr (car x))))))
               (apply
                (lambda (proc args)
                  (assert (procedure? proc))
                  (assert (list? args))
                  (if (null? args)
                    (begin (proc))
                    (if (null? (cdr args))
                      (begin (proc (car args)))
                      (if (null? (cddr args))
                        (begin (proc (car args) (cadr args)))
                        (if (null? (cdddr args))
                          (begin (proc (car args) (cadr args) (caddr args)))
                          (if (null? (cddddr args))
                            (begin
                              (proc
                               (car args)
                               (cadr args)
                               (caddr args)
                               (cadddr args)))
                            (if (null? (cdr (cddddr args)))
                              (begin
                                (proc
                                 (car args)
                                 (cadr args)
                                 (caddr args)
                                 (cadddr args)
                                 (car (cddddr args))))
                              (if (null? (cddr (cddddr args)))
                                (begin
                                  (proc
                                   (car args)
                                   (cadr args)
                                   (caddr args)
                                   (cadddr args)
                                   (car (cddddr args))
                                   (cadr (cddddr args))))
                                (if (null? (cdddr (cddddr args)))
                                  (begin
                                    (proc
                                     (car args)
                                     (cadr args)
                                     (caddr args)
                                     (cadddr args)
                                     (car (cddddr args))
                                     (cadr (cddddr args))
                                     (caddr (cddddr args))))
                                  (begin (error "Unsupported call."))))))))))))
               (member
                (lambda (e l)
                  (assert (list? l))
                  (if (null? l)
                    #f
                    (if (equal? (car l) e) #t (member e (cdr l))))))
               (cddddr (lambda (x) (cdr (cdr (cdr (cdr x))))))
               (cadddr (lambda (x) (car (cdr (cdr (cdr x))))))
               (int-top (lambda () (random 42)))
               (zero? (lambda (x) (assert (number? x)) (= x 0)))
               (string>=?
                (lambda (s1 s2)
                  (letrec ((val10040 (string>? s1 s2)))
                    (if val10040 val10040 (string=? s1 s2)))))
               (cadr (lambda (x) (car (cdr x))))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec ((val10041 (if (pair? l) (list? (cdr l)) #f)))
                    (if val10041 val10041 (null? l)))))
               (cddaar (lambda (x) (cdr (cdr (car (car x))))))
               (char-numeric?
                (lambda (c) (if (char<=? #\0 c) (char<=? c #\9) #f)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (assert (list? l))
                  (if (null? l)
                    #f
                    (if (eqv? (caar l) k) (car l) (assq k (cdr l))))))
               (not (lambda (x) (if x #f #t)))
               (__toplevel_append (lambda (l1 l2) (append l1 l2)))
               (memq
                (lambda (e l)
                  (assert (list? l))
                  (if (null? l) #f (if (eq? (car l) e) l (memq e (cdr l))))))
               (cadaar (lambda (x) (car (cdr (car (car x))))))
               (length
                (lambda (l)
                  (assert (list? l))
                  (letrec ((rec
                            (lambda (l) (if (null? l) 0 (+ 1 (rec (cdr l)))))))
                    (rec l))))
               (char-ci<=?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (letrec ((val10042 (char-ci<? c1 c2)))
                    (if val10042 val10042 (char-ci=? c1 c2)))))
               (string>? (lambda (s1 s2) (not (string<=? s1 s2))))
               (cdadr (lambda (x) (cdr (car (cdr x)))))
               (assoc
                (lambda (k l)
                  (assert (list? l))
                  (if (null? l)
                    #f
                    (if (equal? (caar l) k) (car l) (assoc k (cdr l))))))
               (caar (lambda (x) (car (car x))))
               (char>?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (not (char<=? c1 c2))))
               (string<=?
                (lambda (s1 s2)
                  (letrec ((val10043 (string<? s1 s2)))
                    (if val10043 val10043 (string=? s1 s2)))))
               (for-each
                (lambda (f l)
                  (assert (procedure? f))
                  (assert (list? l))
                  (if (null? l)
                    #t
                    (if (pair? l)
                      (begin (f (car l)) (for-each f (cdr l)))
                      '()))))
               (abs (lambda (x) (assert (number? x)) (if (< x 0) (- 0 x) x)))
               (char-ci>=?
                (lambda (c1 c2)
                  (assert (char? c1))
                  (assert (char? c2))
                  (letrec ((val10044 (char-ci>? c1 c2)))
                    (if val10044 val10044 (char-ci=? c1 c2)))))
               (caddar (lambda (x) (car (cdr (cdr (car x))))))
               (newline (lambda () #f))
               (lcm (lambda (m n) (/ (abs (* m n)) (gcd m n))))
               (deref car)
               (list-ref
                (lambda (l index)
                  (assert (list? l))
                  (assert (number? index))
                  (assert (< index (length l)))
                  (if (= index 0) (car l) (list-ref (cdr l) (- index 1)))))
               (gcd (lambda (a b) (if (= b 0) a (gcd b (modulo a b)))))
               (remassoc
                (lambda (key lst)
                  (if (null? lst)
                    '()
                    (if (eq? key (car (car lst)))
                      (remassoc key (cdr lst))
                      (cons (car lst) (remassoc key (cdr lst)))))))
               (add-client
                (lambda (client correlation-identifier clients)
                  (cons (cons correlation-identifier client) clients)))
               (find-client
                (lambda (correlation-identifier clients)
                  (letrec ((element (assoc correlation-identifier clients)))
                    (if element
                      (cdr element)
                      (error
                       (format
                        "could not find client with the given correlation identifier ~a"
                        correlation-identifier))))))
               (bookreview/c
                (lambda (corr-id k)
                  (lambda (j10185)
                    (letrec ((r10189
                              (lambda (trace10188)
                                (receive
                                 (('finish
                                   (begin
                                     (if (member 'get-book-review trace10188)
                                       #t
                                       (blame
                                        j10185
                                        '(position-in-file-loc
                                          "programs/test/actor-cc/bookreview.scm"
                                          47
                                          2)))))
                                  ((pair rcv10187 message10186)
                                   (match
                                    message10186
                                    (((cons
                                       'get-book-review
                                       (cons x10190 x10191))
                                      (begin
                                        ((dyn send^)
                                         rcv10187
                                         (letrec ((x10192
                                                   (actor?
                                                    j10185
                                                    j10185
                                                    x10190))
                                                  (x10193
                                                   ((and/c
                                                     number?/c
                                                     (=/c corr-id))
                                                    j10185
                                                    j10185
                                                    x10191)))
                                           (cons
                                            'enhanced
                                            (cons
                                             ((lambda (actor-ref corr-id)
                                                (lambda (j10194)
                                                  (letrec ((r10198
                                                            (lambda (trace10197)
                                                              (receive
                                                               (('finish
                                                                 (begin
                                                                   (if (member
                                                                        'get-ratings
                                                                        trace10197)
                                                                     #t
                                                                     (blame
                                                                      j10194
                                                                      '(position-in-file-loc
                                                                        "programs/test/actor-cc/bookreview.scm"
                                                                        51
                                                                        19)))))
                                                                ((pair
                                                                  rcv10196
                                                                  message10195)
                                                                 (match
                                                                  message10195
                                                                  (((cons
                                                                     'get-ratings
                                                                     (cons
                                                                      x10199
                                                                      x10200))
                                                                    (begin
                                                                      ((dyn
                                                                        send^)
                                                                       rcv10196
                                                                       (letrec ((x10201
                                                                                 (actor?
                                                                                  j10194
                                                                                  j10194
                                                                                  x10199))
                                                                                (x10202
                                                                                 ((and/c
                                                                                   number?/c
                                                                                   (=/c
                                                                                    corr-id))
                                                                                  j10194
                                                                                  j10194
                                                                                  x10200)))
                                                                         (cons
                                                                          'enhanced
                                                                          (cons
                                                                           ((lambda (actor-ref
                                                                                     corr-id)
                                                                              (lambda (j10203)
                                                                                (letrec ((r10207
                                                                                          (lambda (trace10206)
                                                                                            (receive
                                                                                             (('finish
                                                                                               (begin
                                                                                                 (if (member
                                                                                                      'reply-book-ratings
                                                                                                      trace10206)
                                                                                                   #t
                                                                                                   (blame
                                                                                                    j10203
                                                                                                    '(position-in-file-loc
                                                                                                      "programs/test/actor-cc/bookreview.scm"
                                                                                                      55
                                                                                                      32)))))
                                                                                              ((pair
                                                                                                rcv10205
                                                                                                message10204)
                                                                                               (match
                                                                                                message10204
                                                                                                (((cons
                                                                                                   'reply-book-ratings
                                                                                                   x10208)
                                                                                                  (begin
                                                                                                    ((dyn
                                                                                                      send^)
                                                                                                     rcv10205
                                                                                                     (letrec ((x10209
                                                                                                               ((and/c
                                                                                                                 number?/c
                                                                                                                 (=/c
                                                                                                                  corr-id))
                                                                                                                j10203
                                                                                                                j10203
                                                                                                                x10208)))
                                                                                                       (cons
                                                                                                        'enhanced
                                                                                                        (cons
                                                                                                         ((lambda (corr-id)
                                                                                                            (lambda (j10210)
                                                                                                              (letrec ((r10214
                                                                                                                        (lambda (trace10213)
                                                                                                                          (receive
                                                                                                                           (('finish
                                                                                                                             (begin
                                                                                                                               (if (member
                                                                                                                                    'reply-book-reviews
                                                                                                                                    trace10213)
                                                                                                                                 #t
                                                                                                                                 (blame
                                                                                                                                  j10210
                                                                                                                                  '(position-in-file-loc
                                                                                                                                    "programs/test/actor-cc/bookreview.scm"
                                                                                                                                    58
                                                                                                                                    57)))))
                                                                                                                            ((pair
                                                                                                                              rcv10212
                                                                                                                              message10211)
                                                                                                                             (match
                                                                                                                              message10211
                                                                                                                              (((cons
                                                                                                                                 'reply-book-reviews
                                                                                                                                 x10215)
                                                                                                                                (begin
                                                                                                                                  ((dyn
                                                                                                                                    send^)
                                                                                                                                   rcv10212
                                                                                                                                   (letrec ((x10216
                                                                                                                                             ((and/c
                                                                                                                                               number?/c
                                                                                                                                               (=/c
                                                                                                                                                corr-id))
                                                                                                                                              j10210
                                                                                                                                              j10210
                                                                                                                                              x10215)))
                                                                                                                                     (cons
                                                                                                                                      'enhanced
                                                                                                                                      (cons
                                                                                                                                       (k
                                                                                                                                        x10216)
                                                                                                                                       (cons
                                                                                                                                        j10210
                                                                                                                                        (cons
                                                                                                                                         'reply-book-reviews
                                                                                                                                         x10216))))))
                                                                                                                                  (r10214
                                                                                                                                   (cons
                                                                                                                                    'reply-book-reviews
                                                                                                                                    trace10213))))
                                                                                                                               (_
                                                                                                                                (begin
                                                                                                                                  ((dyn
                                                                                                                                    send^)
                                                                                                                                   rcv10212
                                                                                                                                   message10211)
                                                                                                                                  (r10214
                                                                                                                                   trace10213)))))))))))
                                                                                                                (spawn^
                                                                                                                 (r10214
                                                                                                                  (list))))))
                                                                                                          x10209)
                                                                                                         (cons
                                                                                                          j10203
                                                                                                          (cons
                                                                                                           'reply-book-ratings
                                                                                                           x10209))))))
                                                                                                    (r10207
                                                                                                     (cons
                                                                                                      'reply-book-ratings
                                                                                                      trace10206))))
                                                                                                 (_
                                                                                                  (begin
                                                                                                    ((dyn
                                                                                                      send^)
                                                                                                     rcv10205
                                                                                                     message10204)
                                                                                                    (r10207
                                                                                                     trace10206)))))))))))
                                                                                  (spawn^
                                                                                   (r10207
                                                                                    (list))))))
                                                                            x10201
                                                                            x10202)
                                                                           (cons
                                                                            j10194
                                                                            (cons
                                                                             'get-ratings
                                                                             (cons
                                                                              x10201
                                                                              x10202)))))))
                                                                      (r10198
                                                                       (cons
                                                                        'get-ratings
                                                                        trace10197))))
                                                                   (_
                                                                    (begin
                                                                      ((dyn
                                                                        send^)
                                                                       rcv10196
                                                                       message10195)
                                                                      (r10198
                                                                       trace10197)))))))))))
                                                    (spawn^ (r10198 (list))))))
                                              x10192
                                              x10193)
                                             (cons
                                              j10185
                                              (cons
                                               'get-book-review
                                               (cons x10192 x10193)))))))
                                        (r10189
                                         (cons 'get-book-review trace10188))))
                                     (_
                                      (begin
                                        ((dyn send^) rcv10187 message10186)
                                        (r10189 trace10188)))))))))))
                      (spawn^ (r10189 (list)))))))
               (bookdetails/c
                (lambda (corr-id k)
                  (lambda (j10217)
                    (letrec ((r10221
                              (lambda (trace10220)
                                (receive
                                 (('finish
                                   (begin
                                     (if (member 'get-details trace10220)
                                       #t
                                       (blame
                                        j10217
                                        '(position-in-file-loc
                                          "programs/test/actor-cc/bookreview.scm"
                                          64
                                          2)))))
                                  ((pair rcv10219 message10218)
                                   (match
                                    message10218
                                    (((cons 'get-details (cons x10222 x10223))
                                      (begin
                                        ((dyn send^)
                                         rcv10219
                                         (letrec ((x10224
                                                   (actor?
                                                    j10217
                                                    j10217
                                                    x10222))
                                                  (x10225
                                                   ((and/c
                                                     number?/c
                                                     (=/c corr-id))
                                                    j10217
                                                    j10217
                                                    x10223)))
                                           (cons
                                            'enhanced
                                            (cons
                                             ((lambda (actor-ref corr-id)
                                                (lambda (j10226)
                                                  (letrec ((r10230
                                                            (lambda (trace10229)
                                                              (receive
                                                               (('finish
                                                                 (begin
                                                                   (if (member
                                                                        'reply-book-details
                                                                        trace10229)
                                                                     #t
                                                                     (blame
                                                                      j10226
                                                                      '(position-in-file-loc
                                                                        "programs/test/actor-cc/bookreview.scm"
                                                                        68
                                                                        19)))))
                                                                ((pair
                                                                  rcv10228
                                                                  message10227)
                                                                 (match
                                                                  message10227
                                                                  (((cons
                                                                     'reply-book-details
                                                                     x10231)
                                                                    (begin
                                                                      ((dyn
                                                                        send^)
                                                                       rcv10228
                                                                       (letrec ((x10232
                                                                                 ((and/c
                                                                                   number?/c
                                                                                   (=/c
                                                                                    corr-id))
                                                                                  j10226
                                                                                  j10226
                                                                                  x10231)))
                                                                         (cons
                                                                          'enhanced
                                                                          (cons
                                                                           (k
                                                                            x10232)
                                                                           (cons
                                                                            j10226
                                                                            (cons
                                                                             'reply-book-details
                                                                             x10232))))))
                                                                      (r10230
                                                                       (cons
                                                                        'reply-book-details
                                                                        trace10229))))
                                                                   (_
                                                                    (begin
                                                                      ((dyn
                                                                        send^)
                                                                       rcv10228
                                                                       message10227)
                                                                      (r10230
                                                                       trace10229)))))))))))
                                                    (spawn^ (r10230 (list))))))
                                              x10224
                                              x10225)
                                             (cons
                                              j10217
                                              (cons
                                               'get-details
                                               (cons x10224 x10225)))))))
                                        (r10221
                                         (cons 'get-details trace10220))))
                                     (_
                                      (begin
                                        ((dyn send^) rcv10219 message10218)
                                        (r10221 trace10220)))))))))))
                      (spawn^ (r10221 (list)))))))
               (bookinfo/c
                (lambda (k10234 j10235 a10233)
                  (lambda (v10236)
                    (letrec ((result10251
                              ((lambda (k10237 j10238 v10239)
                                 (match
                                  v10239
                                  (((cons
                                     'get-book-details
                                     (cons x10240 x10241))
                                    (letrec ((x10242
                                              (actor? k10237 j10238 x10240))
                                             (x10243
                                              (number?/c
                                               k10237
                                               j10238
                                               x10241)))
                                      (cons
                                       'enhanced
                                       (cons
                                        ((lambda (client-ref corr-id)
                                           (bookreview/c
                                            corr-id
                                            (lambda ags
                                              (bookdetails/c
                                               corr-id
                                               (lambda ags
                                                 (lambda (j10244)
                                                   (letrec ((r10248
                                                             (lambda (trace10247)
                                                               (receive
                                                                (('finish
                                                                  (begin
                                                                    (if (member
                                                                         'reply-bookinfo
                                                                         trace10247)
                                                                      #t
                                                                      (blame
                                                                       j10244
                                                                       '(position-in-file-loc
                                                                         "programs/test/actor-cc/bookreview.scm"
                                                                         83
                                                                         50)))))
                                                                 ((pair
                                                                   rcv10246
                                                                   message10245)
                                                                  (match
                                                                   message10245
                                                                   (((cons
                                                                      'reply-bookinfo
                                                                      x10249)
                                                                     (begin
                                                                       ((dyn
                                                                         send^)
                                                                        rcv10246
                                                                        (letrec ((x10250
                                                                                  ((and/c
                                                                                    number?/c
                                                                                    (=/c
                                                                                     corr-id))
                                                                                   j10244
                                                                                   j10244
                                                                                   x10249)))
                                                                          (cons
                                                                           'enhanced
                                                                           (cons
                                                                            (unconstrained/c
                                                                             x10250)
                                                                            (cons
                                                                             j10244
                                                                             (cons
                                                                              'reply-bookinfo
                                                                              x10250))))))
                                                                       (r10248
                                                                        (cons
                                                                         'reply-bookinfo
                                                                         trace10247))))
                                                                    (_
                                                                     (begin
                                                                       ((dyn
                                                                         send^)
                                                                        rcv10246
                                                                        message10245)
                                                                       (r10248
                                                                        trace10247)))))))))))
                                                     (spawn^
                                                      (r10248 (list))))))))))
                                         x10242
                                         x10243)
                                        (cons
                                         j10238
                                         (cons
                                          'get-book-details
                                          (cons x10242 x10243)))))))
                                   (_ #f))))
                               k10234
                               j10235
                               v10236)))
                      (if result10251
                        (a10233 result10251)
                        (blame
                         k10234
                         '(position-in-file-loc
                           "programs/test/actor-cc/bookreview.scm"
                           75
                           2)))))))
               (client
                (lambda (bookinfo)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (('start
                        (begin
                          (bookinfo
                           (cons 'get-book-details (cons (dyn self) (fresh))))
                          (client bookinfo)))
                       ((cons 'reply-bookinfo corr-id)
                        (begin (displayln 'done) (client bookinfo)))
                       ((cons 'enhanced (cons k10252 (cons j10256 'start)))
                        (letrec ((kc10253 (k10252 j10256))
                                 (old-send10257 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10254 msg10255)
                               (old-send10257
                                kc10253
                                (cons rcv10254 msg10255)))))
                           (begin
                             (bookinfo
                              (cons
                               'get-book-details
                               (cons (dyn self) (fresh))))
                             (client bookinfo)))))
                       ((cons
                         'enhanced
                         (cons
                          k10258
                          (cons j10262 (cons 'reply-bookinfo corr-id))))
                        (letrec ((kc10259 (k10258 j10262))
                                 (old-send10263 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10260 msg10261)
                               (old-send10263
                                kc10259
                                (cons rcv10260 msg10261)))))
                           (begin (displayln 'done) (client bookinfo)))))))))))
               (bookinfo
                (lambda (book-review book-details clients)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'get-book-details (cons client correlation-id))
                        (begin
                          (book-review
                           (cons
                            'get-book-review
                            (cons (dyn self) correlation-id)))
                          (bookinfo
                           book-review
                           book-details
                           (add-client client correlation-id clients))))
                       ((cons 'reply-book-reviews correlation-id)
                        (begin
                          (letrec ((client
                                    (find-client correlation-id clients)))
                            (displayln "got the book reviews")
                            (book-details
                             (cons
                              'get-details
                              (cons (dyn self) correlation-id))))
                          (bookinfo book-review book-details clients)))
                       ((cons 'reply-book-details correlation-id)
                        (begin
                          (letrec ((client
                                    (find-client correlation-id clients)))
                            (client (cons 'reply-bookinfo correlation-id)))
                          (bookinfo
                           book-review
                           book-details
                           (remassoc correlation-id clients))))
                       ((cons
                         'enhanced
                         (cons
                          k10264
                          (cons
                           j10268
                           (cons
                            'get-book-details
                            (cons client correlation-id)))))
                        (letrec ((kc10265 (k10264 j10268))
                                 (old-send10269 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10266 msg10267)
                               (old-send10269
                                kc10265
                                (cons rcv10266 msg10267)))))
                           (begin
                             (book-review
                              (cons
                               'get-book-review
                               (cons (dyn self) correlation-id)))
                             (bookinfo
                              book-review
                              book-details
                              (add-client client correlation-id clients))))))
                       ((cons
                         'enhanced
                         (cons
                          k10270
                          (cons
                           j10274
                           (cons 'reply-book-reviews correlation-id))))
                        (letrec ((kc10271 (k10270 j10274))
                                 (old-send10275 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10272 msg10273)
                               (old-send10275
                                kc10271
                                (cons rcv10272 msg10273)))))
                           (begin
                             (letrec ((client
                                       (find-client correlation-id clients)))
                               (displayln "got the book reviews")
                               (book-details
                                (cons
                                 'get-details
                                 (cons (dyn self) correlation-id))))
                             (bookinfo book-review book-details clients)))))
                       ((cons
                         'enhanced
                         (cons
                          k10276
                          (cons
                           j10280
                           (cons 'reply-book-details correlation-id))))
                        (letrec ((kc10277 (k10276 j10280))
                                 (old-send10281 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10278 msg10279)
                               (old-send10281
                                kc10277
                                (cons rcv10278 msg10279)))))
                           (begin
                             (letrec ((client
                                       (find-client correlation-id clients)))
                               (client (cons 'reply-bookinfo correlation-id)))
                             (bookinfo
                              book-review
                              book-details
                              (remassoc correlation-id clients))))))))))))
               (bookreview
                (lambda (book-ratings clients)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'get-book-review (cons sender correlation-id))
                        (begin
                          (book-ratings
                           (cons
                            'get-ratings
                            (cons (dyn self) correlation-id)))
                          (bookreview
                           book-ratings
                           (add-client sender correlation-id clients))))
                       ((cons 'reply-book-ratings correlation-id)
                        (begin
                          (letrec ((client
                                    (find-client correlation-id clients)))
                            (displayln "got the ratings")
                            (client (cons 'reply-book-reviews correlation-id)))
                          (bookreview
                           book-ratings
                           (remassoc correlation-id clients))))
                       ((cons
                         'enhanced
                         (cons
                          k10282
                          (cons
                           j10286
                           (cons
                            'get-book-review
                            (cons sender correlation-id)))))
                        (letrec ((kc10283 (k10282 j10286))
                                 (old-send10287 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10284 msg10285)
                               (old-send10287
                                kc10283
                                (cons rcv10284 msg10285)))))
                           (begin
                             (book-ratings
                              (cons
                               'get-ratings
                               (cons (dyn self) correlation-id)))
                             (bookreview
                              book-ratings
                              (add-client sender correlation-id clients))))))
                       ((cons
                         'enhanced
                         (cons
                          k10288
                          (cons
                           j10292
                           (cons 'reply-book-ratings correlation-id))))
                        (letrec ((kc10289 (k10288 j10292))
                                 (old-send10293 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10290 msg10291)
                               (old-send10293
                                kc10289
                                (cons rcv10290 msg10291)))))
                           (begin
                             (letrec ((client
                                       (find-client correlation-id clients)))
                               (displayln "got the ratings")
                               (client
                                (cons 'reply-book-reviews correlation-id)))
                             (bookreview
                              book-ratings
                              (remassoc correlation-id clients))))))))))))
               (bookratings
                (lambda ()
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'get-ratings (cons sender correlation-id))
                        (begin
                          (sender (cons 'reply-book-ratings correlation-id))
                          (bookratings)))
                       ((cons
                         'enhanced
                         (cons
                          k10294
                          (cons
                           j10298
                           (cons 'get-ratings (cons sender correlation-id)))))
                        (letrec ((kc10295 (k10294 j10298))
                                 (old-send10299 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10296 msg10297)
                               (old-send10299
                                kc10295
                                (cons rcv10296 msg10297)))))
                           (begin
                             (sender (cons 'reply-book-ratings correlation-id))
                             (bookratings)))))))))))
               (bookdetails
                (lambda ()
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'get-details (cons sender correlation-id))
                        (begin
                          (sender (cons 'reply-book-details correlation-id))
                          (bookdetails)))
                       ((cons
                         'enhanced
                         (cons
                          k10300
                          (cons
                           j10304
                           (cons 'get-details (cons sender correlation-id)))))
                        (letrec ((kc10301 (k10300 j10304))
                                 (old-send10305 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10302 msg10303)
                               (old-send10305
                                kc10301
                                (cons rcv10302 msg10303)))))
                           (begin
                             (sender (cons 'reply-book-details correlation-id))
                             (bookdetails)))))))))))
               (bookratings-actor
                (letrec ((act (spawn^ (bookratings))))
                  (lambda (msg) ((dyn send^) act msg))))
               (bookdetails-actor
                (letrec ((act (spawn^ (bookdetails))))
                  (lambda (msg) ((dyn send^) act msg))))
               (bookreview-actor
                (letrec ((act (spawn^ (bookreview bookratings-actor '()))))
                  (lambda (msg) ((dyn send^) act msg))))
               (bookinfo-actor-unmonitored
                (letrec ((act
                          (spawn^
                           (bookinfo bookreview-actor bookdetails-actor '()))))
                  (lambda (msg) ((dyn send^) act msg))))
               (bookinfo-actor
                (letrec ((xj10306 (loc 'client)) (xk10307 (loc 'server)))
                  (bookinfo/c xj10306 xk10307 bookinfo-actor-unmonitored)))
               (client-actor
                (letrec ((act (spawn^ (client bookinfo-actor))))
                  (lambda (msg) ((dyn send^) act msg)))))
        (client-actor 'start)))))
