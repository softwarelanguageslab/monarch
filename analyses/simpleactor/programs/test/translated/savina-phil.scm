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
                     (position-in-file-loc
                      "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      40
                      19)))))
               (boolean?/c
                (lambda (g10049 g10050 g10051)
                  (if (boolean? g10051)
                    g10051
                    (blame
                     g10049
                     (position-in-file-loc
                      "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      41
                      22)))))
               (number?/c
                (lambda (g10052 g10053 g10054)
                  (if (number? g10054)
                    g10054
                    (blame
                     g10052
                     (position-in-file-loc
                      "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      42
                      21)))))
               (any/c
                (lambda (g10055 g10056 g10057)
                  (if ((lambda (v) #t) g10057)
                    g10057
                    (blame
                     g10055
                     (position-in-file-loc
                      "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      43
                      17)))))
               (any?/c
                (lambda (g10058 g10059 g10060)
                  (if ((lambda (v) #t) g10060)
                    g10060
                    (blame
                     g10058
                     (position-in-file-loc
                      "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      44
                      18)))))
               (cons?/c
                (lambda (g10061 g10062 g10063)
                  (if (pair? g10063)
                    g10063
                    (blame
                     g10061
                     (position-in-file-loc
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
                     (position-in-file-loc
                      "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      50
                      19)))))
               (integer?/c
                (lambda (g10067 g10068 g10069)
                  (if (integer? g10069)
                    g10069
                    (blame
                     g10067
                     (position-in-file-loc
                      "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      51
                      22)))))
               (symbol?/c
                (lambda (g10070 g10071 g10072)
                  (if (symbol? g10072)
                    g10072
                    (blame
                     g10070
                     (position-in-file-loc
                      "/home/bram/phd/code/monarch/analyses/simpleactor/racket/translations/../preludes/simpleactor-prelude.scm"
                      52
                      21)))))
               (string?/c
                (lambda (g10073 g10074 g10075)
                  (if (string? g10075)
                    g10075
                    (blame
                     g10073
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
                (lambda (g10076 g10077 g10078)
                  (if (null? g10078)
                    g10078
                    (blame
                     g10076
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
                (lambda (g10079 g10080 g10081)
                  (if ((lambda (v) (not (= v 0))) g10081)
                    g10081
                    (blame
                     g10079
                     (position-in-file-loc
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
                       (position-in-file-loc
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
                       (position-in-file-loc
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
                       (position-in-file-loc
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
                       (position-in-file-loc
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
                       (position-in-file-loc
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
                       (position-in-file-loc
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
                     (position-in-file-loc
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
               (philosopher/c
                (lambda (arb id)
                  (lambda (k10187 j10188 a10186)
                    (lambda (v10189)
                      (letrec ((result10224
                                ((lambda (k10190 j10191 v10192)
                                   (match
                                    v10192
                                    (('start
                                      (letrec ()
                                        (cons
                                         'enhanced
                                         (cons
                                          ((lambda ()
                                             (lambda (j10193)
                                               (letrec ((r10197
                                                         (lambda (trace10196)
                                                           (receive
                                                            (('finish
                                                              (begin
                                                                (if (member
                                                                     'hungry
                                                                     trace10196)
                                                                  #t
                                                                  (blame
                                                                   j10193
                                                                   (position-in-file-loc
                                                                    "programs/test/actor-cc/savina-phil.scm"
                                                                    36
                                                                    17)))))
                                                             ((pair
                                                               rcv10195
                                                               message10194)
                                                              (match
                                                               message10194
                                                               (((cons
                                                                  'hungry
                                                                  (cons
                                                                   x10198
                                                                   x10199))
                                                                 (begin
                                                                   ((dyn send^)
                                                                    rcv10195
                                                                    (letrec ((x10200
                                                                              ((philosopher/c
                                                                                arb
                                                                                id)
                                                                               j10193
                                                                               j10193
                                                                               x10198))
                                                                             (x10201
                                                                              ((=/c
                                                                                id)
                                                                               j10193
                                                                               j10193
                                                                               x10199)))
                                                                      (cons
                                                                       'enhanced
                                                                       (cons
                                                                        (unconstrained/c
                                                                         x10200
                                                                         x10201)
                                                                        (cons
                                                                         j10193
                                                                         (cons
                                                                          'hungry
                                                                          (cons
                                                                           x10200
                                                                           x10201)))))))
                                                                   (r10197
                                                                    (cons
                                                                     'hungry
                                                                     trace10196))))
                                                                (_
                                                                 (begin
                                                                   ((dyn send^)
                                                                    rcv10195
                                                                    message10194)
                                                                   (r10197
                                                                    trace10196)))))))))))
                                                 (spawn^ (r10197 (list)))))))
                                          (cons j10191 'start)))))
                                     (_ #f))))
                                 k10187
                                 j10188
                                 v10189)))
                        (if result10224
                          (a10186 result10224)
                          (letrec ((result10225
                                    ((lambda (k10202 j10203 v10204)
                                       (match
                                        v10204
                                        (('denied
                                          (letrec ()
                                            (cons
                                             'enhanced
                                             (cons
                                              ((lambda ()
                                                 (lambda (j10205)
                                                   (letrec ((r10209
                                                             (lambda (trace10208)
                                                               (receive
                                                                (('finish
                                                                  (begin
                                                                    (if (member
                                                                         'hungry
                                                                         trace10208)
                                                                      #t
                                                                      (blame
                                                                       j10205
                                                                       (position-in-file-loc
                                                                        "programs/test/actor-cc/savina-phil.scm"
                                                                        43
                                                                        17)))))
                                                                 ((pair
                                                                   rcv10207
                                                                   message10206)
                                                                  (match
                                                                   message10206
                                                                   (((cons
                                                                      'hungry
                                                                      (cons
                                                                       x10210
                                                                       x10211))
                                                                     (begin
                                                                       ((dyn
                                                                         send^)
                                                                        rcv10207
                                                                        (letrec ((x10212
                                                                                  ((philosopher/c
                                                                                    arb
                                                                                    id)
                                                                                   j10205
                                                                                   j10205
                                                                                   x10210))
                                                                                 (x10213
                                                                                  ((=/c
                                                                                    id)
                                                                                   j10205
                                                                                   j10205
                                                                                   x10211)))
                                                                          (cons
                                                                           'enhanced
                                                                           (cons
                                                                            (unconstrained/c
                                                                             x10212
                                                                             x10213)
                                                                            (cons
                                                                             j10205
                                                                             (cons
                                                                              'hungry
                                                                              (cons
                                                                               x10212
                                                                               x10213)))))))
                                                                       (r10209
                                                                        (cons
                                                                         'hungry
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
                                                      (r10209 (list)))))))
                                              (cons j10203 'denied)))))
                                         (_ #f))))
                                     k10187
                                     j10188
                                     v10189)))
                            (if result10225
                              (a10186 result10225)
                              (letrec ((result10226
                                        ((lambda (k10214 j10215 v10216)
                                           (match
                                            v10216
                                            (('eat
                                              (letrec ()
                                                (cons
                                                 'enhanced
                                                 (cons
                                                  ((lambda ()
                                                     (lambda (j10217)
                                                       (letrec ((r10221
                                                                 (lambda (trace10220)
                                                                   (receive
                                                                    (('finish
                                                                      (begin
                                                                        (if (member
                                                                             'done
                                                                             trace10220)
                                                                          #t
                                                                          (blame
                                                                           j10217
                                                                           (position-in-file-loc
                                                                            "programs/test/actor-cc/savina-phil.scm"
                                                                            50
                                                                            17)))
                                                                        (if (member
                                                                             'start
                                                                             trace10220)
                                                                          #t
                                                                          (blame
                                                                           j10217
                                                                           (position-in-file-loc
                                                                            "programs/test/actor-cc/savina-phil.scm"
                                                                            50
                                                                            17)))))
                                                                     ((pair
                                                                       rcv10219
                                                                       message10218)
                                                                      (match
                                                                       message10218
                                                                       (((cons
                                                                          'done
                                                                          x10222)
                                                                         (begin
                                                                           ((dyn
                                                                             send^)
                                                                            rcv10219
                                                                            (letrec ((x10223
                                                                                      ((=/c
                                                                                        id)
                                                                                       j10217
                                                                                       j10217
                                                                                       x10222)))
                                                                              (cons
                                                                               'enhanced
                                                                               (cons
                                                                                (unconstrained/c
                                                                                 x10223)
                                                                                (cons
                                                                                 j10217
                                                                                 (cons
                                                                                  'done
                                                                                  x10223))))))
                                                                           (r10221
                                                                            (cons
                                                                             'done
                                                                             trace10220))))
                                                                        ('start
                                                                         (begin
                                                                           ((dyn
                                                                             send^)
                                                                            rcv10219
                                                                            (letrec ()
                                                                              (cons
                                                                               'enhanced
                                                                               (cons
                                                                                (unconstrained/c)
                                                                                (cons
                                                                                 j10217
                                                                                 'start)))))
                                                                           (r10221
                                                                            (cons
                                                                             'start
                                                                             trace10220))))
                                                                        (_
                                                                         (begin
                                                                           ((dyn
                                                                             send^)
                                                                            rcv10219
                                                                            message10218)
                                                                           (r10221
                                                                            trace10220)))))))))))
                                                         (spawn^
                                                          (r10221 (list)))))))
                                                  (cons j10215 'eat)))))
                                             (_ #f))))
                                         k10187
                                         j10188
                                         v10189)))
                                (if result10226
                                  (a10186 result10226)
                                  (blame
                                   k10187
                                   (position-in-file-loc
                                    "programs/test/actor-cc/savina-phil.scm"
                                    32
                                    2))))))))))))
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
                            (if (letrec ((val10045 (vector-ref forks left)))
                                  (if val10045
                                    val10045
                                    (vector-ref forks right)))
                              (p 'denied)
                              (begin
                                (trace 'sending-eat)
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
                          k10227
                          (cons j10231 (cons 'hungry (cons p id)))))
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
                               (if (letrec ((val10045 (vector-ref forks left)))
                                     (if val10045
                                       val10045
                                       (vector-ref forks right)))
                                 (p 'denied)
                                 (begin
                                   (trace 'sending-eat)
                                   (vector-set! forks left #t)
                                   (vector-set! forks right #t)
                                   (p 'eat))))
                             (arbitrator forks)))))
                       ((cons
                         'enhanced
                         (cons k10233 (cons j10237 (cons 'done id))))
                        (letrec ((kc10234 (k10233 j10237))
                                 (old-send10238 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10235 msg10236)
                               (old-send10238
                                kc10234
                                (cons rcv10235 msg10236)))))
                           (begin
                             (letrec ((left id)
                                      (right (modulo (+ id 1) num-forks)))
                               (vector-set! forks left #f)
                               (vector-set! forks right #f))
                             (arbitrator forks)))))))))))
               (philosopher
                (lambda (arb id)
                  (letrec ((real-self (self^)))
                    (parametrize
                     ((self (lambda (m) ((dyn send^) real-self m))))
                     (receive
                      (('start
                        (begin
                          (trace 'start)
                          (arb (cons 'hungry (cons (dyn self) id)))
                          (philosopher arb id)))
                       ('denied
                        (begin
                          (trace 'denied)
                          (arb (cons 'hungry (cons (dyn self) id)))
                          (philosopher arb id)))
                       ('eat
                        (begin
                          (trace 'eat)
                          (arb (cons 'done id))
                          ((dyn self) 'start)
                          (philosopher arb id)))
                       ((cons 'enhanced (cons k10239 (cons j10243 'start)))
                        (letrec ((kc10240 (k10239 j10243))
                                 (old-send10244 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10241 msg10242)
                               (old-send10244
                                kc10240
                                (cons rcv10241 msg10242)))))
                           (begin
                             (trace 'start)
                             (arb (cons 'hungry (cons (dyn self) id)))
                             (philosopher arb id)))))
                       ((cons 'enhanced (cons k10245 (cons j10249 'denied)))
                        (letrec ((kc10246 (k10245 j10249))
                                 (old-send10250 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10247 msg10248)
                               (old-send10250
                                kc10246
                                (cons rcv10247 msg10248)))))
                           (begin
                             (trace 'denied)
                             (arb (cons 'hungry (cons (dyn self) id)))
                             (philosopher arb id)))))
                       ((cons 'enhanced (cons k10251 (cons j10255 'eat)))
                        (letrec ((kc10252 (k10251 j10255))
                                 (old-send10256 (dyn send^)))
                          (parametrize
                           ((send^
                             (lambda (rcv10253 msg10254)
                               (old-send10256
                                kc10252
                                (cons rcv10253 msg10254)))))
                           (begin
                             (trace 'eat)
                             (arb (cons 'done id))
                             ((dyn self) 'start)
                             (philosopher arb id)))))))))))
               (arbitrator-actor
                (letrec ((act (spawn^ (arbitrator (vector #f #f #f)))))
                  (lambda (msg) ((dyn send^) act msg))))
               (phil1
                (letrec ((xj10257 (loc 'client)) (xk10258 (loc 'server)))
                  ((philosopher/c arbitrator-actor 0)
                   xj10257
                   xk10258
                   (letrec ((act (spawn^ (philosopher arbitrator-actor 0))))
                     (lambda (msg) ((dyn send^) act msg))))))
               (phil2
                (letrec ((xj10259 (loc 'client)) (xk10260 (loc 'server)))
                  ((philosopher/c arbitrator-actor 1)
                   xj10259
                   xk10260
                   (letrec ((act (spawn^ (philosopher arbitrator-actor 1))))
                     (lambda (msg) ((dyn send^) act msg))))))
               (phil3
                (letrec ((xj10261 (loc 'client)) (xk10262 (loc 'server)))
                  ((philosopher/c arbitrator-actor 2)
                   xj10261
                   xk10262
                   (letrec ((act (spawn^ (philosopher arbitrator-actor 2))))
                     (lambda (msg) ((dyn send^) act msg)))))))
        (phil1 'start)
        (phil2 'start)
        (phil3 'start)))))
