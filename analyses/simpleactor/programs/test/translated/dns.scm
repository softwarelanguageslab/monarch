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
                (lambda (g10046 g10047 g10048)
                  (if (real? g10048)
                    g10048
                    (blame
                     g10046
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       40
                       19)))))
               (boolean?/c
                (lambda (g10049 g10050 g10051)
                  (if (boolean? g10051)
                    g10051
                    (blame
                     g10049
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       41
                       22)))))
               (number?/c
                (lambda (g10052 g10053 g10054)
                  (if (number? g10054)
                    g10054
                    (blame
                     g10052
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       42
                       21)))))
               (any/c
                (lambda (g10055 g10056 g10057)
                  (if ((lambda (v) #t) g10057)
                    g10057
                    (blame
                     g10055
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       43
                       17)))))
               (any?/c
                (lambda (g10058 g10059 g10060)
                  (if ((lambda (v) #t) g10060)
                    g10060
                    (blame
                     g10058
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       44
                       18)))))
               (cons?/c
                (lambda (g10061 g10062 g10063)
                  (if (pair? g10063)
                    g10063
                    (blame
                     g10061
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       45
                       19)))))
               (cons/c
                (lambda (k1 k2)
                  (lambda (k j v) (cons (k1 k j (car v)) (k2 k j (cdr v))))))
               (pair?/c
                (lambda (g10064 g10065 g10066)
                  (if (pair? g10066)
                    g10066
                    (blame
                     g10064
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       50
                       19)))))
               (integer?/c
                (lambda (g10067 g10068 g10069)
                  (if (integer? g10069)
                    g10069
                    (blame
                     g10067
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       51
                       22)))))
               (symbol?/c
                (lambda (g10070 g10071 g10072)
                  (if (symbol? g10072)
                    g10072
                    (blame
                     g10070
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       52
                       21)))))
               (string?/c
                (lambda (g10073 g10074 g10075)
                  (if (string? g10075)
                    g10075
                    (blame
                     g10073
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
                (lambda (g10076 g10077 g10078)
                  (if (null? g10078)
                    g10078
                    (blame
                     g10076
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
                (lambda (g10079 g10080 g10081)
                  (if ((lambda (v) (not (= v 0))) g10081)
                    g10081
                    (blame
                     g10079
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       68
                       22)))))
               (>=/c
                (lambda (n)
                  (lambda (g10082 g10083 g10084)
                    (if ((lambda (v) (orig->= v n)) g10084)
                      g10084
                      (blame
                       g10082
                       '(position-in-file-loc
                         "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                         69
                         20))))))
               (>/c
                (lambda (n)
                  (lambda (g10085 g10086 g10087)
                    (if ((lambda (v) (orig-> v n)) g10087)
                      g10087
                      (blame
                       g10085
                       '(position-in-file-loc
                         "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                         70
                         19))))))
               (</c
                (lambda (n)
                  (lambda (g10088 g10089 g10090)
                    (if ((lambda (v) (orig-< v n)) g10090)
                      g10090
                      (blame
                       g10088
                       '(position-in-file-loc
                         "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                         71
                         19))))))
               (<=/c
                (lambda (n)
                  (lambda (g10091 g10092 g10093)
                    (if ((lambda (v) (orig-<= v n)) g10093)
                      g10093
                      (blame
                       g10091
                       '(position-in-file-loc
                         "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                         72
                         20))))))
               (=/c
                (lambda (n)
                  (lambda (g10094 g10095 g10096)
                    (if ((lambda (v) (orig-= v n)) g10096)
                      g10096
                      (blame
                       g10094
                       '(position-in-file-loc
                         "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                         73
                         19))))))
               (string=?/c
                (lambda (s)
                  (lambda (g10097 g10098 g10099)
                    (if ((lambda (v) (string=? s v)) g10099)
                      g10099
                      (blame
                       g10097
                       '(position-in-file-loc
                         "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                         74
                         26))))))
               (meta (lambda (v) v))
               (+
                (letrec ((xj10100 'server) (xk10101 'client))
                  ((lambda (j10104 k10105 f10106)
                     (lambda (g10102 g10103)
                       (number?/c
                        j10104
                        k10105
                        (f10106
                         (number?/c k10105 j10104 g10102)
                         (number?/c k10105 j10104 g10103)))))
                   xj10100
                   xk10101
                   (lambda (a b) (orig-+ a b)))))
               (-
                (letrec ((xj10107 'server) (xk10108 'client))
                  ((lambda (j10111 k10112 f10113)
                     (lambda (g10109 g10110)
                       (number?/c
                        j10111
                        k10112
                        (f10113
                         (number?/c k10112 j10111 g10109)
                         (number?/c k10112 j10111 g10110)))))
                   xj10107
                   xk10108
                   (lambda (a b) (orig-- a b)))))
               (*
                (letrec ((xj10114 'server) (xk10115 'client))
                  ((lambda (j10118 k10119 f10120)
                     (lambda (g10116 g10117)
                       (number?/c
                        j10118
                        k10119
                        (f10120
                         (number?/c k10119 j10118 g10116)
                         (number?/c k10119 j10118 g10117)))))
                   xj10114
                   xk10115
                   (lambda (a b) (orig-* a b)))))
               (<
                (letrec ((xj10121 'server) (xk10122 'client))
                  ((lambda (j10125 k10126 f10127)
                     (lambda (g10123 g10124)
                       (boolean?/c
                        j10125
                        k10126
                        (f10127
                         (number?/c k10126 j10125 g10123)
                         (number?/c k10126 j10125 g10124)))))
                   xj10121
                   xk10122
                   (lambda (a b) (orig-< a b)))))
               (>
                (letrec ((xj10128 'server) (xk10129 'client))
                  ((lambda (j10132 k10133 f10134)
                     (lambda (g10130 g10131)
                       (boolean?/c
                        j10132
                        k10133
                        (f10134
                         (number?/c k10133 j10132 g10130)
                         (number?/c k10133 j10132 g10131)))))
                   xj10128
                   xk10129
                   (lambda (a b) (orig-> a b)))))
               (<=
                (letrec ((xj10135 'server) (xk10136 'client))
                  ((lambda (j10139 k10140 f10141)
                     (lambda (g10137 g10138)
                       (boolean?/c
                        j10139
                        k10140
                        (f10141
                         (number?/c k10140 j10139 g10137)
                         (number?/c k10140 j10139 g10138)))))
                   xj10135
                   xk10136
                   (lambda (a b) (orig-<= a b)))))
               (>=
                (letrec ((xj10142 'server) (xk10143 'client))
                  ((lambda (j10146 k10147 f10148)
                     (lambda (g10144 g10145)
                       (boolean?/c
                        j10146
                        k10147
                        (f10148
                         (number?/c k10147 j10146 g10144)
                         (number?/c k10147 j10146 g10145)))))
                   xj10142
                   xk10143
                   (lambda (a b) (orig->= a b)))))
               (add1 (lambda (x) (+ x 1)))
               (/
                (letrec ((xj10149 'server) (xk10150 'client))
                  ((lambda (j10153 k10154 f10155)
                     (lambda (g10151 g10152)
                       (number?/c
                        j10153
                        k10154
                        (f10155
                         (number?/c k10154 j10153 g10151)
                         (number?/c k10154 j10153 g10152)))))
                   xj10149
                   xk10150
                   (lambda (a b) (orig-/ a b)))))
               (car
                (letrec ((xj10156 'server) (xk10157 'client))
                  ((lambda (g10158 g10159 g10160)
                     (lambda (g10161)
                       (any/c
                        g10158
                        g10159
                        (g10160 (pair?/c g10159 g10158 g10161)))))
                   xj10156
                   xk10157
                   (lambda (p) (orig-car p)))))
               (cdr
                (letrec ((xj10162 'server) (xk10163 'client))
                  ((lambda (g10164 g10165 g10166)
                     (lambda (g10167)
                       (any/c
                        g10164
                        g10165
                        (g10166 (pair?/c g10165 g10164 g10167)))))
                   xj10162
                   xk10163
                   (lambda (p) (orig-cdr p)))))
               (vector?/c
                (lambda (g10168 g10169 g10170)
                  (if (vector? g10170)
                    g10170
                    (blame
                     g10168
                     '(position-in-file-loc
                       "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                       108
                       21)))))
               (vector-ref
                (letrec ((xj10171 'server) (xk10172 'client))
                  ((lambda (j10175 k10176 f10177)
                     (lambda (g10173 g10174)
                       (any/c
                        j10175
                        k10176
                        (f10177
                         (vector?/c k10176 j10175 g10173)
                         (integer?/c k10176 j10175 g10174)))))
                   xj10171
                   xk10172
                   (lambda (v i) (orig-vector-ref v i)))))
               (vector-set!
                (letrec ((xj10178 'server) (xk10179 'client))
                  ((lambda (j10183 k10184 f10185)
                     (lambda (g10180 g10181 g10182)
                       (any/c
                        j10183
                        k10184
                        (f10185
                         (vector?/c k10184 j10183 g10180)
                         (integer?/c k10184 j10183 g10181)
                         (any/c k10184 j10183 g10182)))))
                   xj10178
                   xk10179
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
               (authorative? (lambda (answer) (eq? (car answer) 'authorative)))
               (requires-recursion?
                (lambda (answer) (eq? (car answer) 'requires-recursion)))
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
               (answer?/c
                (lambda (g10186 g10187 g10188)
                  (if ((lambda (value)
                         (if (pair? value)
                           (letrec ((val10045 (eq? (car value) 'authorative)))
                             (if val10045
                               val10045
                               (eq? (car value) 'requires-recursion)))
                           #f))
                       g10188)
                    g10188
                    (blame
                     g10186
                     '(position-in-file-loc
                       "programs/test/actor-cc/dns.scm"
                       69
                       18)))))
               (recursive-dns/cm
                (lambda (sender cookie)
                  (lambda (j10189)
                    (letrec ((r10193
                              (lambda (trace10192)
                                (receive
                                 (('finish
                                   (begin
                                     (if (member 'query trace10192)
                                       #t
                                       (blame
                                        j10189
                                        '(position-in-file-loc
                                          "programs/test/actor-cc/dns.scm"
                                          76
                                          2)))))
                                  ((pair rcv10191 message10190)
                                   (match
                                    message10190
                                    (((cons 'query (cons x10194 x10195))
                                      (begin
                                        ((dyn send^)
                                         rcv10191
                                         (letrec ((x10196
                                                   (actor?
                                                    j10189
                                                    j10189
                                                    x10194))
                                                  (x10197
                                                   ((and/c
                                                     number?/c
                                                     (=/c cookie))
                                                    j10189
                                                    j10189
                                                    x10195)))
                                           (cons
                                            'enhanced
                                            (cons
                                             ((lambda (self-actor cookie)
                                                (lambda (j10198)
                                                  (letrec ((r10202
                                                            (lambda (trace10201)
                                                              (receive
                                                               (('finish
                                                                 (begin
                                                                   (if (member
                                                                        'answer
                                                                        trace10201)
                                                                     #t
                                                                     (blame
                                                                      j10198
                                                                      '(position-in-file-loc
                                                                        "programs/test/actor-cc/dns.scm"
                                                                        80
                                                                        17)))))
                                                                ((pair
                                                                  rcv10200
                                                                  message10199)
                                                                 (match
                                                                  message10199
                                                                  (((cons
                                                                     'answer
                                                                     (cons
                                                                      x10203
                                                                      x10204))
                                                                    (begin
                                                                      ((dyn
                                                                        send^)
                                                                       rcv10200
                                                                       (letrec ((x10205
                                                                                 ((and/c
                                                                                   number?/c
                                                                                   (=/c
                                                                                    cookie))
                                                                                  j10198
                                                                                  j10198
                                                                                  x10203))
                                                                                (x10206
                                                                                 (answer?/c
                                                                                  j10198
                                                                                  j10198
                                                                                  x10204)))
                                                                         (cons
                                                                          'enhanced
                                                                          (cons
                                                                           ((lambda (cookie
                                                                                     answer)
                                                                              (if (requires-recursion?
                                                                                   answer)
                                                                                (recursive-dns/cm
                                                                                 sender
                                                                                 cookie)
                                                                                (lambda (j10207)
                                                                                  (letrec ((r10211
                                                                                            (lambda (trace10210)
                                                                                              (receive
                                                                                               (('finish
                                                                                                 (begin
                                                                                                   (if (member
                                                                                                        'answer
                                                                                                        trace10210)
                                                                                                     #t
                                                                                                     (blame
                                                                                                      j10207
                                                                                                      '(position-in-file-loc
                                                                                                        "programs/test/actor-cc/dns.scm"
                                                                                                        86
                                                                                                        36)))))
                                                                                                ((pair
                                                                                                  rcv10209
                                                                                                  message10208)
                                                                                                 (match
                                                                                                  message10208
                                                                                                  (((cons
                                                                                                     'answer
                                                                                                     x10212)
                                                                                                    (begin
                                                                                                      ((dyn
                                                                                                        send^)
                                                                                                       rcv10209
                                                                                                       (letrec ((x10213
                                                                                                                 (answer?/c
                                                                                                                  j10207
                                                                                                                  j10207
                                                                                                                  x10212)))
                                                                                                         (cons
                                                                                                          'enhanced
                                                                                                          (cons
                                                                                                           (unconstrained/c
                                                                                                            x10213)
                                                                                                           (cons
                                                                                                            j10207
                                                                                                            (cons
                                                                                                             'answer
                                                                                                             x10213))))))
                                                                                                      (r10211
                                                                                                       (cons
                                                                                                        'answer
                                                                                                        trace10210))))
                                                                                                   (_
                                                                                                    (begin
                                                                                                      ((dyn
                                                                                                        send^)
                                                                                                       rcv10209
                                                                                                       message10208)
                                                                                                      (r10211
                                                                                                       trace10210)))))))))))
                                                                                    (spawn^
                                                                                     (r10211
                                                                                      (list)))))))
                                                                            x10205
                                                                            x10206)
                                                                           (cons
                                                                            j10198
                                                                            (cons
                                                                             'answer
                                                                             (cons
                                                                              x10205
                                                                              x10206)))))))
                                                                      (r10202
                                                                       (cons
                                                                        'answer
                                                                        trace10201))))
                                                                   (_
                                                                    (begin
                                                                      ((dyn
                                                                        send^)
                                                                       rcv10200
                                                                       message10199)
                                                                      (r10202
                                                                       trace10201)))))))))))
                                                    (spawn^ (r10202 (list))))))
                                              x10196
                                              x10197)
                                             (cons
                                              j10189
                                              (cons
                                               'query
                                               (cons x10196 x10197)))))))
                                        (r10193 (cons 'query trace10192))))
                                     (_
                                      (begin
                                        ((dyn send^) rcv10191 message10190)
                                        (r10193 trace10192)))))))))))
                      (spawn^ (r10193 (list)))))))
               (recursive-dns/c
                (lambda (k10215 j10216 a10214)
                  (lambda (v10217)
                    (letrec ((result10225
                              ((lambda (k10218 j10219 v10220)
                                 (match
                                  v10220
                                  (((cons 'query (cons x10221 x10222))
                                    (letrec ((x10223
                                              (actor? k10218 j10219 x10221))
                                             (x10224
                                              (number?/c
                                               k10218
                                               j10219
                                               x10222)))
                                      (cons
                                       'enhanced
                                       (cons
                                        (recursive-dns/cm x10223 x10224)
                                        (cons
                                         j10219
                                         (cons
                                          'query
                                          (cons x10223 x10224)))))))
                                   (_ #f))))
                               k10215
                               j10216
                               v10217)))
                      (if result10225
                        (a10214 result10225)
                        (blame
                         k10215
                         '(position-in-file-loc
                           "programs/test/actor-cc/dns.scm"
                           93
                           2)))))))
               (client
                (lambda (recursive-dns)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (('start
                        (begin
                          (recursive-dns
                           (cons 'query (cons (dyn self) (fresh))))
                          (client recursive-dns)))
                       ((cons 'answer answer)
                        (begin (displayln 'got-answer) (terminate)))
                       ((cons 'enhanced (cons k10226 (cons j10230 'start)))
                        (letrec ((kc10227 (k10226 j10230))
                                 (old-send10231 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10228 msg10229)
                               (old-send10231
                                kc10227
                                (cons rcv10228 msg10229)))))
                           (begin
                             (recursive-dns
                              (cons 'query (cons (dyn self) (fresh))))
                             (client recursive-dns)))))
                       ((cons
                         'enhanced
                         (cons k10232 (cons j10236 (cons 'answer answer))))
                        (letrec ((kc10233 (k10232 j10236))
                                 (old-send10237 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10234 msg10235)
                               (old-send10237
                                kc10233
                                (cons rcv10234 msg10235)))))
                           (begin (displayln 'got-answer) (terminate)))))))))))
               (recursive-dns
                (lambda (root-server clients)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'query (cons sender cookie))
                        (begin
                          (root-server (cons 'query (cons (dyn self) cookie)))
                          (recursive-dns
                           root-server
                           (add-client sender cookie clients))))
                       ((cons 'answer (cons cookie answer))
                        (begin
                          (trace answer)
                          (if (authorative? answer)
                            (letrec ((client (find-client cookie clients)))
                              (client (cons 'answer answer)))
                            ((cdr answer)
                             (cons 'query (cons (dyn self) cookie))))
                          (if (authorative? answer)
                            (recursive-dns
                             root-server
                             (remassoc cookie clients))
                            (recursive-dns root-server clients))))
                       ((cons
                         'enhanced
                         (cons
                          k10238
                          (cons j10242 (cons 'query (cons sender cookie)))))
                        (letrec ((kc10239 (k10238 j10242))
                                 (old-send10243 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10240 msg10241)
                               (old-send10243
                                kc10239
                                (cons rcv10240 msg10241)))))
                           (begin
                             (root-server
                              (cons 'query (cons (dyn self) cookie)))
                             (recursive-dns
                              root-server
                              (add-client sender cookie clients))))))
                       ((cons
                         'enhanced
                         (cons
                          k10244
                          (cons j10248 (cons 'answer (cons cookie answer)))))
                        (letrec ((kc10245 (k10244 j10248))
                                 (old-send10249 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10246 msg10247)
                               (old-send10249
                                kc10245
                                (cons rcv10246 msg10247)))))
                           (begin
                             (trace answer)
                             (if (authorative? answer)
                               (letrec ((client (find-client cookie clients)))
                                 (client (cons 'answer answer)))
                               ((cdr answer)
                                (cons 'query (cons (dyn self) cookie))))
                             (if (authorative? answer)
                               (recursive-dns
                                root-server
                                (remassoc cookie clients))
                               (recursive-dns root-server clients))))))))))))
               (root-server
                (lambda (tld-server)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'query (cons sender cookie))
                        (begin
                          (sender
                           (cons
                            'answer
                            (cons
                             cookie
                             (cons 'requires-recursion tld-server))))
                          (root-server tld-server)))
                       ((cons
                         'enhanced
                         (cons
                          k10250
                          (cons j10254 (cons 'query (cons sender cookie)))))
                        (letrec ((kc10251 (k10250 j10254))
                                 (old-send10255 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10252 msg10253)
                               (old-send10255
                                kc10251
                                (cons rcv10252 msg10253)))))
                           (begin
                             (sender
                              (cons
                               'answer
                               (cons
                                cookie
                                (cons 'requires-recursion tld-server))))
                             (root-server tld-server)))))))))))
               (tld-server
                (lambda (authorative-server)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'query (cons sender cookie))
                        (begin
                          (trace 'tld-server)
                          (sender
                           (cons
                            'answer
                            (cons
                             cookie
                             (cons 'requires-recursion authorative-server))))
                          (tld-server authorative-server)))
                       ((cons
                         'enhanced
                         (cons
                          k10256
                          (cons j10260 (cons 'query (cons sender cookie)))))
                        (letrec ((kc10257 (k10256 j10260))
                                 (old-send10261 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10258 msg10259)
                               (old-send10261
                                kc10257
                                (cons rcv10258 msg10259)))))
                           (begin
                             (trace 'tld-server)
                             (sender
                              (cons
                               'answer
                               (cons
                                cookie
                                (cons
                                 'requires-recursion
                                 authorative-server))))
                             (tld-server authorative-server)))))))))))
               (authorative-server
                (lambda ()
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'query (cons sender cookie))
                        (begin
                          (trace 'authorative-server)
                          (sender
                           (cons
                            'answer
                            (cons cookie (cons 'authorative 'dns-result))))
                          (authorative-server)))
                       ((cons
                         'enhanced
                         (cons
                          k10262
                          (cons j10266 (cons 'query (cons sender cookie)))))
                        (letrec ((kc10263 (k10262 j10266))
                                 (old-send10267 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10264 msg10265)
                               (old-send10267
                                kc10263
                                (cons rcv10264 msg10265)))))
                           (begin
                             (trace 'authorative-server)
                             (sender
                              (cons
                               'answer
                               (cons cookie (cons 'authorative 'dns-result))))
                             (authorative-server)))))))))))
               (authorative-actor
                (letrec ((act (spawn^ (authorative-server))))
                  (lambda (msg) ((dyn send^) act msg))))
               (tld-actor
                (letrec ((act (spawn^ (tld-server authorative-actor))))
                  (lambda (msg) ((dyn send^) act msg))))
               (root-actor
                (letrec ((act (spawn^ (root-server tld-actor))))
                  (lambda (msg) ((dyn send^) act msg))))
               (recursive-unmonitored
                (letrec ((act (spawn^ (recursive-dns root-actor '()))))
                  (lambda (msg) ((dyn send^) act msg))))
               (recursive-actor
                (letrec ((xj10268 (loc 'client)) (xk10269 (loc 'server)))
                  (recursive-dns/c xj10268 xk10269 recursive-unmonitored)))
               (client-actor
                (letrec ((act (spawn^ (client recursive-actor))))
                  (lambda (msg) ((dyn send^) act msg)))))
        (client-actor 'start)))))
