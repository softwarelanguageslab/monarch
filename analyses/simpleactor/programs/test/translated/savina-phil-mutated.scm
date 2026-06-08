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
                (letrec ((val10020 (> x y)))
                  (if val10020
                    val10020
                    (letrec ((val10021 (= x y))) (if val10021 val10021 #f))))))
             (<=
              (lambda (x y)
                (assert (number? x))
                (letrec ((val10022 (< x y)))
                  (if val10022
                    val10022
                    (letrec ((val10023 (= x y))) (if val10023 val10023 #f))))))
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
                (lambda (g10040 g10041 g10042)
                  (if (real? g10042)
                    g10042
                    (blame
                     g10040
                     '(loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       40
                       19)))))
               (boolean?/c
                (lambda (g10043 g10044 g10045)
                  (if (boolean? g10045)
                    g10045
                    (blame
                     g10043
                     '(loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       41
                       22)))))
               (number?/c
                (lambda (g10046 g10047 g10048)
                  (if (number? g10048)
                    g10048
                    (blame
                     g10046
                     '(loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       42
                       21)))))
               (any/c
                (lambda (g10049 g10050 g10051)
                  (if ((lambda (v) #t) g10051)
                    g10051
                    (blame
                     g10049
                     '(loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       43
                       17)))))
               (any?/c
                (lambda (g10052 g10053 g10054)
                  (if ((lambda (v) #t) g10054)
                    g10054
                    (blame
                     g10052
                     '(loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       44
                       18)))))
               (cons?/c
                (lambda (g10055 g10056 g10057)
                  (if (pair? g10057)
                    g10057
                    (blame
                     g10055
                     '(loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       45
                       19)))))
               (cons/c
                (lambda (k1 k2)
                  (lambda (k j v) (cons (k1 k j (car v)) (k2 k j (cdr v))))))
               (pair?/c
                (lambda (g10058 g10059 g10060)
                  (if (pair? g10060)
                    g10060
                    (blame
                     g10058
                     '(loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       50
                       19)))))
               (integer?/c
                (lambda (g10061 g10062 g10063)
                  (if (integer? g10063)
                    g10063
                    (blame
                     g10061
                     '(loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       51
                       22)))))
               (symbol?/c
                (lambda (g10064 g10065 g10066)
                  (if (symbol? g10066)
                    g10066
                    (blame
                     g10064
                     '(loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       52
                       21)))))
               (string?/c
                (lambda (g10067 g10068 g10069)
                  (if (string? g10069)
                    g10069
                    (blame
                     g10067
                     '(loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       53
                       21)))))
               (and/c
                (lambda (c1 c2)
                  (lambda (k j v) (if (c1 k j v) (c2 k j v) #f))))
               (or/c
                (lambda (c1 c2)
                  (lambda (k j v)
                    (letrec ((val10024 (c1 k j v)))
                      (if val10024 val10024 (c2 k j v))))))
               (null?/c
                (lambda (g10070 g10071 g10072)
                  (if (null? g10072)
                    g10072
                    (blame
                     g10070
                     '(loc
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
                (lambda (g10073 g10074 g10075)
                  (if ((lambda (v) (not (= v 0))) g10075)
                    g10075
                    (blame
                     g10073
                     '(loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       68
                       22)))))
               (>=/c
                (lambda (n)
                  (lambda (g10076 g10077 g10078)
                    (if ((lambda (v) (orig->= v n)) g10078)
                      g10078
                      (blame
                       g10076
                       '(loc
                         "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                         69
                         20))))))
               (>/c
                (lambda (n)
                  (lambda (g10079 g10080 g10081)
                    (if ((lambda (v) (orig-> v n)) g10081)
                      g10081
                      (blame
                       g10079
                       '(loc
                         "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                         70
                         19))))))
               (</c
                (lambda (n)
                  (lambda (g10082 g10083 g10084)
                    (if ((lambda (v) (orig-< v n)) g10084)
                      g10084
                      (blame
                       g10082
                       '(loc
                         "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                         71
                         19))))))
               (<=/c
                (lambda (n)
                  (lambda (g10085 g10086 g10087)
                    (if ((lambda (v) (orig-<= v n)) g10087)
                      g10087
                      (blame
                       g10085
                       '(loc
                         "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                         72
                         20))))))
               (=/c
                (lambda (n)
                  (lambda (g10088 g10089 g10090)
                    (if ((lambda (v) (orig-= v n)) g10090)
                      g10090
                      (blame
                       g10088
                       '(loc
                         "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                         73
                         19))))))
               (string=?/c
                (lambda (s)
                  (lambda (g10091 g10092 g10093)
                    (if ((lambda (v) (string=? s v)) g10093)
                      g10093
                      (blame
                       g10091
                       '(loc
                         "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                         74
                         26))))))
               (meta (lambda (v) v))
               (+
                (letrec ((xj10094 'server) (xk10095 'client))
                  ((lambda (j10098 k10099 f10100)
                     (lambda (g10096 g10097)
                       (number?/c
                        j10098
                        k10099
                        (f10100
                         (number?/c k10099 j10098 g10096)
                         (number?/c k10099 j10098 g10097)))))
                   xj10094
                   xk10095
                   (lambda (a b) (orig-+ a b)))))
               (-
                (letrec ((xj10101 'server) (xk10102 'client))
                  ((lambda (j10105 k10106 f10107)
                     (lambda (g10103 g10104)
                       (number?/c
                        j10105
                        k10106
                        (f10107
                         (number?/c k10106 j10105 g10103)
                         (number?/c k10106 j10105 g10104)))))
                   xj10101
                   xk10102
                   (lambda (a b) (orig-- a b)))))
               (*
                (letrec ((xj10108 'server) (xk10109 'client))
                  ((lambda (j10112 k10113 f10114)
                     (lambda (g10110 g10111)
                       (number?/c
                        j10112
                        k10113
                        (f10114
                         (number?/c k10113 j10112 g10110)
                         (number?/c k10113 j10112 g10111)))))
                   xj10108
                   xk10109
                   (lambda (a b) (orig-* a b)))))
               (<
                (letrec ((xj10115 'server) (xk10116 'client))
                  ((lambda (j10119 k10120 f10121)
                     (lambda (g10117 g10118)
                       (boolean?/c
                        j10119
                        k10120
                        (f10121
                         (number?/c k10120 j10119 g10117)
                         (number?/c k10120 j10119 g10118)))))
                   xj10115
                   xk10116
                   (lambda (a b) (orig-< a b)))))
               (>
                (letrec ((xj10122 'server) (xk10123 'client))
                  ((lambda (j10126 k10127 f10128)
                     (lambda (g10124 g10125)
                       (boolean?/c
                        j10126
                        k10127
                        (f10128
                         (number?/c k10127 j10126 g10124)
                         (number?/c k10127 j10126 g10125)))))
                   xj10122
                   xk10123
                   (lambda (a b) (orig-> a b)))))
               (<=
                (letrec ((xj10129 'server) (xk10130 'client))
                  ((lambda (j10133 k10134 f10135)
                     (lambda (g10131 g10132)
                       (boolean?/c
                        j10133
                        k10134
                        (f10135
                         (number?/c k10134 j10133 g10131)
                         (number?/c k10134 j10133 g10132)))))
                   xj10129
                   xk10130
                   (lambda (a b) (orig-<= a b)))))
               (>=
                (letrec ((xj10136 'server) (xk10137 'client))
                  ((lambda (j10140 k10141 f10142)
                     (lambda (g10138 g10139)
                       (boolean?/c
                        j10140
                        k10141
                        (f10142
                         (number?/c k10141 j10140 g10138)
                         (number?/c k10141 j10140 g10139)))))
                   xj10136
                   xk10137
                   (lambda (a b) (orig->= a b)))))
               (add1 (lambda (x) (+ x 1)))
               (/
                (letrec ((xj10143 'server) (xk10144 'client))
                  ((lambda (j10147 k10148 f10149)
                     (lambda (g10145 g10146)
                       (number?/c
                        j10147
                        k10148
                        (f10149
                         (number?/c k10148 j10147 g10145)
                         (number?/c k10148 j10147 g10146)))))
                   xj10143
                   xk10144
                   (lambda (a b) (orig-/ a b)))))
               (car
                (letrec ((xj10150 'server) (xk10151 'client))
                  ((lambda (g10152 g10153 g10154)
                     (lambda (g10155)
                       (any/c
                        g10152
                        g10153
                        (g10154 (pair?/c g10153 g10152 g10155)))))
                   xj10150
                   xk10151
                   (lambda (p) (orig-car p)))))
               (cdr
                (letrec ((xj10156 'server) (xk10157 'client))
                  ((lambda (g10158 g10159 g10160)
                     (lambda (g10161)
                       (any/c
                        g10158
                        g10159
                        (g10160 (pair?/c g10159 g10158 g10161)))))
                   xj10156
                   xk10157
                   (lambda (p) (orig-cdr p)))))
               (vector?/c
                (lambda (g10162 g10163 g10164)
                  (if (vector? g10164)
                    g10164
                    (blame
                     g10162
                     '(loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       108
                       21)))))
               (vector-ref
                (letrec ((xj10165 'server) (xk10166 'client))
                  ((lambda (j10169 k10170 f10171)
                     (lambda (g10167 g10168)
                       (any/c
                        j10169
                        k10170
                        (f10171
                         (vector?/c k10170 j10169 g10167)
                         (integer?/c k10170 j10169 g10168)))))
                   xj10165
                   xk10166
                   (lambda (v i) (orig-vector-ref v i)))))
               (vector-set!
                (letrec ((xj10172 'server) (xk10173 'client))
                  ((lambda (j10177 k10178 f10179)
                     (lambda (g10174 g10175 g10176)
                       (any/c
                        j10177
                        k10178
                        (f10179
                         (vector?/c k10178 j10177 g10174)
                         (integer?/c k10178 j10177 g10175)
                         (any/c k10178 j10177 g10176)))))
                   xj10172
                   xk10173
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
                  (letrec ((val10025 (char<? c1 c2)))
                    (if val10025 val10025 (char=? c1 c2)))))
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
                  (letrec ((val10026 (= (char->integer c) 9)))
                    (if val10026
                      val10026
                      (letrec ((val10027 (= (char->integer c) 10)))
                        (if val10027 val10027 (= (char->integer c) 32)))))))
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
                  (letrec ((val10028 (eq? a b)))
                    (if val10028
                      val10028
                      (letrec ((val10029 (if (null? a) (null? b) #f)))
                        (if val10029
                          val10029
                          (letrec ((val10030
                                    (if (string? a)
                                      (if (string? b) (string=? a b) #f)
                                      #f)))
                            (if val10030
                              val10030
                              (letrec ((val10031
                                        (if (pair? a)
                                          (if (pair? b)
                                            (if (equal? (car a) (car b))
                                              (equal? (cdr a) (cdr b))
                                              #f)
                                            #f)
                                          #f)))
                                (if val10031
                                  val10031
                                  (if (vector? a)
                                    (if (vector? b)
                                      (letrec ((n (vector-length a)))
                                        (if (= (vector-length b) n)
                                          (letrec ((loop
                                                    (lambda (i)
                                                      (letrec ((val10032
                                                                (= i n)))
                                                        (if val10032
                                                          val10032
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
                  (letrec ((val10033 (char>? c1 c2)))
                    (if val10033 val10033 (char=? c1 c2)))))
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
                  (letrec ((val10034 (string>? s1 s2)))
                    (if val10034 val10034 (string=? s1 s2)))))
               (cadr (lambda (x) (car (cdr x))))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec ((val10035 (if (pair? l) (list? (cdr l)) #f)))
                    (if val10035 val10035 (null? l)))))
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
                  (letrec ((val10036 (char-ci<? c1 c2)))
                    (if val10036 val10036 (char-ci=? c1 c2)))))
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
                  (letrec ((val10037 (string<? s1 s2)))
                    (if val10037 val10037 (string=? s1 s2)))))
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
                  (letrec ((val10038 (char-ci>? c1 c2)))
                    (if val10038 val10038 (char-ci=? c1 c2)))))
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
               (philosopher/c
                (lambda (arb id)
                  (lambda (k10181 j10182 a10180)
                    (lambda (v10183)
                      (letrec ((result10218
                                ((lambda (k10184 j10185 v10186)
                                   (match
                                    v10186
                                    (('start
                                      (letrec ()
                                        (cons
                                         'enhanced
                                         (cons
                                          ((lambda ()
                                             (lambda (j10187)
                                               (letrec ((r10191
                                                         (lambda (trace10190)
                                                           (receive
                                                            (('finish
                                                              (begin
                                                                (if (member
                                                                     'hungry
                                                                     trace10190)
                                                                  #t
                                                                  (blame
                                                                   j10187
                                                                   '(loc
                                                                     "stdin"
                                                                     12
                                                                     17)))))
                                                             ((pair
                                                               rcv10189
                                                               message10188)
                                                              (match
                                                               message10188
                                                               (((cons
                                                                  'hungry
                                                                  (cons
                                                                   x10192
                                                                   x10193))
                                                                 (begin
                                                                   ((dyn send^)
                                                                    rcv10189
                                                                    (letrec ((x10194
                                                                              ((philosopher/c
                                                                                arb
                                                                                id)
                                                                               j10187
                                                                               j10187
                                                                               x10192))
                                                                             (x10195
                                                                              ((=/c
                                                                                id)
                                                                               j10187
                                                                               j10187
                                                                               x10193)))
                                                                      (cons
                                                                       'enhanced
                                                                       (cons
                                                                        (unconstrained/c
                                                                         x10194
                                                                         x10195)
                                                                        (cons
                                                                         j10187
                                                                         (cons
                                                                          'hungry
                                                                          (cons
                                                                           x10194
                                                                           x10195)))))))
                                                                   (r10191
                                                                    (cons
                                                                     'hungry
                                                                     trace10190))))
                                                                (_
                                                                 (begin
                                                                   ((dyn send^)
                                                                    rcv10189
                                                                    message10188)
                                                                   (r10191
                                                                    trace10190)))))))))))
                                                 (spawn^ (r10191 (list)))))))
                                          (cons j10185 'start)))))
                                     (_ #f))))
                                 k10181
                                 j10182
                                 v10183)))
                        (if result10218
                          (a10180 result10218)
                          (letrec ((result10219
                                    ((lambda (k10196 j10197 v10198)
                                       (match
                                        v10198
                                        (('denied
                                          (letrec ()
                                            (cons
                                             'enhanced
                                             (cons
                                              ((lambda ()
                                                 (lambda (j10199)
                                                   (letrec ((r10203
                                                             (lambda (trace10202)
                                                               (receive
                                                                (('finish
                                                                  (begin
                                                                    (if (member
                                                                         'hungry
                                                                         trace10202)
                                                                      #t
                                                                      (blame
                                                                       j10199
                                                                       '(loc
                                                                         "stdin"
                                                                         19
                                                                         17)))))
                                                                 ((pair
                                                                   rcv10201
                                                                   message10200)
                                                                  (match
                                                                   message10200
                                                                   (((cons
                                                                      'hungry
                                                                      (cons
                                                                       x10204
                                                                       x10205))
                                                                     (begin
                                                                       ((dyn
                                                                         send^)
                                                                        rcv10201
                                                                        (letrec ((x10206
                                                                                  ((philosopher/c
                                                                                    arb
                                                                                    id)
                                                                                   j10199
                                                                                   j10199
                                                                                   x10204))
                                                                                 (x10207
                                                                                  ((=/c
                                                                                    id)
                                                                                   j10199
                                                                                   j10199
                                                                                   x10205)))
                                                                          (cons
                                                                           'enhanced
                                                                           (cons
                                                                            (unconstrained/c
                                                                             x10206
                                                                             x10207)
                                                                            (cons
                                                                             j10199
                                                                             (cons
                                                                              'hungry
                                                                              (cons
                                                                               x10206
                                                                               x10207)))))))
                                                                       (r10203
                                                                        (cons
                                                                         'hungry
                                                                         trace10202))))
                                                                    (_
                                                                     (begin
                                                                       ((dyn
                                                                         send^)
                                                                        rcv10201
                                                                        message10200)
                                                                       (r10203
                                                                        trace10202)))))))))))
                                                     (spawn^
                                                      (r10203 (list)))))))
                                              (cons j10197 'denied)))))
                                         (_ #f))))
                                     k10181
                                     j10182
                                     v10183)))
                            (if result10219
                              (a10180 result10219)
                              (letrec ((result10220
                                        ((lambda (k10208 j10209 v10210)
                                           (match
                                            v10210
                                            (('eat
                                              (letrec ()
                                                (cons
                                                 'enhanced
                                                 (cons
                                                  ((lambda ()
                                                     (lambda (j10211)
                                                       (letrec ((r10215
                                                                 (lambda (trace10214)
                                                                   (receive
                                                                    (('finish
                                                                      (begin
                                                                        (if (member
                                                                             'done
                                                                             trace10214)
                                                                          #t
                                                                          (blame
                                                                           j10211
                                                                           '(loc
                                                                             "stdin"
                                                                             26
                                                                             17)))
                                                                        (if (member
                                                                             'start
                                                                             trace10214)
                                                                          #t
                                                                          (blame
                                                                           j10211
                                                                           '(loc
                                                                             "stdin"
                                                                             26
                                                                             17)))))
                                                                     ((pair
                                                                       rcv10213
                                                                       message10212)
                                                                      (match
                                                                       message10212
                                                                       (((cons
                                                                          'done
                                                                          x10216)
                                                                         (begin
                                                                           ((dyn
                                                                             send^)
                                                                            rcv10213
                                                                            (letrec ((x10217
                                                                                      ((=/c
                                                                                        id)
                                                                                       j10211
                                                                                       j10211
                                                                                       x10216)))
                                                                              (cons
                                                                               'enhanced
                                                                               (cons
                                                                                (unconstrained/c
                                                                                 x10217)
                                                                                (cons
                                                                                 j10211
                                                                                 (cons
                                                                                  'done
                                                                                  x10217))))))
                                                                           (r10215
                                                                            (cons
                                                                             'done
                                                                             trace10214))))
                                                                        ('start
                                                                         (begin
                                                                           ((dyn
                                                                             send^)
                                                                            rcv10213
                                                                            (letrec ()
                                                                              (cons
                                                                               'enhanced
                                                                               (cons
                                                                                (unconstrained/c)
                                                                                (cons
                                                                                 j10211
                                                                                 'start)))))
                                                                           (r10215
                                                                            (cons
                                                                             'start
                                                                             trace10214))))
                                                                        (_
                                                                         (begin
                                                                           ((dyn
                                                                             send^)
                                                                            rcv10213
                                                                            message10212)
                                                                           (r10215
                                                                            trace10214)))))))))))
                                                         (spawn^
                                                          (r10215 (list)))))))
                                                  (cons j10209 'eat)))))
                                             (_ #f))))
                                         k10181
                                         j10182
                                         v10183)))
                                (if result10220
                                  (a10180 result10220)
                                  (blame k10181 '(loc "stdin" 8 2))))))))))))
               (num-forks 3)
               (arbitrator
                (lambda (forks)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'hungry (cons p id))
                        (begin
                          (letrec ((left id)
                                   (right (modulo (+ id 1) num-forks)))
                            (if (letrec ((val10039 (vector-ref forks left)))
                                  (if val10039
                                    val10039
                                    (vector-ref forks right)))
                              (p 'denied)
                              (begin
                                (vector-set! forks left #t)
                                (vector-set! forks right #t)
                                (p 'eat))))
                          (arbitrator forks)))
                       ((cons 'done id)
                        (begin
                          (letrec ((left id)
                                   (right (modulo (+ id 1) num-forks)))
                            (vector-set! forks left #f)
                            (vector-set! forks right #f))
                          (arbitrator forks)))
                       ((cons
                         'enhanced
                         (cons
                          k10221
                          (cons j10225 (cons 'hungry (cons p id)))))
                        (letrec ((kc10222 (k10221 j10225))
                                 (old-send10226 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10223 msg10224)
                               (old-send10226
                                kc10222
                                (cons rcv10223 msg10224)))))
                           (begin
                             (letrec ((left id)
                                      (right (modulo (+ id 1) num-forks)))
                               (if (letrec ((val10039 (vector-ref forks left)))
                                     (if val10039
                                       val10039
                                       (vector-ref forks right)))
                                 (p 'denied)
                                 (begin
                                   (vector-set! forks left #t)
                                   (vector-set! forks right #t)
                                   (p 'eat))))
                             (arbitrator forks)))))
                       ((cons
                         'enhanced
                         (cons k10227 (cons j10231 (cons 'done id))))
                        (letrec ((kc10228 (k10227 j10231))
                                 (old-send10232 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10229 msg10230)
                               (old-send10232
                                kc10228
                                (cons rcv10229 msg10230)))))
                           (begin
                             (letrec ((left id)
                                      (right (modulo (+ id 1) num-forks)))
                               (vector-set! forks left #f)
                               (vector-set! forks right #f))
                             (arbitrator forks)))))))))))
               (philosopher-mutated
                (lambda (arb id)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (('start
                        (begin
                          (arb (cons 'hungry (cons (dyn self) 42)))
                          (philosopher-mutated arb id)))
                       ('denied
                        (begin
                          (arb (cons 'hungry (cons (dyn self) 42)))
                          (philosopher-mutated arb id)))
                       ('eat
                        (begin
                          (arb (cons 'done 42))
                          ((dyn self) 'start)
                          (philosopher-mutated arb id)))
                       ((cons 'enhanced (cons k10233 (cons j10237 'start)))
                        (letrec ((kc10234 (k10233 j10237))
                                 (old-send10238 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10235 msg10236)
                               (old-send10238
                                kc10234
                                (cons rcv10235 msg10236)))))
                           (begin
                             (arb (cons 'hungry (cons (dyn self) 42)))
                             (philosopher-mutated arb id)))))
                       ((cons 'enhanced (cons k10239 (cons j10243 'denied)))
                        (letrec ((kc10240 (k10239 j10243))
                                 (old-send10244 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10241 msg10242)
                               (old-send10244
                                kc10240
                                (cons rcv10241 msg10242)))))
                           (begin
                             (arb (cons 'hungry (cons (dyn self) 42)))
                             (philosopher-mutated arb id)))))
                       ((cons 'enhanced (cons k10245 (cons j10249 'eat)))
                        (letrec ((kc10246 (k10245 j10249))
                                 (old-send10250 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10247 msg10248)
                               (old-send10250
                                kc10246
                                (cons rcv10247 msg10248)))))
                           (begin
                             (arb (cons 'done 42))
                             ((dyn self) 'start)
                             (philosopher-mutated arb id)))))))))))
               (philosopher
                (lambda (arb id)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (('start
                        (begin
                          (arb (cons 'hungry (cons (dyn self) id)))
                          (philosopher arb id)))
                       ('denied
                        (begin
                          (arb (cons 'hungry (cons (dyn self) id)))
                          (philosopher arb id)))
                       ('eat
                        (begin
                          (arb (cons 'done id))
                          ((dyn self) 'start)
                          (philosopher arb id)))
                       ((cons 'enhanced (cons k10251 (cons j10255 'start)))
                        (letrec ((kc10252 (k10251 j10255))
                                 (old-send10256 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10253 msg10254)
                               (old-send10256
                                kc10252
                                (cons rcv10253 msg10254)))))
                           (begin
                             (arb (cons 'hungry (cons (dyn self) id)))
                             (philosopher arb id)))))
                       ((cons 'enhanced (cons k10257 (cons j10261 'denied)))
                        (letrec ((kc10258 (k10257 j10261))
                                 (old-send10262 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10259 msg10260)
                               (old-send10262
                                kc10258
                                (cons rcv10259 msg10260)))))
                           (begin
                             (arb (cons 'hungry (cons (dyn self) id)))
                             (philosopher arb id)))))
                       ((cons 'enhanced (cons k10263 (cons j10267 'eat)))
                        (letrec ((kc10264 (k10263 j10267))
                                 (old-send10268 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10265 msg10266)
                               (old-send10268
                                kc10264
                                (cons rcv10265 msg10266)))))
                           (begin
                             (arb (cons 'done id))
                             ((dyn self) 'start)
                             (philosopher arb id)))))))))))
               (arbitrator-actor
                (letrec ((act (spawn^ (arbitrator (vector #f #f #f)))))
                  (lambda (msg) ((dyn send^) act msg))))
               (phil1
                (letrec ((xj10269 (loc 'client)) (xk10270 (loc 'server)))
                  ((philosopher/c arbitrator-actor 1)
                   xj10269
                   xk10270
                   (letrec ((act
                             (spawn^
                              (philosopher-mutated arbitrator-actor 1))))
                     (lambda (msg) ((dyn send^) act msg))))))
               (phil2
                (letrec ((xj10271 (loc 'client)) (xk10272 (loc 'server)))
                  ((philosopher/c arbitrator-actor 1)
                   xj10271
                   xk10272
                   (letrec ((act (spawn^ (philosopher arbitrator-actor 1))))
                     (lambda (msg) ((dyn send^) act msg))))))
               (phil3
                (letrec ((xj10273 (loc 'client)) (xk10274 (loc 'server)))
                  ((philosopher/c arbitrator-actor 2)
                   xj10273
                   xk10274
                   (letrec ((act (spawn^ (philosopher arbitrator-actor 2))))
                     (lambda (msg) ((dyn send^) act msg)))))))
        (phil1 'start)
        (phil2 'start)
        (phil3 'start)))))
