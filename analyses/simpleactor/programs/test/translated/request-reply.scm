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
                     (position-in-file-loc
                      "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      40
                      19)))))
               (boolean?/c
                (lambda (g10048 g10049 g10050)
                  (if (boolean? g10050)
                    g10050
                    (blame
                     g10048
                     (position-in-file-loc
                      "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      41
                      22)))))
               (number?/c
                (lambda (g10051 g10052 g10053)
                  (if (number? g10053)
                    g10053
                    (blame
                     g10051
                     (position-in-file-loc
                      "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      42
                      21)))))
               (any/c
                (lambda (g10054 g10055 g10056)
                  (if ((lambda (v) #t) g10056)
                    g10056
                    (blame
                     g10054
                     (position-in-file-loc
                      "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      43
                      17)))))
               (any?/c
                (lambda (g10057 g10058 g10059)
                  (if ((lambda (v) #t) g10059)
                    g10059
                    (blame
                     g10057
                     (position-in-file-loc
                      "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      44
                      18)))))
               (cons?/c
                (lambda (g10060 g10061 g10062)
                  (if (pair? g10062)
                    g10062
                    (blame
                     g10060
                     (position-in-file-loc
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
                     (position-in-file-loc
                      "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      50
                      19)))))
               (integer?/c
                (lambda (g10066 g10067 g10068)
                  (if (integer? g10068)
                    g10068
                    (blame
                     g10066
                     (position-in-file-loc
                      "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      51
                      22)))))
               (symbol?/c
                (lambda (g10069 g10070 g10071)
                  (if (symbol? g10071)
                    g10071
                    (blame
                     g10069
                     (position-in-file-loc
                      "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      52
                      21)))))
               (string?/c
                (lambda (g10072 g10073 g10074)
                  (if (string? g10074)
                    g10074
                    (blame
                     g10072
                     (position-in-file-loc
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
                     (position-in-file-loc
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
                     (position-in-file-loc
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
                       (position-in-file-loc
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
                       (position-in-file-loc
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
                       (position-in-file-loc
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
                       (position-in-file-loc
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
                       (position-in-file-loc
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
                       (position-in-file-loc
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
                     (position-in-file-loc
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
               (server/c
                (lambda (k10186 j10187 a10185)
                  (lambda (v10188)
                    (letrec ((result10199
                              ((lambda (k10189 j10190 v10191)
                                 (match
                                  v10191
                                  (((cons 'request x10192)
                                    (letrec ((x10193
                                              (actor? k10189 j10190 x10192)))
                                      (cons
                                       'enhanced
                                       (cons
                                        ((lambda (client-ref)
                                           (lambda (j10194)
                                             (letrec ((r10198
                                                       (lambda (trace10197)
                                                         (receive
                                                          (('finish
                                                            (begin
                                                              (if (member
                                                                   'reply
                                                                   trace10197)
                                                                #t
                                                                (blame
                                                                 j10194
                                                                 (position-in-file-loc
                                                                  "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/cc-combinator.rkt"
                                                                  106
                                                                  11)))))
                                                           ((pair
                                                             rcv10196
                                                             message10195)
                                                            (match
                                                             message10195
                                                             (('reply
                                                               (begin
                                                                 ((dyn send^)
                                                                  rcv10196
                                                                  (letrec ()
                                                                    (cons
                                                                     'enhanced
                                                                     (cons
                                                                      (unconstrained/c)
                                                                      (cons
                                                                       j10194
                                                                       'reply)))))
                                                                 (r10198
                                                                  (cons
                                                                   'reply
                                                                   trace10197))))
                                                              (_
                                                               (begin
                                                                 ((dyn send^)
                                                                  rcv10196
                                                                  message10195)
                                                                 (r10198
                                                                  trace10197)))))))))))
                                               (spawn^ (r10198 (list))))))
                                         x10193)
                                        (cons
                                         j10190
                                         (cons 'request x10193))))))
                                   (_ #f))))
                               k10186
                               j10187
                               v10188)))
                      (if result10199
                        (a10185 result10199)
                        (blame
                         k10186
                         (position-in-file-loc
                          "programs/test/actor-cc/request-reply.rkt"
                          10
                          2)))))))
               (server-behavior
                (lambda ()
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'request sender)
                        (begin (sender 'reply) (server-behavior)))
                       ((cons
                         'enhanced
                         (cons k10200 (cons j10204 (cons 'request sender))))
                        (letrec ((kc10201 (k10200 j10204))
                                 (old-send10205 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10202 msg10203)
                               (old-send10205
                                kc10201
                                (cons rcv10202 msg10203)))))
                           (begin (sender 'reply) (server-behavior)))))))))))
               (client-behavior
                (lambda ()
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (((cons 'start server)
                        (begin
                          (server (cons 'request (dyn self)))
                          (client-behavior)))
                       ('reply (begin (displayln 'reply-received)))
                       ((cons
                         'enhanced
                         (cons k10206 (cons j10210 (cons 'start server))))
                        (letrec ((kc10207 (k10206 j10210))
                                 (old-send10211 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10208 msg10209)
                               (old-send10211
                                kc10207
                                (cons rcv10208 msg10209)))))
                           (begin
                             (server (cons 'request (dyn self)))
                             (client-behavior)))))
                       ((cons 'enhanced (cons k10212 (cons j10216 'reply)))
                        (letrec ((kc10213 (k10212 j10216))
                                 (old-send10217 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10214 msg10215)
                               (old-send10217
                                kc10213
                                (cons rcv10214 msg10215)))))
                           (begin (displayln 'reply-received)))))))))))
               (client
                (letrec ((act (spawn^ (client-behavior))))
                  (lambda (msg) ((dyn send^) act msg))))
               (server-unmonitored
                (letrec ((act (spawn^ (server-behavior))))
                  (lambda (msg) ((dyn send^) act msg))))
               (server
                (letrec ((xj10218 (loc 'client)) (xk10219 (loc 'server)))
                  (server/c xj10218 xk10219 server-unmonitored))))
        (client (cons 'start server))))))
