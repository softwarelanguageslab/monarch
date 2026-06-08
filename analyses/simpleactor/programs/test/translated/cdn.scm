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
               (local-dns/c
                (lambda (k10186 j10187 a10185)
                  (lambda (v10188)
                    (letrec ((result10241
                              ((lambda (k10189 j10190 v10191)
                                 (match
                                  v10191
                                  (((cons 'query (cons x10192 x10193))
                                    (letrec ((x10194
                                              (actor? k10189 j10190 x10192))
                                             (x10195
                                              (number?/c
                                               k10189
                                               j10190
                                               x10193)))
                                      (cons
                                       'enhanced
                                       (cons
                                        ((lambda (sender cookie)
                                           (lambda (j10196)
                                             (letrec ((r10200
                                                       (lambda (trace10199)
                                                         (receive
                                                          (('finish
                                                            (begin
                                                              (if (member
                                                                   'get-hostname
                                                                   trace10199)
                                                                #t
                                                                (blame
                                                                 j10196
                                                                 '(position-in-file-loc
                                                                   "programs/test/actor-cc/cdn.scm"
                                                                   48
                                                                   17)))))
                                                           ((pair
                                                             rcv10198
                                                             message10197)
                                                            (match
                                                             message10197
                                                             (((cons
                                                                'get-hostname
                                                                (cons
                                                                 x10201
                                                                 x10202))
                                                               (begin
                                                                 ((dyn send^)
                                                                  rcv10198
                                                                  (letrec ((x10203
                                                                            (actor?
                                                                             j10196
                                                                             j10196
                                                                             x10201))
                                                                           (x10204
                                                                            ((and/c
                                                                              number?/c
                                                                              (=/c
                                                                               cookie))
                                                                             j10196
                                                                             j10196
                                                                             x10202)))
                                                                    (cons
                                                                     'enhanced
                                                                     (cons
                                                                      ((lambda (self-actor
                                                                                cookie)
                                                                         (lambda (j10205)
                                                                           (letrec ((r10209
                                                                                     (lambda (trace10208)
                                                                                       (receive
                                                                                        (('finish
                                                                                          (begin
                                                                                            (if (member
                                                                                                 'reply-hostname
                                                                                                 trace10208)
                                                                                              #t
                                                                                              (blame
                                                                                               j10205
                                                                                               '(position-in-file-loc
                                                                                                 "programs/test/actor-cc/cdn.scm"
                                                                                                 52
                                                                                                 34)))))
                                                                                         ((pair
                                                                                           rcv10207
                                                                                           message10206)
                                                                                          (match
                                                                                           message10206
                                                                                           (((cons
                                                                                              'reply-hostname
                                                                                              (cons
                                                                                               x10210
                                                                                               x10211))
                                                                                             (begin
                                                                                               ((dyn
                                                                                                 send^)
                                                                                                rcv10207
                                                                                                (letrec ((x10212
                                                                                                          (string?/c
                                                                                                           j10205
                                                                                                           j10205
                                                                                                           x10210))
                                                                                                         (x10213
                                                                                                          ((and/c
                                                                                                            number?/c
                                                                                                            (=/c
                                                                                                             cookie))
                                                                                                           j10205
                                                                                                           j10205
                                                                                                           x10211)))
                                                                                                  (cons
                                                                                                   'enhanced
                                                                                                   (cons
                                                                                                    ((lambda (hostname
                                                                                                              cookie)
                                                                                                       (lambda (j10214)
                                                                                                         (letrec ((r10218
                                                                                                                   (lambda (trace10217)
                                                                                                                     (receive
                                                                                                                      (('finish
                                                                                                                        (begin
                                                                                                                          (if (member
                                                                                                                               'get-ip
                                                                                                                               trace10217)
                                                                                                                            #t
                                                                                                                            (blame
                                                                                                                             j10214
                                                                                                                             '(position-in-file-loc
                                                                                                                               "programs/test/actor-cc/cdn.scm"
                                                                                                                               56
                                                                                                                               49)))))
                                                                                                                       ((pair
                                                                                                                         rcv10216
                                                                                                                         message10215)
                                                                                                                        (match
                                                                                                                         message10215
                                                                                                                         (((cons
                                                                                                                            'get-ip
                                                                                                                            (cons
                                                                                                                             x10219
                                                                                                                             (cons
                                                                                                                              x10220
                                                                                                                              x10221)))
                                                                                                                           (begin
                                                                                                                             ((dyn
                                                                                                                               send^)
                                                                                                                              rcv10216
                                                                                                                              (letrec ((x10222
                                                                                                                                        (actor?
                                                                                                                                         j10214
                                                                                                                                         j10214
                                                                                                                                         x10219))
                                                                                                                                       (x10223
                                                                                                                                        ((and/c
                                                                                                                                          string?/c
                                                                                                                                          (string=?/c
                                                                                                                                           hostname))
                                                                                                                                         j10214
                                                                                                                                         j10214
                                                                                                                                         x10220))
                                                                                                                                       (x10224
                                                                                                                                        ((and/c
                                                                                                                                          number?/c
                                                                                                                                          (=/c
                                                                                                                                           cookie))
                                                                                                                                         j10214
                                                                                                                                         j10214
                                                                                                                                         x10221)))
                                                                                                                                (cons
                                                                                                                                 'enhanced
                                                                                                                                 (cons
                                                                                                                                  ((lambda (self-actor
                                                                                                                                            hostname
                                                                                                                                            cookie)
                                                                                                                                     (lambda (j10225)
                                                                                                                                       (letrec ((r10229
                                                                                                                                                 (lambda (trace10228)
                                                                                                                                                   (receive
                                                                                                                                                    (('finish
                                                                                                                                                      (begin
                                                                                                                                                        (if (member
                                                                                                                                                             'reply-ip
                                                                                                                                                             trace10228)
                                                                                                                                                          #t
                                                                                                                                                          (blame
                                                                                                                                                           j10225
                                                                                                                                                           '(position-in-file-loc
                                                                                                                                                             "programs/test/actor-cc/cdn.scm"
                                                                                                                                                             60
                                                                                                                                                             64)))))
                                                                                                                                                     ((pair
                                                                                                                                                       rcv10227
                                                                                                                                                       message10226)
                                                                                                                                                      (match
                                                                                                                                                       message10226
                                                                                                                                                       (((cons
                                                                                                                                                          'reply-ip
                                                                                                                                                          (cons
                                                                                                                                                           x10230
                                                                                                                                                           x10231))
                                                                                                                                                         (begin
                                                                                                                                                           ((dyn
                                                                                                                                                             send^)
                                                                                                                                                            rcv10227
                                                                                                                                                            (letrec ((x10232
                                                                                                                                                                      (number?/c
                                                                                                                                                                       j10225
                                                                                                                                                                       j10225
                                                                                                                                                                       x10230))
                                                                                                                                                                     (x10233
                                                                                                                                                                      ((and/c
                                                                                                                                                                        number?/c
                                                                                                                                                                        (=/c
                                                                                                                                                                         cookie))
                                                                                                                                                                       j10225
                                                                                                                                                                       j10225
                                                                                                                                                                       x10231)))
                                                                                                                                                              (cons
                                                                                                                                                               'enhanced
                                                                                                                                                               (cons
                                                                                                                                                                ((lambda (ip
                                                                                                                                                                          cookie)
                                                                                                                                                                   (lambda (j10234)
                                                                                                                                                                     (letrec ((r10238
                                                                                                                                                                               (lambda (trace10237)
                                                                                                                                                                                 (receive
                                                                                                                                                                                  (('finish
                                                                                                                                                                                    (begin
                                                                                                                                                                                      (if (member
                                                                                                                                                                                           'reply
                                                                                                                                                                                           trace10237)
                                                                                                                                                                                        #t
                                                                                                                                                                                        (blame
                                                                                                                                                                                         j10234
                                                                                                                                                                                         '(position-in-file-loc
                                                                                                                                                                                           "programs/test/actor-cc/cdn.scm"
                                                                                                                                                                                           64
                                                                                                                                                                                           79)))))
                                                                                                                                                                                   ((pair
                                                                                                                                                                                     rcv10236
                                                                                                                                                                                     message10235)
                                                                                                                                                                                    (match
                                                                                                                                                                                     message10235
                                                                                                                                                                                     (((cons
                                                                                                                                                                                        'reply
                                                                                                                                                                                        x10239)
                                                                                                                                                                                       (begin
                                                                                                                                                                                         ((dyn
                                                                                                                                                                                           send^)
                                                                                                                                                                                          rcv10236
                                                                                                                                                                                          (letrec ((x10240
                                                                                                                                                                                                    ((and/c
                                                                                                                                                                                                      number?/c
                                                                                                                                                                                                      (=/c
                                                                                                                                                                                                       ip))
                                                                                                                                                                                                     j10234
                                                                                                                                                                                                     j10234
                                                                                                                                                                                                     x10239)))
                                                                                                                                                                                            (cons
                                                                                                                                                                                             'enhanced
                                                                                                                                                                                             (cons
                                                                                                                                                                                              (unconstrained/c
                                                                                                                                                                                               x10240)
                                                                                                                                                                                              (cons
                                                                                                                                                                                               j10234
                                                                                                                                                                                               (cons
                                                                                                                                                                                                'reply
                                                                                                                                                                                                x10240))))))
                                                                                                                                                                                         (r10238
                                                                                                                                                                                          (cons
                                                                                                                                                                                           'reply
                                                                                                                                                                                           trace10237))))
                                                                                                                                                                                      (_
                                                                                                                                                                                       (begin
                                                                                                                                                                                         ((dyn
                                                                                                                                                                                           send^)
                                                                                                                                                                                          rcv10236
                                                                                                                                                                                          message10235)
                                                                                                                                                                                         (r10238
                                                                                                                                                                                          trace10237)))))))))))
                                                                                                                                                                       (spawn^
                                                                                                                                                                        (r10238
                                                                                                                                                                         (list))))))
                                                                                                                                                                 x10232
                                                                                                                                                                 x10233)
                                                                                                                                                                (cons
                                                                                                                                                                 j10225
                                                                                                                                                                 (cons
                                                                                                                                                                  'reply-ip
                                                                                                                                                                  (cons
                                                                                                                                                                   x10232
                                                                                                                                                                   x10233)))))))
                                                                                                                                                           (r10229
                                                                                                                                                            (cons
                                                                                                                                                             'reply-ip
                                                                                                                                                             trace10228))))
                                                                                                                                                        (_
                                                                                                                                                         (begin
                                                                                                                                                           ((dyn
                                                                                                                                                             send^)
                                                                                                                                                            rcv10227
                                                                                                                                                            message10226)
                                                                                                                                                           (r10229
                                                                                                                                                            trace10228)))))))))))
                                                                                                                                         (spawn^
                                                                                                                                          (r10229
                                                                                                                                           (list))))))
                                                                                                                                   x10222
                                                                                                                                   x10223
                                                                                                                                   x10224)
                                                                                                                                  (cons
                                                                                                                                   j10214
                                                                                                                                   (cons
                                                                                                                                    'get-ip
                                                                                                                                    (cons
                                                                                                                                     x10222
                                                                                                                                     (cons
                                                                                                                                      x10223
                                                                                                                                      x10224))))))))
                                                                                                                             (r10218
                                                                                                                              (cons
                                                                                                                               'get-ip
                                                                                                                               trace10217))))
                                                                                                                          (_
                                                                                                                           (begin
                                                                                                                             ((dyn
                                                                                                                               send^)
                                                                                                                              rcv10216
                                                                                                                              message10215)
                                                                                                                             (r10218
                                                                                                                              trace10217)))))))))))
                                                                                                           (spawn^
                                                                                                            (r10218
                                                                                                             (list))))))
                                                                                                     x10212
                                                                                                     x10213)
                                                                                                    (cons
                                                                                                     j10205
                                                                                                     (cons
                                                                                                      'reply-hostname
                                                                                                      (cons
                                                                                                       x10212
                                                                                                       x10213)))))))
                                                                                               (r10209
                                                                                                (cons
                                                                                                 'reply-hostname
                                                                                                 trace10208))))
                                                                                            (_
                                                                                             (begin
                                                                                               ((dyn
                                                                                                 send^)
                                                                                                rcv10207
                                                                                                message10206)
                                                                                               (r10209
                                                                                                trace10208)))))))))))
                                                                             (spawn^
                                                                              (r10209
                                                                               (list))))))
                                                                       x10203
                                                                       x10204)
                                                                      (cons
                                                                       j10196
                                                                       (cons
                                                                        'get-hostname
                                                                        (cons
                                                                         x10203
                                                                         x10204)))))))
                                                                 (r10200
                                                                  (cons
                                                                   'get-hostname
                                                                   trace10199))))
                                                              (_
                                                               (begin
                                                                 ((dyn send^)
                                                                  rcv10198
                                                                  message10197)
                                                                 (r10200
                                                                  trace10199)))))))))))
                                               (spawn^ (r10200 (list))))))
                                         x10194
                                         x10195)
                                        (cons
                                         j10190
                                         (cons
                                          'query
                                          (cons x10194 x10195)))))))
                                   (_ #f))))
                               k10186
                               j10187
                               v10188)))
                      (if result10241
                        (a10185 result10241)
                        (blame
                         k10186
                         '(position-in-file-loc
                           "programs/test/actor-cc/cdn.scm"
                           44
                           2)))))))
               (client
                (lambda (local-dns)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (('start
                        (begin
                          (local-dns (cons 'query (cons (dyn self) (fresh))))
                          (client local-dns)))
                       ((cons 'reply ip) (begin (displayln ip) (terminate)))
                       ((cons 'enhanced (cons k10242 (cons j10246 'start)))
                        (letrec ((kc10243 (k10242 j10246))
                                 (old-send10247 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10244 msg10245)
                               (old-send10247
                                kc10243
                                (cons rcv10244 msg10245)))))
                           (begin
                             (local-dns
                              (cons 'query (cons (dyn self) (fresh))))
                             (client local-dns)))))
                       ((cons
                         'enhanced
                         (cons k10248 (cons j10252 (cons 'reply ip))))
                        (letrec ((kc10249 (k10248 j10252))
                                 (old-send10253 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10250 msg10251)
                               (old-send10253
                                kc10249
                                (cons rcv10250 msg10251)))))
                           (begin (displayln ip) (terminate)))))))))))
               (local-dns
                (lambda (internal external clients)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'query (cons sender cookie))
                        (begin
                          (internal
                           (cons 'get-hostname (cons (dyn self) cookie)))
                          (local-dns
                           internal
                           external
                           (add-client sender cookie clients))))
                       ((cons 'reply-hostname (cons hostname cookie))
                        (begin
                          (external
                           (cons
                            'get-ip
                            (cons (dyn self) (cons hostname cookie))))
                          (local-dns internal external clients)))
                       ((cons 'reply-ip (cons ip cookie))
                        (begin
                          (letrec ((client (find-client cookie clients)))
                            (client (cons 'reply ip)))
                          (local-dns
                           internal
                           external
                           (remassoc cookie clients))))
                       ((cons
                         'enhanced
                         (cons
                          k10254
                          (cons j10258 (cons 'query (cons sender cookie)))))
                        (letrec ((kc10255 (k10254 j10258))
                                 (old-send10259 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10256 msg10257)
                               (old-send10259
                                kc10255
                                (cons rcv10256 msg10257)))))
                           (begin
                             (internal
                              (cons 'get-hostname (cons (dyn self) cookie)))
                             (local-dns
                              internal
                              external
                              (add-client sender cookie clients))))))
                       ((cons
                         'enhanced
                         (cons
                          k10260
                          (cons
                           j10264
                           (cons 'reply-hostname (cons hostname cookie)))))
                        (letrec ((kc10261 (k10260 j10264))
                                 (old-send10265 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10262 msg10263)
                               (old-send10265
                                kc10261
                                (cons rcv10262 msg10263)))))
                           (begin
                             (external
                              (cons
                               'get-ip
                               (cons (dyn self) (cons hostname cookie))))
                             (local-dns internal external clients)))))
                       ((cons
                         'enhanced
                         (cons
                          k10266
                          (cons j10270 (cons 'reply-ip (cons ip cookie)))))
                        (letrec ((kc10267 (k10266 j10270))
                                 (old-send10271 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10268 msg10269)
                               (old-send10271
                                kc10267
                                (cons rcv10268 msg10269)))))
                           (begin
                             (letrec ((client (find-client cookie clients)))
                               (client (cons 'reply ip)))
                             (local-dns
                              internal
                              external
                              (remassoc cookie clients))))))))))))
               (internal-server
                (lambda ()
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'get-hostname (cons sender cookie))
                        (begin
                          (sender
                           (cons 'reply-hostname (cons (fresh-string) cookie)))
                          (internal-server)))
                       ((cons
                         'enhanced
                         (cons
                          k10272
                          (cons
                           j10276
                           (cons 'get-hostname (cons sender cookie)))))
                        (letrec ((kc10273 (k10272 j10276))
                                 (old-send10277 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10274 msg10275)
                               (old-send10277
                                kc10273
                                (cons rcv10274 msg10275)))))
                           (begin
                             (sender
                              (cons
                               'reply-hostname
                               (cons (fresh-string) cookie)))
                             (internal-server)))))))))))
               (external-server
                (lambda ()
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'get-ip (cons sender (cons hostname cookie)))
                        (begin
                          (sender (cons 'reply-ip (cons (fresh) cookie)))
                          (external-server)))
                       ((cons
                         'enhanced
                         (cons
                          k10278
                          (cons
                           j10282
                           (cons
                            'get-ip
                            (cons sender (cons hostname cookie))))))
                        (letrec ((kc10279 (k10278 j10282))
                                 (old-send10283 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10280 msg10281)
                               (old-send10283
                                kc10279
                                (cons rcv10280 msg10281)))))
                           (begin
                             (sender (cons 'reply-ip (cons (fresh) cookie)))
                             (external-server)))))))))))
               (internal-actor
                (letrec ((act (spawn^ (internal-server))))
                  (lambda (msg) ((dyn send^) act msg))))
               (external-actor
                (letrec ((act (spawn^ (external-server))))
                  (lambda (msg) ((dyn send^) act msg))))
               (local-dns-unmonitored
                (letrec ((act
                          (spawn^
                           (local-dns internal-actor external-actor '()))))
                  (lambda (msg) ((dyn send^) act msg))))
               (local-dns-actor
                (letrec ((xj10284 (loc 'client)) (xk10285 (loc 'server)))
                  (local-dns/c xj10284 xk10285 local-dns-unmonitored)))
               (client-actor
                (letrec ((act (spawn^ (client local-dns-actor))))
                  (lambda (msg) ((dyn send^) act msg)))))
        (client-actor 'start)))))
